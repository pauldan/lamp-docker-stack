FROM php:7.4.11-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql 
RUN apt-get update
RUN apt-get install unixodbc-dev -y
# add proxy if needed
# RUN pear config-set http_proxy 
# if using mssql instead of mysql
#RUN pecl install sqlsrv
#RUN pecl install pdo_sqlsrv
#RUN docker-php-ext-enable sqlsrv pdo_sqlsrv
