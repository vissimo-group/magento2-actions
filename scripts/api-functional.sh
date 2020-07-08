#!/usr/bin/env bash

set -e

echo '127.0.0.1 magento.localhost' >> /etc/hosts
cd $PROJECT_DIR/dev/tests/api-functional
../../../vendor/bin/phpunit -c $PROJECT_DIR/dev/tests/api-functional/phpunit_graphql.xml
