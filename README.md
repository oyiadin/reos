## 描述 ##

又一个 FarBox.com 主题，无设计宗旨，随心设计。Demo 及作者 Blog：http://oyiadin.farbox.com

## 信息/特点/特性 ##

* [已通过 HTML5 网页规范性测试。](http://validator.w3.org/check?uri=oyiadin.farbox.com)
* 支持移动终端（细节问题尚待解决）。
* 无 JavaScript 脚本（不计第三方应用）。
* 支持评论系统：
    1. [Disqus](http://disqus.com/)
    2. [多说](http://duoshuo.com/)
* 自适应单栏布局。

## 配置选项 ##

* `disqus` - 使用 disqus 作为评论系统，值为 disqus 提供的 `short_name`。
* `duoshuo` - 使用多说作为评论系统，值为多说提供的`网站名称`。（`disqus` 比 `duoshuo` 字段优先）
* `static_path` - 静态文件地址，默认为 `/t`。应不以 `/` 结束。可用作 CDN。

## 添加自定义内容 ##

可以在文件 `custom_js.md` 处添加，注意第一行要是：

```text
status:part
```

这里可以添加 `JavaScript`、`css` 等东西，只要能在 HTML 里出现就行。
