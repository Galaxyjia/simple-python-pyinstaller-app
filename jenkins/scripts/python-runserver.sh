#!/usr/bin/env sh

echo '[python服务器启动]'
set -x
#  install --save-dev cross-env
set +x
python --version

pip3 list

python manage.py runserver 0.0.0.0:48080

echo 'The following "npm" command tests that your simple Node.js/React'
echo 'application renders satisfactorily. This command actually invokes the test'
echo 'runner Jest (https://facebook.github.io/jest/).'
set -x
# yarn test
