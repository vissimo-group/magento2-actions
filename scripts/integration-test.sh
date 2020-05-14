#!/usr/bin/env bash

set -e

cd $PROJECT_DIR
echo "Installing Test dependencies"
apt-get update && apt-get install -y  procps default-mysql-client
echo "create database magento_integration_tests default character set utf8" | mysql -h mysql -u root -pmagento
cp dev/tests/integration/etc/install-config-mysql.php.test dev/tests/integration/etc/install-config-mysql.php
bin/magento dev:tests:run integration