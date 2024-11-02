<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Mongo Express para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/mongo-express.svg)](https://ci-apps.yunohost.org/ci/apps/mongo-express/) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/mongo-express.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/mongo-express.maintain.svg)

[![Instalar Mongo Express con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mongo-express)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarMongo Express rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

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


**Versión actual:** 1.0.2~ynh5

## Capturas

![Captura de Mongo Express](./doc/screenshots/collection-view.png)
![Captura de Mongo Express](./doc/screenshots/databases-view.png)
![Captura de Mongo Express](./doc/screenshots/document-edit.png)

## Documentaciones y recursos

- Repositorio del código fuente oficial de la aplicación : <https://github.com/mongo-express/mongo-express>
- Catálogo YunoHost: <https://apps.yunohost.org/app/mongo-express>
- Reportar un error: <https://github.com/YunoHost-Apps/mongo-express_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [rama `testing`](https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing).

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
o
sudo yunohost app upgrade mongo-express -u https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
