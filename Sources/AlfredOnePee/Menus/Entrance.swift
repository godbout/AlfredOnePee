import AlfredWorkflowScriptFilter


class Entrance {
    static let shared = Entrance()
    
    private init() {}
    
    
    static func scriptFilter() -> String {
        results()
    }
    
    static func results() -> String {
        return
"""
{
    "items": [
        {
            "uid": "github",
            "title": "GitHub",
            "subtitle": "https://github.com/login",
            "arg": "do",
            "variables": {
                "url": "https://github.com/login"
            },
            "icon": {
                "path": "resources/items/icons/github.png"
            }
        }
    ]
}
"""
    }
    
}
