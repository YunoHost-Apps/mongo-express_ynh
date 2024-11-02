<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Mongo Express

[![集成程度](https://dash.yunohost.org/integration/mongo-express.svg)](https://ci-apps.yunohost.org/ci/apps/mongo-express/) ![工作状态](https://ci-apps.yunohost.org/ci/badges/mongo-express.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/mongo-express.maintain.svg)

[![使用 YunoHost 安装 Mongo Express](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mongo-express)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Mongo Express。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Mongo Express is a Web-based MongoDB admin interface written with Node.js, Express and Bootstrap3.
You can as well install a Mongo database - version 4, 5 or 6 in your yunohost server if you want 

### Features
- Optionally installs Mongo server
- Connect to multiple databases
- View/add/delete databases
- View/add/rename/delete collections
- View/add/update/delete documents
- Preview audio/video/image assets inline in collection view
- Nested and/or large objects are collapsible for easy overview
- Async on-demand loading of big document properties (>100KB default) to keep collection view fast
- GridFS support - add/get/delete incredibly large files
- Use BSON data types in documents
- Mobile / Responsive - Bootstrap 3 works passably on small screens when you're in a bind
- Connect and authenticate to individual databases
- Authenticate as admin to view all databases
- Database blacklist/whitelist
- Custom CA and CA validation disabling
- Supports replica sets


**分发版本：** 1.0.2~ynh5

## 截图

![Mongo Express 的截图](./doc/screenshots/collection-view.png)
![Mongo Express 的截图](./doc/screenshots/databases-view.png)
![Mongo Express 的截图](./doc/screenshots/document-edit.png)

## 文档与资源

- 上游应用代码库： <https://github.com/mongo-express/mongo-express>
- YunoHost 商店： <https://apps.yunohost.org/app/mongo-express>
- 报告 bug： <https://github.com/YunoHost-Apps/mongo-express_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
或
sudo yunohost app upgrade mongo-express -u https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
