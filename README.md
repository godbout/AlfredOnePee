<h1 align="center">Alfred OnePee</h1>

<p align="center">
    <a href="https://www.alfredapp.com/alfred-5-whats-new/"><img src="https://img.shields.io/badge/Alfred-5-purple"></a>
</p>

<p align="center">
    <code>1p</code> with iCloud Keychain.
</p>

https://github.com/godbout/AlfredOnePee/assets/121373/62a04d08-0e8e-4137-89d3-13313973037d

---

# PHILOSOPHY (YES. SORRY.)

currently there's no way to ping iCloud Keychain's passwords/URLs etc. there's no API.
BUT also 1Password has been sucking balls since v8. not even talking about the horrendous non-native UI, but where v7 was removing frictions and make password management straightforward, v8 brings extra bullshit clicks and shit keyboard and windows management lol wtf. where's the small team who cared about UX rather than customer count? anyways.

so the idea with OnePee is to launch login URLs from Alfred and get macOS and iCloud Keychain to automatically prepare the prompts for us. smooth and flawless whether you use passwords and OTPs, or passkeys.

because currently we can't automatically grab your personal URLs, OnePee will come with an expansive list. you'll be able to enable or disable the Services you need. and if you can't find your Service, just open an issue and i'll add it.

# CURRENT SUPPORTED SERVICES

* [9GAG](https://9gag.com/login)
* [Alfred Forum](https://www.alfredforum.com/login/)
* [GitHub](https://github.com/login)
* [Binance](https://accounts.binance.com/en/login)
* [Bitstamp](https://www.bitstamp.net/onboarding/login/)
* [Coinbase](https://login.coinbase.com/signin)
* [Fastmail](https://app.fastmail.com/login/)
* [GitLab](https://gitlab.com/users/sign_in)
* [Hack The Box](https://academy.hackthebox.com/login)
* [IMDb](https://www.imdb.com/ap/signin?openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=imdb_us&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0)
* [KeepSolid](https://id.keepsolid.com/login)
* [Microsoft Account](https://login.live.com/login.srf)
* [Paddle](https://login.paddle.com/login)
* [Ploi](https://ploi.io/login)
* [Pocket](https://getpocket.com/login)
* [Porkbun](https://porkbun.com/account/loginOnly)
* [Quora](https://quora.com)
* [Reddit](https://www.reddit.com/login/)
* [Stack Overflow](https://stackoverflow.com/users/login)
* [Toggl Track](https://accounts.toggl.com/track/login/)
* [Wise](https://wise.com/login)
* [X](https://twitter.com/i/flow/login)

# ROADMAP

* adding more and more Services upon request
* add possibility to enable or disable a Service so that it doesn't show up in your list
* add a way to set your own custom Services/URLs
* integrate with the Alfred Gallery
