#!/bin/bash

# Execute a mongo command
#
# example: ynh_mongo_exec --command='db.getMongo().getDBNames().indexOf("wekan")'
# example: ynh_mongo_exec --command="db.getMongo().getDBNames().indexOf(\"wekan\")"
#
# usage: ynh_mongo_exec [--database=database] --command="command"
# | arg: --database=    - The database to connect to
# | arg: --command=     - The command to evaluate
#
#
ynh_mongo_exec() {
    # ============ Argument parsing =============
    local -A args_array=([d]=database= [c]=command=)
    local database
    local command
    ynh_handle_getopts_args "$@"
    database="${database:-}"
    # ===========================================

    if [ -n "$database" ]; then
        mongosh --quiet << EOF
use $database
${command}
quit()
EOF
    else
        mongosh --quiet --eval="$command"
    fi
}

# Drop a database
#
# [internal]
#
# If you intend to drop the database *and* the associated user,
# consider using ynh_mongo_remove_db instead.
#
# usage: ynh_mongo_drop_db --database=database
# | arg: --database=    - The database name to drop
#
#
ynh_mongo_drop_db() {
    # ============ Argument parsing =============
    local -A args_array=([d]=database=)
    local database
    ynh_handle_getopts_args "$@"
    # ===========================================

    ynh_mongo_exec --database="$database" --command='db.runCommand({dropDatabase: 1})'
}

# Dump a database
#
# example: ynh_mongo_dump_db --database=wekan > ./dump.bson
#
# usage: ynh_mongo_dump_db --database=database
# | arg: --database=    - The database name to dump
# | ret: the mongodump output
#
#
ynh_mongo_dump_db() {
    # ============ Argument parsing =============
    local -A args_array=([d]=database=)
    local database
    ynh_handle_getopts_args "$@"
    # ===========================================

    mongodump --quiet --db="$database" --archive
}

# Create a user
#
# [internal]
#
# usage: ynh_mongo_create_user --db_user=user --db_pwd=pwd --db_name=name
# | arg: --db_user=       - The user name to create
# | arg: --db_pwd=        - The password to identify user by
# | arg: --db_name=       - Name of the database to grant privilegies
#
#
ynh_mongo_create_user() {
    # ============ Argument parsing =============
    local -A args_array=([u]=db_user= [n]=db_name= [p]=db_pwd=)
    local db_user
    local db_name
    local db_pwd
    ynh_handle_getopts_args "$@"
    # ===========================================

    # Create the user and set the user as admin of the db
    ynh_mongo_exec --database="$db_name" --command='db.createUser( { user: "'${db_user}'", pwd: "'${db_pwd}'", roles: [ { role: "readWrite", db: "'${db_name}'" } ] } );'

    # Add clustermonitoring rights
    ynh_mongo_exec --database="$db_name" --command='db.grantRolesToUser("'${db_user}'",[{ role: "clusterMonitor", db: "admin" }]);'
}

# Check if a mongo database exists
#
# usage: ynh_mongo_database_exists --database=database
# | arg: --database=        - The database for which to check existence
# | exit: Return 1 if the database doesn't exist, 0 otherwise
#
#
ynh_mongo_database_exists() {
    # ============ Argument parsing =============
    local -A args_array=([d]=database=)
    local database
    ynh_handle_getopts_args "$@"
    # ===========================================

    if [ $(ynh_mongo_exec --command='db.getMongo().getDBNames().indexOf("'${database}'")') -lt 0 ]; then
        return 1
    else
        return 0
    fi
}

# Restore a database
#
# example: ynh_mongo_restore_db --database=wekan < ./dump.bson
#
# usage: ynh_mongo_restore_db --database=database
# | arg: --database=    - The database name to restore
#
#
ynh_mongo_restore_db() {
    # ============ Argument parsing =============
    local -A args_array=([d]=database=)
    local database
    ynh_handle_getopts_args "$@"
    # ===========================================

    mongorestore --quiet --db="$database" --archive
}

# Drop a user
#
# [internal]
#
# usage: ynh_mongo_drop_user --db_user=user --db_name=name
# | arg: --db_user=        - The user to drop
# | arg: --db_name=        - Name of the database
#
#
ynh_mongo_drop_user() {
    # ============ Argument parsing =============
    local -A args_array=([u]=db_user= [n]=db_name=)
    local db_user
    local db_name
    ynh_handle_getopts_args "$@"
    # ===========================================

    ynh_mongo_exec --database="$db_name" --command='db.dropUser("'$db_user'", {w: "majority", wtimeout: 5000})'
}

# Create a database, an user and its password. Then store the password in the app's config
#
# usage: ynh_mongo_setup_db --db_user=user --db_name=name [--db_pwd=pwd]
# | arg: --db_user=        - Owner of the database
# | arg: --db_name=        - Name of the database
# | arg: --db_pwd=        - Password of the database. If not provided, a password will be generated
#
# After executing this helper, the password of the created database will be available in $db_pwd
# It will also be stored as "mongopwd" into the app settings.
#
#
ynh_mongo_setup_db() {
    # ============ Argument parsing =============
    local -A args_array=([u]=db_user= [n]=db_name= [p]=db_pwd=)
    local db_user
    local db_name
    db_pwd=""
    ynh_handle_getopts_args "$@"
    # ===========================================

    local new_db_pwd=$(ynh_string_random) # Generate a random password
    # If $db_pwd is not provided, use new_db_pwd instead for db_pwd
    db_pwd="${db_pwd:-$new_db_pwd}"

    # Create the user and grant access to the database
    ynh_mongo_create_user --db_user="$db_user" --db_pwd="$db_pwd" --db_name="$db_name"

    # Store the password in the app's config
    ynh_app_setting_set --key=db_pwd --value=$db_pwd
}

