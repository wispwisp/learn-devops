FROM nginx:stable

COPY site /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
COPY myapp.conf /etc/nginx/conf.d/myapp.conf

COPY ssl /etc/nginx/ssl

