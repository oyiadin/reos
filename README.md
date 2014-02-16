## 描述 ##

又一个 [FarBox.com](http://farbox.com) 主题，无设计宗旨，随心设计。Demo 及作者 Blog：[陈笔](http://oyiadin.farbox.com)。

## 信息/特点/特性 ##

* **本主题只适用于目前的 FarBox Beta 版本**；
* [通过 HTML5 网页规范性测试](http://validator.w3.org/check?uri=oyiadin.farbox.com)（请无视百度站长验证那个谢谢）；
* 支持移动终端（细节问题尚待解决）；
* 无 JavaScript 脚本（不计第三方应用）；
* 支持评论系统：
    * [Disqus](http://disqus.com/)
    * [多说](http://duoshuo.com/)
* 单栏、自适应布局；
* 支持 [Twitter Cards](https://dev.twitter.com/docs/cards)；
* 可对文章添加访问密码；
* 支持 sitemap；
* 有黑白两种样式可选（鸡肋……）

## 给文章添加访问密码 ##

> **注意：在其他主题中可能不支持该功能，这可能会导致你的加锁文章被泄露。**

这需要你在文章头部加上一个名为 `password` 的 Metadata，值即为该文章的访问密码；然后再加上 `status: secret`。

```text
title: 加密文章示例
status: secret
password: 访问密码
question: 验证问题（可选）

已被加锁的内容。
```

> 注：由于 `status :public` 的文章可以使用 `your_post?action=show_raw` 这样的地址取得正文，所以此处需要显式声明一个非 `public` 的 `status` 值，而 reos 只会处理 `public` 及 `secret` 这两个 status。

## 自定义页脚内容 ##

> 尽量把署名和到此页的链接留下吧~

reos 会读取 `footer.md` 文件以修改默认页脚信息。示例：

```text
status: noindex

你的页脚内容。
```

> 注1：reos 同样会识别 `footer.txt`，但是 `footer.md` 将比其具有更高的优先级。
> 注2：事实上，只要不是 `status:public` 就可以正常工作。

## Twitter Cards ##

本主题支持 Twitter Cards 元标记，要使用它，请先至你的网站后台（`your_domain/admin`），选择 `Advanced`，然后点选`启用Twitter Cards`。配置生效之后，reos 就会在**文章页面**头部添加 Twitter Card 元标记。你还需要向 Twitter 官方申请批准，地址[在此](https://dev.twitter.com/docs/cards/validation/validator)。申请批准之后，你的 Twitter Cards 就生效了。下面是一个效果图：

![Twitter Cards 效果图](http://oyiadin.u.qiniudn.com/img/twitter-cards-example.png)

[（Issue #25）](https://github.com/oyiadin/reos/issues/25)

## 其他平台 ##

[JmPotato/catsup-theme-reos](https://github.com/JmPotato/catsup-theme-reos) For [whtsky/catsup](https://github.com/whtsky/catsup)

由于 catsup 生成的网页是**完全静态**的，reos for FarBox 的许多功能无法使用。
