<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Mongo Express untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/mongo-express.svg)](https://ci-apps.yunohost.org/ci/apps/mongo-express/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/mongo-express.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/mongo-express.maintain.svg)

[![Pasang Mongo Express dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mongo-express)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Mongo Express secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

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


**Versi terkirim:** 1.0.2~ynh5

## Tangkapan Layar

![Tangkapan Layar pada Mongo Express](./doc/screenshots/collection-view.png)
![Tangkapan Layar pada Mongo Express](./doc/screenshots/databases-view.png)
![Tangkapan Layar pada Mongo Express](./doc/screenshots/document-edit.png)

## Dokumentasi dan sumber daya

- Depot kode aplikasi hulu: <https://github.com/mongo-express/mongo-express>
- Gudang YunoHost: <https://apps.yunohost.org/app/mongo-express>
- Laporkan bug: <https://github.com/YunoHost-Apps/mongo-express_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
atau
sudo yunohost app upgrade mongo-express -u https://github.com/YunoHost-Apps/mongo-express_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
