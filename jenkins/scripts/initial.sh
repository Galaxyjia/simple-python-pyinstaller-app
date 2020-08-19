#!/usr/bin/env sh

echo '初始化脚本'
echo '[python版本信息]'
echo '[当前路径]'
echo '[当前目录结构]'

set -x
python --version
ls

echo '[设置pip镜像源为阿里云]'
pip config set global.index-url https://mirrors.aliyun.com/pypi/simple

echo '[更新pip]'
pip install --upgrade pip

set +x
