<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Mongo Express voor Yunohost

[![Integratieniveau](https://dash.yunohost.org/integration/mongo-express.svg)](https://ci-apps.yunohost.org/ci/apps/mongo-express/) ![Mate van functioneren](https://ci-apps.yunohost.org/ci/badges/mongo-express.status.svg) ![Onderhoudsstatus](https://ci-apps.yunohost.org/ci/badges/mongo-express.maintain.svg)

[![Mongo Express met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mongo-express)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Mongo Express snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

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


**Geleverde versie:** 1.0.2~ynh5

## Schermafdrukken

![Schermafdrukken van Mongo Express](./doc/screenshots/collection-view.png)
![Schermafdrukken van Mongo Express](./doc/screenshots/databases-view.png)
![Schermafdrukken van Mongo Express](./doc/screenshots/document-edit.png)

## Documentatie en bronnen

- Upstream app codedepot: <https://github.com/mongo-express/mongo-express>
- YunoHost-store: <https://apps.yunohost.org/app/mongo-express>
- Meld een bug: <https://github.com/YunoHost-Apps/mongo-express_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
of
sudo yunohost app upgrade mongo-express -u https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
