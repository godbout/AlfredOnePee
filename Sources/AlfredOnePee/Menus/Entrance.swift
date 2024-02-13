import AlfredWorkflowScriptFilter


class Entrance {
    static let shared = Entrance()
    
    private init() {}
    
    
    static func scriptFilter() -> String {
        results()
    }
    
    static func results() -> String {
        ScriptFilter.output()
    }
    
}