# Remove a database if it exists, and the associated user
#
# usage: ynh_mongo_remove_db --db_user=user --db_name=name
# | arg: --db_user=        - Owner of the database
# | arg: --db_name=        - Name of the database
#
#
ynh_mongo_remove_db() {
    # ============ Argument parsing =============
    local -A args_array=([u]=db_user= [n]=db_name=)
    local db_user
    local db_name
    ynh_handle_getopts_args "$@"
    # ===========================================

    if ynh_mongo_database_exists --database=$db_name; then # Check if the database exists
        ynh_mongo_drop_db --database=$db_name              # Remove the database
    else
        ynh_print_warn "Database $db_name not found"
    fi

    # Remove mongo user if it exists
    ynh_mongo_drop_user --db_user=$db_user --db_name=$db_name
}

_package_is_installed() {
    # Declare an array to define the options of this helper.
    local legacy_args=p
    local -A args_array=([p]=package=)
    local package
    # Manage arguments with getopts
    ynh_handle_getopts_args "$@"

    dpkg-query --show --showformat='${Status}' "$package" 2> /dev/null \
        | grep --count "ok installed" &> /dev/null
}

ynh_installed_mongo_version() {
    if _package_is_installed --package "mongodb-org-server"; then
        dpkg-query --show --showformat='${Version}' "mongodb-org-server" 2> /dev/null
    else
        echo ''
    fi
}

# Install MongoDB and integrate MongoDB service in YunoHost
# It can upgrade / downgrade the desired mongo version to ensure a compatible one is installed
#
# The installed version is defined by $mongo_version which should be defined as global prior to calling this helper
#
# usage: ynh_install_mongo
#
ynh_install_mongo() {

    [[ -n "${mongo_version:-}" ]] || ynh_die "\$mongo_version should be defined prior to calling ynh_install_mongo"

    ynh_print_info "Installing MongoDB Community Edition ..."

    
    if [[ "$(grep '^flags' /proc/cpuinfo | uniq)" != *"avx"* && "$mongo_version" != "4.4" ]]; then
        ynh_die "Mongo $mongo_version is not compatible with your cpu (see https://docs.mongodb.com/manual/administration/production-notes/#x86_64)."
    fi

    local mongo_debian_release=$YNH_DEBIAN_VERSION

    if [[ "$mongo_debian_release" == "bookworm" && "$mongo_version" != "7."* ]]; then
        ynh_print_warn "Switched to Mongo v7 as $mongo_version is not compatible with $mongo_debian_release"
        mongo_version = "7.0"
    fi

    # Check if MongoDB is already installed
    local install_package=true
    local current_version=$(ynh_installed_mongo_version)
    # Focus only the major, minor versions
    current_version=$(cut -c 1-3 <<< "$current_version")

    if [[ "a$current_version" != "a" ]]; then
        if (($(bc <<< "$current_version < $mongo_version"))); then
            if (($(bc <<< "scale = 0 ; x = $mongo_version / 1 - $current_version / 1; x > 1.0"))); then
                # Mongo only support upgrading a major version to another
                ynh_die "Upgrading Mongo from version  $current_version to $mongo_version is not supported"
            else
                ynh_print_warn "Upgrading Mongo from version $current_version to $mongo_version"
            fi
        else
            if (($(bc <<< "$current_version >= $mongo_version"))); then
                ynh_print_info "Mongo version $current_version is already installed and will be kept instead of requested version $mongo_version"
                install_package=false
            fi
        fi
    fi

    if [[ "$install_package" = true ]]; then
        ynh_apt_install_dependencies_from_extra_repository \
            --repo="deb http://repo.mongodb.org/apt/debian $mongo_debian_release/mongodb-org/$mongo_version main" \
            --package="mongodb-org mongodb-org-server mongodb-org-tools mongodb-mongosh" \
            --key="https://www.mongodb.org/static/pgp/server-$mongo_version.asc"
    fi

    mongodb_servicename=mongod

    # Make sure MongoDB is started and enabled
    systemctl enable $mongodb_servicename --quiet
    systemctl daemon-reload --quiet
    ynh_systemctl --service=$mongodb_servicename --action=restart --wait_until="aiting for connections" --log_path="/var/log/mongodb/$mongodb_servicename.log"

    # Integrate MongoDB service in YunoHost
    yunohost service add $mongodb_servicename --description="MongoDB daemon" --log="/var/log/mongodb/$mongodb_servicename.log"

    # Store mongo_version into the config of this app
    ynh_app_setting_set --key=mongo_version --value=$mongo_version
}

# Remove MongoDB
# Only remove the MongoDB service integration in YunoHost for now
# if MongoDB package as been removed
#
# usage: ynh_remove_mongo
#
#
ynh_remove_mongo() {
    # Only remove the mongodb service if it is not installed.
    if ! _ynh_apt_package_is_installed "mongodb-org"; then
        ynh_print_info "Removing MongoDB service..."
        mongodb_servicename=mongod
        # Remove the mongodb service
        yunohost service remove $mongodb_servicename
        ynh_safe_rm "/var/lib/mongodb"
        ynh_safe_rm "/var/log/mongodb"
    fi
}
