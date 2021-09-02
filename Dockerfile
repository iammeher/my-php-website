FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install nginx php-fpm php-mysql -y

COPY ./configs/default /etc/nginx/sites-available/default
COPY . /var/www/html

CMD service php7.4-fpm start && nginx -g "daemon off;"

EXPOSE 80
