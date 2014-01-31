## 号外！号外！ ##

FarBox 正在预谋新版 API，其中添加了许多激动人心的新东西。目前还在 beta，一起期待！

（然后我就入了坑，然后这个主题目前尚有一大堆一大堆的问题……）

下面描述的内容可能已经失效。

reos 能在新版 FarBox API 正常工作后更新 :)

## 描述 ##

又一个 [FarBox.com](http://farbox.com) 主题，无设计宗旨，随心设计。Demo 及作者 Blog：[陈笔](http://oyiadin.farbox.com)。

## 信息/特点/特性 ##

* [通过 HTML5 网页规范性测试](http://validator.w3.org/check?uri=oyiadin.farbox.com)；
* 支持移动终端（细节问题尚待解决）；
* 无 JavaScript 脚本（不计第三方应用）；
* 支持评论系统：
    * [Disqus](http://disqus.com/)
    * [多说](http://duoshuo.com/)
* 单栏、自适应布局；
* 支持 [Twitter Cards](https://dev.twitter.com/docs/cards)；
* 可对文章添加访问密码。

## 配置选项 ##

* `author` - 标明站点的作者。没有该字段时会使用 `title` 替代。
* `disqus` - 使用 disqus 作为评论系统，值为 disqus 提供的 `short_name`。
* `duoshuo` - 使用多说作为评论系统，值为多说提供的`网站名称`。（`disqus` 比 `duoshuo` 字段优先）
* `enable_twitter_cards` - 具体见 [Twitter Cards](#twitter-cards) 一节。
* `twitter` - Twitter 帐号名。当前只会在 Twitter Cards 的 creator 标记中使用。
* `google_site_verification` - Google 站长工具验证的方法之一。请在 Google 的验证页依次点击“备用方法”、“HTML 标记”以获取验证代码。值类似于这样：`vSuH7JKA3TQrLt0wY0jwcmMFb9jA44RJJ4DLZ-3PZt0`。
* `baidu_site_verification` - 百度站长工具的验证方法之一。请在百度的验证页依次点击“验证网站”、“html标签验证”以获取验证代码。值类似于这样：`txu5eJ4r1C`。
* `static_path` - 静态文件地址，默认为 `/t`。应不以 `/` 结束。可用作 CDN。

## 特殊内容 ##

> **注意：这些内容对于 reos 有特殊的意义，请在撰写文章时不要使用本节列出的命名，防止造成输出代码混乱。**

> 具体请在本页查找相关内容或查阅互联网上的相关信息。

### 特殊地址 ###

* /robots.txt - 由于 FarBox API 的原因，此处的 HTTP status 为 404。[#21](https://github.com/oyiadin/reos/issues/21)
* /sitemap - 站点地图文件，需网站主自行至相关网站上报。
* /feed - RSS（Atom）
* /archive - 文章存档。
* /post/(str) - 文章页。
* /tags - 使用过的 tags 列表。
* /tags/(str) - 被打上 (str) 标签的文章列表。
* /404 - 404 页。
* /page/(int) - 分页。

### 特殊文件 ###

* custom_js.md
* footer.md
* site.md

### 特殊的 Metadata ###

* password
* *status*
* *markdown*

## 为每个页面添加代码 ##

可以在文件 `custom_js.md` 处添加，注意第一行要是：

```text
status:part
```

这里可以添加 `JavaScript`、`css` 等代码，它们将会在页脚出现。

> 注：在该文件定义的内容不会覆盖页脚，修改页脚请参考下节。

## 自定义页脚内容 ##

> 尽量把署名和到此页的链接留下吧~

reos 会读取 `footer.md` 文件以修改默认页脚信息。以下文件内容即可渲染默认信息：

```text
status:part

<a href="https://github.com/oyiadin/reos">Theme By Oyiadin</a> · <a href="/template">Clone template</a> · <a href="http://farbox.com">Powered By FarBox.com</a>
```

如果想使用 Markdown 进行解析，请添加一个名为 `markdown` 的 Metadata，并将之设置为 `true`：

```text
status:part
markdown:true

> **现在支持 *Markdown* 了！**
```

在最终页面它们会变成 HTML 代码。

## 给文章添加访问密码 ##

> **注意：在其他主题中可能不支持该功能，这可能会导致你的加锁文章被泄露。**

这需要你在文章头部加上一个名为 `password` 的 Metadata，值即为该文章的访问密码。

```text
title: 加密文章示例
password: 密码支持中文

已被加锁的内容。
```

> [（Issue #38）](https://github.com/oyiadin/reos/issues/38)

> 当前有一个不足之处是：若所输入的密码长度小于 5，则会导致默认评论系统输出 *min length of comment is 5!* 的提示。

## 另一种私密文章（noindex） ##

如果你想要发布一篇文章，它的链接不会在任何页面出现（自己贴的不算 >_<），而可以通过一个私有链接访问，那么你可以声明该文章的 `status` 为 `noindex`：

```
title: 有个怪蜀黍来我家了
status: noindex

真的，没骗你。
```

> （该功能可以与上节的添加密码配合使用。）

## Twitter Cards ##

本主题支持 Twitter Cards 元标记，要使用请先至配置文件添加一行：

```text
enable_twitter_cards: yes
```

这时 reos 就会在**文章页面**头部添加 Twitter Card 元标记。在这之后，你还需要向 Twitter 官方申请批准，地址[在此](https://dev.twitter.com/docs/cards/validation/validator)。申请批准之后，你的 Twitter Cards 就生效了。下面是一个效果图：

![Twitter Cards 效果图](http://oyiadin.u.qiniudn.com/img/twitter-cards-example.png)

[（Issue #25）](https://github.com/oyiadin/reos/issues/25)

## 其他平台 ##

[JmPotato/catsup-theme-reos](https://github.com/JmPotato/catsup-theme-reos) For [whtsky/catsup](https://github.com/whtsky/catsup)

由于 catsup 生成的网页是**完全静态**的，reos for FarBox 的许多功能无法使用。
