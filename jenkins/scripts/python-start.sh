#!/usr/bin/env sh

echo '[python环境配置]'
set -x
#  install --save-dev cross-env
set +x
python --version

pip3 config set global.index-url https://mirrors.aliyun.com/pypi/simple

pip3 install --upgrade pip

pip3 install Django

# pip3 install django-simpleui

# pip3 install -r requirements.txt

python manage.py runserver 0.0.0.0:8000

echo 'The following "npm" command tests that your simple Node.js/React'
echo 'application renders satisfactorily. This command actually invokes the test'
echo 'runner Jest (https://facebook.github.io/jest/).'
set -x
# yarn test
