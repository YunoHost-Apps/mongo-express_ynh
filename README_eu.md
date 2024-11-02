<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Mongo Express YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/mongo-express.svg)](https://ci-apps.yunohost.org/ci/apps/mongo-express/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/mongo-express.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/mongo-express.maintain.svg)

[![Instalatu Mongo Express YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mongo-express)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Mongo Express YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

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


**Paketatutako bertsioa:** 1.0.2~ynh5

## Pantaila-argazkiak

![Mongo Express(r)en pantaila-argazkia](./doc/screenshots/collection-view.png)
![Mongo Express(r)en pantaila-argazkia](./doc/screenshots/databases-view.png)
![Mongo Express(r)en pantaila-argazkia](./doc/screenshots/document-edit.png)

## Dokumentazioa eta baliabideak

- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/mongo-express/mongo-express>
- YunoHost Denda: <https://apps.yunohost.org/app/mongo-express>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/mongo-express_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
edo
sudo yunohost app upgrade mongo-express -u https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
