#!/bin/bash

# nginx
now=`date +%Y%m%d-%H%M%S`
mv /var/log/nginx/access.log /var/log/nginx/access.log.$now
sudo nginx -s reopen

# mysql
mv /var/log/mysql/mysql-slow.log /var/log/mysql/mysql-slow.log.$now
sudo mysqladmin flush-logs
