<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Mongo Express pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/mongo-express.svg)](https://dash.yunohost.org/appci/app/mongo-express) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/mongo-express.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/mongo-express.maintain.svg)

[![Installer Mongo Express avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mongo-express)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Mongo Express rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

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


**Version incluse :** 1.0.2~ynh2

## Captures d’écran

![Capture d’écran de Mongo Express](./doc/screenshots/document-edit.png)
![Capture d’écran de Mongo Express](./doc/screenshots/collection-view.png)
![Capture d’écran de Mongo Express](./doc/screenshots/databases-view.png)

## Documentations et ressources

- Dépôt de code officiel de l’app : <https://github.com/mongo-express/mongo-express>
- YunoHost Store : <https://apps.yunohost.org/app/mongo-express>
- Signaler un bug : <https://github.com/YunoHost-Apps/mongo-express_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
ou
sudo yunohost app upgrade mongo-express -u https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
