#!/usr/bin/env sh

echo '[python环境配置]'
set -x
#  install --save-dev cross-env
set +x
python --version

pip3 config set global.index-url https://mirrors.aliyun.com/pypi/simple

pip3 install --upgrade pip

# pip3 install Django

# pip3 install django-simpleui

pip3 install -r requirements.txt

pip3 list

# BUILD_ID=DONTKILLME nohup python manage.py runserver 0.0.0.0:8000 &
# BUILD_ID=DONTKILLME
pip config set global.index-url http://mirrors.aliyun.com/pypi/simple
pip config set install.trusted-host mirrors.aliyun.com
pip install -U pip

python manage.py runserver 0.0.0.0:8000 &
sleep 1
echo $! > .pidfile

echo 'The following "npm" command tests that your simple Node.js/React'
echo 'application renders satisfactorily. This command actually invokes the test'
echo 'runner Jest (https://facebook.github.io/jest/).'
set -x
# yarn test
