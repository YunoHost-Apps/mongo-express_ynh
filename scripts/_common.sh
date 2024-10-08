#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

nodejs_version=20
mongo_version=7.0

_install_yarn () {
    ynh_exec_as_app $nodejs_dir/npm install yarn
    ynh_yarn="$install_dir/node_modules/.bin/yarn"
    alias ynh_yarn="$ynh_yarn"
}
