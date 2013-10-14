## 描述 ##

又一个 FarBox.com 主题，无设计宗旨，随心设计。Demo 及作者 Blog：http://oyiadin.farbox.com

## 信息/特点/特性 ##

* [HTML5 网页规范性测试通过。](http://validator.w3.org/check?uri=oyiadin.farbox.com)
* 较好地支持移动终端。
* 无 JavaScript 脚本。
* 支持的评论系统：
    1. [Disqus](http://disqus.com/)
    2. [多说](http://duoshuo.com/)
* 可自定义 CDN 地址。
* 自适应单栏布局。

额，没了，有什么建议请右上角发 Issues。

## 支持的配置选项 ##

> 配置文件指的是 `FarBox/your_site/site.txt` 或 `FarBox/your_site/site.md`，比如我的配置文件在 `FarBox/oyiadin.farbox.com/site.txt`。

### disqus 与 duoshuo ###

这两个键是关于评论系统的，值应该为相应网站所提供的 `short_name`。当两者均出现时，将以 `disqus` 键优先处理。

例子：

```text
disqus: foobar
```

### cdn_path ###

该键指定了静态文件（static 目录下文件）的存放地址，一般为 CDN 所使用。若无该键或者键值为空，静态文件将在 `/t/{ file_name }`。

例子：该例会在 `http://foo.bar/` 处请求静态文件。

```text
cdn_path: http://foo.bar/
```

> 注意：cdn_path 的值应该**永远**以 `/` 结束。

