<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Mongo Express для YunoHost

[![Уровень интеграции](https://dash.yunohost.org/integration/mongo-express.svg)](https://ci-apps.yunohost.org/ci/apps/mongo-express/) ![Состояние работы](https://ci-apps.yunohost.org/ci/badges/mongo-express.status.svg) ![Состояние сопровождения](https://ci-apps.yunohost.org/ci/badges/mongo-express.maintain.svg)

[![Установите Mongo Express с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mongo-express)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Mongo Express быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

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


**Поставляемая версия:** 1.0.2~ynh5

## Снимки экрана

![Снимок экрана Mongo Express](./doc/screenshots/collection-view.png)
![Снимок экрана Mongo Express](./doc/screenshots/databases-view.png)
![Снимок экрана Mongo Express](./doc/screenshots/document-edit.png)

## Документация и ресурсы

- Репозиторий кода главной ветки приложения: <https://github.com/mongo-express/mongo-express>
- Магазин YunoHost: <https://apps.yunohost.org/app/mongo-express>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/mongo-express_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
или
sudo yunohost app upgrade mongo-express -u https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
