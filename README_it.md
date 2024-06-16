<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# Mongo Express per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/mongo-express.svg)](https://dash.yunohost.org/appci/app/mongo-express) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/mongo-express.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/mongo-express.maintain.svg)

[![Installa Mongo Express con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mongo-express)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare Mongo Express su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

Mongo Express is a Web-based MongoDB admin interface written with Node.js, Express and Bootstrap3.
You can as well install a Mongo database - version 4, 5, 6 or 7 in your yunohost server if you want 

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


**Versione pubblicata:** 1.0.2~ynh2

## Screenshot

![Screenshot di Mongo Express](./doc/screenshots/document-edit.png)
![Screenshot di Mongo Express](./doc/screenshots/collection-view.png)
![Screenshot di Mongo Express](./doc/screenshots/databases-view.png)

## Documentazione e risorse

- Repository upstream del codice dell’app: <https://github.com/mongo-express/mongo-express>
- Store di YunoHost: <https://apps.yunohost.org/app/mongo-express>
- Segnala un problema: <https://github.com/YunoHost-Apps/mongo-express_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
o
sudo yunohost app upgrade mongo-express -u https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
