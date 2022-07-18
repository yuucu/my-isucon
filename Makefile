
NOW=`date +%Y%m%d-%H%M%S`

restart:
	make restart_mysql
	make restart_nginx

restart_mysql:
	# check setting file path
	sudo cp -b mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
	sudo mv /var/log/mysql/mysql-slow.log /var/log/mysql/mysql-slow.log.${NOW}
	sudo systemctl restart mysql

restart_nginx:
	# check setting file path
	sudo cp -b nginx.conf /etc/nginx/nginx.conf
	sudo mv /var/log/nginx/access.log /var/log/nginx/access.log.${NOW}
	sudo systemctl restart nginx

alp:
	cat /var/log/nginx/access.log | alp ltsv

mysqldumpslow:
	mysqldumpslow /var/log/mysql/mysql-slow.log
