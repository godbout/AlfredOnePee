import Foundation


public struct Workflow {
    
    public static func next() -> String {
        ProcessInfo.processInfo.environment["next"] ?? "oops"
    }
    
    public static func menu() -> String {
        Entrance.scriptFilter()
    }
    
    public static func `do`() -> Bool {
        switch ProcessInfo.processInfo.environment["action"] {
        default:
            return false
        }
    }

}
