import Foundation


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


enum LoginType {
    
    case curated
    case custom

}


public struct Workflow {
    
    static let alfredPreferences = ProcessInfo.processInfo.environment["alfred_preferences"]
    static let alfredWorkflowUID = ProcessInfo.processInfo.environment["alfred_workflow_uid"]
    
    static let sortLoginsBy = ProcessInfo.processInfo.environment["sort_by"] ?? "sort_by_usage"
    static let customLoginsPath = ProcessInfo.processInfo.environment["custom_logins_path"]
    
    
    public static func next() -> String {
        ProcessInfo.processInfo.environment["next"] ?? "oops"
    }
    
    public static func menu() -> String {
        Entrance.scriptFilter()
    }
    
    public static func `do`() -> Bool {
        switch ProcessInfo.processInfo.environment["action"] {
        default:
            return true
        }
    }

}
