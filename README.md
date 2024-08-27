<h1 align="center">Alfred OnePee</h1>

<p align="center">
    <a href="https://www.alfredapp.com/alfred-5-whats-new/"><img src="https://img.shields.io/badge/Alfred-5-purple"></a>
    <a href="https://github.com/godbout/AlfredOnePee/releases"><img src="https://img.shields.io/github/release/godbout/AlfredOnePee.svg" alt="GitHub Release"></a>
    <a href="https://github.com/godbout/AlfredOnePee/releases"><img src="https://img.shields.io/github/downloads/godbout/AlfredOnePee/total.svg" alt="GitHub Downloads"></a>
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

# LOGINS

## Curated

* [9GAG](https://9gag.com/login)
* [Alfred Forum](https://www.alfredforum.com/login/)
* [Amazon](https://www.amazon.com/ap/signin?_encoding=UTF8&openid.assoc_handle=usflex&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.mode=checkid_setup&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&openid.pape.max_auth_age=900&openid.return_to=https%3A%2F%2Fwww.amazon.com%2Fgp%2Fcss%2Faccount%2Faddress%2Fview.html%3Fie%3DUTF8%26ref_%3Dya_manage_address_book_t1)
* [Binance](https://accounts.binance.com/en/login)
* [Bitstamp](https://www.bitstamp.net/onboarding/login/)
* [Coinbase](https://login.coinbase.com/signin)
* [DigitalOcean](https://cloud.digitalocean.com/login)
* [Docker Hub](https://hub.docker.com/login/)
* [Dropbox](https://www.dropbox.com/home)
* [Fastmail](https://app.fastmail.com/login/)
* [GitHub](https://github.com/login)
* [GitLab](https://gitlab.com/users/sign_in)
* [Hack The Box](https://app.hackthebox.com/login)
* [Hack The Box Academy](https://academy.hackthebox.com/login)
* [IMDb](https://www.imdb.com/ap/signin?openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=imdb_us&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0)
* [Linode](https://login.linode.com/login)
* [KeepSolid](https://id.keepsolid.com/login)
* [Microsoft Account](https://login.live.com/login.srf)
* [NearlyFreeSpeech](https://members.nearlyfreespeech.net/login/)
* [Paddle](https://login.paddle.com/login)
* [Ploi](https://ploi.io/login)
* [Pocket](https://getpocket.com/login)
* [Porkbun](https://porkbun.com/account/loginOnly)
* [Quora](https://quora.com)
* [RealVNC](https://manage.realvnc.com)
* [Reddit](https://www.reddit.com/login/)
* [Stack Exchange](https://meta.stackexchange.com/users/login)
* [Stack Overflow](https://stackoverflow.com/users/login)
* [Toggl Track](https://accounts.toggl.com/track/login/)
* [TryHackMe](https://tryhackme.com/login)
* [Vultr](https://my.vultr.com)
* [Wise](https://wise.com/login)
* [X](https://twitter.com/i/flow/login)

## Custom

to create your own Custom Logins:
1. set the `Custom Logins Path` in the [Workflow Configuration](https://www.alfredapp.com/help/workflows/workflow-configuration/) to the folder where you're gonna store your Logins information
2. store the `.yaml` and optionally `.png` files of your Custom Logins in that folder

check out the integrated [Curated Logins](https://github.com/godbout/AlfredOnePee/tree/master/Workflow/resources/results) for reference.

on top of the mandatory `title` and `url` keys in the `.yaml` file you can add the optional:
* `match`: by default Alfred will filter Results according to the `title`. if you wanna add different filtering terms, just set the [match](https://www.alfredapp.com/help/workflows/inputs/script-filter/json/)

# ROADMAP

* adding more and more Services upon request
* ~~add possibility to enable or disable a Service so that it doesn't show up in your list~~
* ~~add a way to set your own custom Services/URLs~~
* integrate with the Alfred Gallery
