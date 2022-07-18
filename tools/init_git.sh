#!/bin/bash

REPO="https://github.com/yuucu/isucon12-qualify.git"

# 初期設定周り
git config --global user.name "isucon12"
git config --global user.email "isucon12"
git config --global credential.helper 'cache --timeout 72000'

# cloneとか
git init
git remote add origin $REPO
git pull origin main
git branch -M main

# .gitignore編集して、いらないやつをaddしない
# git add hoge

git commit -m "init"

# access token いるかも
git push origin main

# nginx設定ファイル持ってくる
sudo cp /etc/nginx/nginx.conf .
git add nginx.conf
git commit -m "add nginx.conf"
git push origin main

# mysql設定ファイル持ってくる
sudo cp /etc/mysql/mysql.conf.d/mysqld.cnf .
git add mysqld.cnf
git commit -m "add mysqld.cnf"
git push origin main

