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
        
        return ScriptFilter.output()
    }
    
}


extension Entrance {

    private static func curatedLogins() -> [Login] {
        guard
            let alfredPreferences = ProcessInfo.processInfo.environment["alfred_preferences"],
            let alfredWorkflowUID = ProcessInfo.processInfo.environment["alfred_workflow_uid"]
        else { return [] }
            
        return loadLoginsFrom(path: "\(alfredPreferences)/workflows/\(alfredWorkflowUID)/resources/results/")
    }
    
    private static func customLogins() -> [Login] {
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
        let item = Item(title: login.title)
            .subtitle(login.url)
            .arg("do")
            .variables(Variable(name: "url", value: login.realUrl ?? login.url))
        
        if let icon = login.icon {
            item.icon(Icon(path: icon))
        }
        
        if let match = login.match {
            item.match(match)
        }
        
        return item
    }

}
