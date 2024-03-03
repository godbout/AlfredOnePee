import Foundation
import AlfredWorkflowScriptFilter
import Yams


struct Login: Codable {
    
    let title: String
    let url: String
    let realUrl: String?
    let match: String?
    let icon: String?
    
    enum CodingKeys: String, CodingKey {
        case title, url
        case realUrl = "real_url"
        case match, icon
    }

}


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
        // TODO: this shoulnd't be repeated. grab once at the beginning
        guard
            let alfredPreferences = ProcessInfo.processInfo.environment["alfred_preferences"],
            let alfredWorkflowUID = ProcessInfo.processInfo.environment["alfred_workflow_uid"]
        else { return [] }
            
        return loadLoginsFrom(path: "\(alfredPreferences)/workflows/\(alfredWorkflowUID)/resources/results/")
    }
    
    private static func customLogins() -> [Login] {
        // TODO: this shoulnd't be repeated. grab once at the beginning
        guard let customLoginsPath = ProcessInfo.processInfo.environment["custom_logins_path"] else { return [] }
        
        return loadLoginsFrom(path: (customLoginsPath as NSString).expandingTildeInPath)
    }
    
    private static func loadLoginsFrom(path: String) -> [Login] {
        var logins: [Login] = []
        
        let url = URL(fileURLWithPath: path, isDirectory: true)
        guard let metadataFiles = try? FileManager.default.contentsOfDirectory(at: url, includingPropertiesForKeys: nil, options: .skipsHiddenFiles) else { return [] }
        let yamlMetadataFiles = metadataFiles.filter { $0.pathExtension == "yaml" || $0.pathExtension == "yml" }
                
        for yamlMetadataFile in yamlMetadataFiles {
            let yamlFile = URL(fileURLWithPath: yamlMetadataFile.relativePath)
            guard let yamlData = try? Data(contentsOf: yamlFile) else { return [] }

            let decoder = YAMLDecoder()
            guard let decoded = try? decoder.decode(Login.self, from: yamlData) else { return [] }
            
            let filenameWithoutExtension = yamlFile.deletingPathExtension().relativePath
            let iconExists = FileManager.default.fileExists(atPath: "\(filenameWithoutExtension).png")
            
            logins.append(
                Login(title: decoded.title , url: decoded.url, realUrl: decoded.realUrl, match: decoded.match, icon: iconExists ? "\(filenameWithoutExtension).png" : nil)
            )
        }
                
        return logins
    }
    
    private static func add(_ login: Login) -> Item {
        // TODO: this shoulnd't be repeated. pass as params
        let sortLoginsBy = ProcessInfo.processInfo.environment["sort_by"] ?? "sort_by_usage"
        
        let item = Item(title: login.title)
            .subtitle(login.url)
            .arg("do")
            .variables(Variable(name: "url", value: login.realUrl ?? login.url))
                  
        if sortLoginsBy == "sort_by_usage" {
            // TODO: filename better? even though url will be unique if user not dumb
            // filename is for sure unique unique
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
