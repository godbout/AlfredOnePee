import Foundation
import AlfredWorkflowScriptFilter
import Yams


class Entrance {
    
    static let shared = Entrance()
    
    private init() {}
    
    
    static func scriptFilter() -> String {
        results()
    }
    
    static func results() -> String {
        for curatedLogin in curatedLogins() { ScriptFilter.item(add(curatedLogin)) }
        for customLogin in customLogins() { ScriptFilter.item(add(customLogin)) }
        
        ScriptFilter.sortItems()
        
        return ScriptFilter.output()
    }
    
}


extension Entrance {

    private static func curatedLogins() -> [Login] {
        guard
            let alfredPreferences = Workflow.alfredPreferences,
            let alfredWorkflowUID = Workflow.alfredWorkflowUID
        else { return [] }
        
        return loadLoginsFrom(path: "\(alfredPreferences)/workflows/\(alfredWorkflowUID)/resources/results/", type: .curated)
    }
    
    private static func customLogins() -> [Login] {
        guard let customLoginsPath = Workflow.customLoginsPath else { return [] }
        
        return loadLoginsFrom(path: (customLoginsPath as NSString).expandingTildeInPath, type: .custom)
    }
    
    private static func loadLoginsFrom(path: String, type: LoginType) -> [Login] {
        var logins: [Login] = []
        
        let url = URL(fileURLWithPath: path, isDirectory: true)
        guard let metadataFiles = try? FileManager.default.contentsOfDirectory(at: url, includingPropertiesForKeys: nil, options: .skipsHiddenFiles) else { return [] }
        let yamlMetadataFiles = metadataFiles.filter { $0.pathExtension == "yaml" || $0.pathExtension == "yml" }
                
        for yamlMetadataFile in yamlMetadataFiles {
            let yamlFile = URL(fileURLWithPath: yamlMetadataFile.relativePath)
            guard let yamlData = try? Data(contentsOf: yamlFile) else { return [] }

            let decoder = YAMLDecoder()
            guard let decoded = try? decoder.decode(Login.self, from: yamlData) else { return [] }
            
            let fileWithoutExtension = yamlFile.deletingPathExtension().relativePath
            let filename = yamlFile.deletingPathExtension().lastPathComponent
            let iconExists = FileManager.default.fileExists(atPath: "\(fileWithoutExtension).png")
            
            guard type == .custom || ProcessInfo.processInfo.environment[filename] == "1" else { continue }
            
            logins.append(
                Login(title: decoded.title , url: decoded.url, realUrl: decoded.realUrl, match: decoded.match, icon: iconExists ? "\(fileWithoutExtension).png" : nil)
            )
        }
                
        return logins
    }
    
    private static func add(_ login: Login) -> Item {
        let item = Item(title: login.title)
            .subtitle(login.url)
            .arg("do")
            .variables(Variable(name: "url", value: login.realUrl ?? login.url))
                  
        if Workflow.sortLoginsBy == "sort_by_usage" {
            item.uid(login.title.lowercased())
        }
        
        if let icon = login.icon {
            item.icon(Icon(path: icon))
        }
        
        if let match = login.match {
            item.match(match)
        }
        
        return item
    }

}
