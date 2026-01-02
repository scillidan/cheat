# [Thunderbird](https://www.thunderbird.net)

> Thunderbird is a free, open-source, cross-platform email client and personal information manager developed by MZLA Technologies Corporation, a subsidiary of the Mozilla Foundation. It allows users to manage multiple email accounts, newsgroups, news feeds, and chat services in one application. Thunderbird also includes features like a calendar, contact book, advanced message filtering, junk mail (spam) filtering, and support for email encryption standards such as OpenPGP and S/MIME. It is highly customizable through add-ons and supports over 65 languages. Thunderbird runs on Windows, macOS, Linux, and has a mobile version for Android. It is designed to give users control and ownership over their email with a focus on privacy and security. [perplexity.ai]

> Thunderbird是一个免费、开源、跨平台的电子邮件客户端和个人信息管理器，由Mozilla基金会的子公司MZLA Technologies Corporation开发。它允许用户在一个应用程序中管理多个电子邮件帐户、新闻组、新闻订阅和聊天服务。Thunderbird还包括日历、通讯录、高级消息筛选、垃圾邮件过滤以及对OpenPGP和S/MIME等电子邮件加密标准的支持等功能。它通过插件高度可定制，并支持超过65种语言。Thunderbird可在Windows、macOS、Linux上运行，并有适用于Android的移动版。其设计旨在让用户对自己的电子邮件拥有控制权和所有权，并关注隐私和安全。 [perplexity.ai]

## install

```sh
# Arch
sudo pacman -S thunderbird thunderbird-i18n-zh-cn
# Windows 10
scoop install thunderbird
```

## usage

### Enable POP and IMAP

- IMAP server: imap.domain.com, port 993
- SMTP server: smtp.domain.com, port 465/587

- [Outlook](https://outlook.live.com) → Settings → Mail → Forwarding and IMAP → POP and IMAP
	Outlook → Account → My Microsoft account → Privacy → Apps and services that can access your data
- [Yandex Mail](https://mail.yandex.com) → Settings → All settings → Email clients
- [QQ邮箱](https://wx.mail.qq.com/) → 设置 → 账号 → POP3/IMAP/SMTP/Exchange/CardDAV/CalDAV服务
- [网易邮箱](https://mail.163.com) → 设置 → POP3/SMTP/IMAP

### Message Filters

- Thunderbird → More → Tools → Message Filters
	1. Filters for `your@email.com`
	2. New ...
		1. Filter name: `blacklist`
		2. Match all of the following → Add (all you want to match) → For example, `From` `contains` `example01@spam.com`
		3. Perform these actions → `Set Junk Status to` `Junk` or `Move Message to` `Junk on your@email.com`
		4. OK