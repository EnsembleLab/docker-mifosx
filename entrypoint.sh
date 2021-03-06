#!/bin/bash

keytool -genkey -noprompt -storepass password -keypass password -keyalg RSA -alias tomcat -dname "CN=tomcat" -keystore /usr/share/tomcat.keystore

while ! mysqladmin ping -h"my-sql" --silent; do
    sleep 2
    echo "Waiting database..."
done

catalina.sh run

