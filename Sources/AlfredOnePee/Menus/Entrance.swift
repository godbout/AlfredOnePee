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
            "title": "9GAG",
            "subtitle": "https://9gag.com/login",
            "arg": "do",
            "variables": {
                "url": "https://9gag.com/login"
            },
            "icon": {
                "path": "resources/results/icons/9gag.png"
            }
        },
        {
            "title": "Alfred Forum",
            "subtitle": "https://www.alfredforum.com/login/",
            "arg": "do",
            "variables": {
                "url": "https://www.alfredforum.com/login/"
            },
            "arg": "https://www.alfredforum.com/login/",
            "icon": {
                "path": "resources/results/icons/alfredforum.png"
            }
        },
        {
            "title": "GitHub",
            "subtitle": "https://github.com/login",
            "arg": "do",
            "variables": {
                "url": "https://github.com/login"
            },
            "icon": {
                "path": "resources/results/icons/github.png"
            }
        },
        {
            "title": "Binance",
            "subtitle": "https://accounts.binance.com/en/login",
            "arg": "do",
            "variables": {
                "url": "https://accounts.binance.com/en/login"
            },
            "icon": {
                "path": "resources/results/icons/binance.png"
            }
        },
        {
            "title": "Bitstamp",
            "subtitle": "https://www.bitstamp.net/onboarding/login/",
            "arg": "do",
            "variables": {
                "url": "https://www.bitstamp.net/onboarding/login/"
            },
            "icon": {
                "path": "resources/results/icons/bitstamp.png"
            }
        },
        {
            "title": "Coinbase",
            "subtitle": "https://login.coinbase.com/signin",
            "arg": "do",
            "variables": {
                "url": "https://login.coinbase.com/signin"
            },
            "icon": {
                "path": "resources/results/icons/coinbase.png"
            }
        },
        {
            "title": "Fastmail",
            "subtitle": "https://app.fastmail.com/login/",
            "arg": "do",
            "variables": {
                "url": "https://app.fastmail.com/login/"
            },
            "icon": {
                "path": "resources/results/icons/fastmail.png"
            }
        },
        {
            "title": "GitLab",
            "subtitle": "https://gitlab.com/users/sign_in",
            "arg": "do",
            "variables": {
                "url": "https://gitlab.com/users/sign_in"
            },
            "icon": {
                "path": "resources/results/icons/gitlab.png"
            }
        },
        {
            "title": "Hack The Box",
            "subtitle": "https://academy.hackthebox.com/login",
            "arg": "do",
            "variables": {
                "url": "https://academy.hackthebox.com/login"
            },
            "icon": {
                "path": "resources/results/icons/hackthebox.png"
            }
        },
        {
            "title": "IMDb",
            "subtitle": "https://www.imdb.com/ap/signin?openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=imdb_us&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0",
            "arg": "do",
            "variables": {
                "url": "https://www.imdb.com/ap/signin?openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=imdb_us&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0"
            },
            "icon": {
                "path": "resources/results/icons/imdb.png"
            },
            "match": "imdb internet movie database"
        },
        {
            "title": "KeepSolid",
            "subtitle": "https://id.keepsolid.com/login",
            "arg": "do",
            "variables": {
                "url": "https://id.keepsolid.com/login"
            },
            "icon": {
                "path": "resources/results/icons/keepsolid.png"
            }
        },
        {
            "title": "Linode",
            "subtitle": "https://login.linode.com/login",
            "arg": "do",
            "variables": {
                "url": "https://login.linode.com/login"
            },
            "icon": {
                "path": "resources/results/icons/linode.png"
            }
        },
        {
            "title": "Microsoft Account",
            "subtitle": "https://login.live.com/login.srf",
            "arg": "do",
            "variables": {
                "url": "https://login.live.com/login.srf"
            },
            "icon": {
                "path": "resources/results/icons/microsoftaccount.png"
            }
        },
        {
            "title": "Paddle",
            "subtitle": "https://login.paddle.com/login",
            "arg": "do",
            "variables": {
                "url": "https://login.paddle.com/login"
            },
            "icon": {
                "path": "resources/results/icons/paddle.png"
            }
        },
        {
            "title": "Ploi",
            "subtitle": "https://ploi.io/login",
            "arg": "do",
            "variables": {
                "url": "https://ploi.io/login"
            },
            "icon": {
                "path": "resources/results/icons/ploi.png"
            }
        },
        {
            "title": "Pocket",
            "subtitle": "https://getpocket.com/login",
            "arg": "do",
            "variables": {
                "url": "https://getpocket.com/login"
            },
            "icon": {
                "path": "resources/results/icons/pocket.png"
            }
        },
        {
            "title": "Porkbun",
            "subtitle": "https://porkbun.com/account/loginOnly",
            "arg": "do",
            "variables": {
                "url": "https://porkbun.com/account/loginOnly"
            },
            "icon": {
                "path": "resources/results/icons/porkbun.png"
            }
        },
        {
            "title": "Quora",
            "subtitle": "https://quora.com",
            "arg": "do",
            "variables": {
                "url": "https://quora.com"
            },
            "icon": {
                "path": "resources/results/icons/quora.png"
            }
        },
        {
            "title": "Reddit",
            "subtitle": "https://www.reddit.com/login/",
            "arg": "do",
            "variables": {
                "url": "https://www.reddit.com/login/"
            },
            "icon": {
                "path": "resources/results/icons/reddit.png"
            }
        },
        {
            "title": "Stack Overflow",
            "subtitle": "https://stackoverflow.com/users/login",
            "arg": "do",
            "variables": {
                "url": "https://stackoverflow.com/users/login"
            },
            "icon": {
                "path": "resources/results/icons/stackoverflow.png"
            }
        },
        {
            "title": "Toggl Track",
            "subtitle": "https://accounts.toggl.com/track/login/",
            "arg": "do",
            "variables": {
                "url": "https://accounts.toggl.com/track/login/"
            },
            "icon": {
                "path": "resources/results/icons/toggl.png"
            }
        },
        {
            "title": "Wise",
            "subtitle": "https://wise.com/login",
            "arg": "do",
            "variables": {
                "url": "https://wise.com/login"
            },
            "icon": {
                "path": "resources/results/icons/wise.png"
            }
        },
        {
            "title": "X",
            "subtitle": "https://twitter.com/i/flow/login",
            "arg": "do",
            "variables": {
                "url": "https://twitter.com/i/flow/login"
            },
            "icon": {
                "path": "resources/results/icons/x.png"
            },
            "match": "x twitter"
        }
    ]
}
"""
    }
    
}
