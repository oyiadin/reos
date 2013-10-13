## 描述 ##

又一个 FarBox.com 主题，无设计宗旨，随心设计。Demo 及作者 Blog：http://oyiadin.farbox.com

## 信息/特点/特性 ##

* [HTML5 网页规范性测试通过。](http://validator.w3.org/check?uri=oyiadin.farbox.com)
* 较好地支持移动终端。
* 无 JavaScript 脚本。
* 支持的评论系统：
    1. [Disqus](http://disqus.com/)
    2. [多说](http://duoshuo.com/)
* 自适应单栏布局。

额，没了，有什么建议请右上角发 Issues。

## 其他说明 ##

### 使用第三方评论系统 ###

请先至第三方评论系统准备评论系统的相关信息，在这里，reos 只需要你的 `short_name` 或者类似字段。编辑 `FarBox/your_site/site.txt` 文件，按需增加以下内容：

```text
disqus: short_name
duoshuo: short_name
```

如果使用 Disqus 系统，请添加第一行的内容；如果使用多说系统，请添加第二行的内容。并把其中的 `short_name` 更改为实际值。

> 如果 site.txt 文件同时存在 disqus 及 duoshuo 字段，reos 将使用 disqus 作为评论系统。

