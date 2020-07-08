#!/usr/bin/env bash

set -e

cd $PROJECT_DIR/dev/tests/api-functional
../../../vendor/bin/phpunit -c $PROJECT_DIR/dev/tests/api-functional/phpunit_graphql.xml
