## 描述 ##

又一个 FarBox.com 主题，无设计宗旨，随心设计。Demo 及作者 Blog：http://oyiadin.farbox.com

## 信息/特点/特性 ##

* [已通过 HTML5 网页规范性测试。](http://validator.w3.org/check?uri=oyiadin.farbox.com)
* 支持移动终端（细节问题尚待解决）。
* 无 JavaScript 脚本（不计第三方应用）。
* 支持评论系统：
    * [Disqus](http://disqus.com/)
    * [多说](http://duoshuo.com/)
* 自适应单栏布局。

## 配置选项 ##

* `author` - 标明站点的作者。没有该字段时会使用 `title` 替代。
* `disqus` - 使用 disqus 作为评论系统，值为 disqus 提供的 `short_name`。
* `duoshuo` - 使用多说作为评论系统，值为多说提供的`网站名称`。（`disqus` 比 `duoshuo` 字段优先）
* `static_path` - 静态文件地址，默认为 `/t`。应不以 `/` 结束。可用作 CDN。
* `enable_twitter_cards` - 具体见 [Twitter Cards](#twitter-cards) 一节。
* `twitter` - Twitter 帐号名。当前只会在 Twitter Cards 的 creator 标记中使用。
* `google_site_verification` - Google 站长工具验证的方法之一。请在验证页依次点击“备用方法”、“HTML 标记”以获取验证代码。值类似于这样：`vSuH7JKA3TQrLt0wY0jwcmMFb9jA44RJJ4DLZ-3PZt0`。
* `baidu_site_verification` - 百度站长工具的验证方法之一。请在验证页依次点击“验证网站”、“html标签验证”以获取验证代码。值类似于这样：`txu5eJ4r1C`。

## 添加自定义内容 ##

可以在文件 `custom_js.md` 处添加，注意第一行要是：

```text
status:part
```

这里可以添加 `JavaScript`、`css` 等东西，只要能在 HTML 里出现就行。它们将会在页脚出现。

## 部分特殊目录 ##

* `/robots.txt` - 返回一个合法的 robots.txt 文件。但是由于 FarBox API 的原因，此处的 HTTP status 为 404。[#21](https://github.com/oyiadin/reos/issues/21)
* `/sitemap` - 返回一个正规的 sitemap 文件。
* `/feed` - 可用以 rss 订阅。

## 自定义页脚内容 ##

同添加 js 代码差不多，reos 会读取 `footer.md` 文件以修改默认页脚信息。以下代码即为默认信息：

```text
status:part

<a href="https://github.com/oyiadin/reos">Theme By Oyiadin</a> · <a href="/template">Clone template</a> · <a href="http://farbox.com">Powered By FarBox.com</a>
```

如果想使用 Markdown 进行解析的话，请添加一个名为 markdown 的 Metadata：

```text
status:part
markdown:true

[Theme By Oyiadin][_1] · [Clone template][_2] · [Powered By FarBox.com][_3]

[_1]: <https://github.com/oyiadin/reos>
[_2]: </template>
[_3]: <http://farbox.com>
```

效果依旧相同，但是对于我们易读了许多。

## Twitter Cards ##

本主题支持 Twitter Cards 元标记，要使用请先至配置文件添加一行：

```text
enable_twitter_cards: yes
```

这时 reos 就会在**文章页面**头部添加 Twitter Card 元标记。在这之后，你还需要向 Twitter 官方申请批准，地址[在此](https://dev.twitter.com/docs/cards/validation/validator)。申请批准之后，你的 Twitter Cards 就生效了。下面是一个效果图：

![Twitter Cards 效果图](http://oyiadin.u.qiniudn.com/img/twitter-cards-example.png)

[（Issue #25）](https://github.com/oyiadin/reos/issues/25)
