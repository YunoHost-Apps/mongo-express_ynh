<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Mongo Express para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/mongo-express.svg)](https://dash.yunohost.org/appci/app/mongo-express) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/mongo-express.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/mongo-express.maintain.svg)

[![Instalar Mongo Express con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mongo-express)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Mongo Express de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

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


**Versión proporcionada:** 1.0.2~ynh2

## Capturas de pantalla

![Captura de pantalla de Mongo Express](./doc/screenshots/document-edit.png)
![Captura de pantalla de Mongo Express](./doc/screenshots/collection-view.png)
![Captura de pantalla de Mongo Express](./doc/screenshots/databases-view.png)

## Documentación e recursos

- Repositorio de orixe do código: <https://github.com/mongo-express/mongo-express>
- Tenda YunoHost: <https://apps.yunohost.org/app/mongo-express>
- Informar dun problema: <https://github.com/YunoHost-Apps/mongo-express_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
ou
sudo yunohost app upgrade mongo-express -u https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
