FROM nginx

RUN apt-get update
RUN apt-get install nginx php-fpm php-mysql -y

COPY ./configs/default /etc/nginx/sites-available/default
COPY . /var/www/html

CMD php-fpm7.4

EXPOSE 80
