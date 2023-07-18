FROM nginx:stable

COPY site /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
COPY myapp.conf /etc/nginx/conf.d/myapp.conf
COPY redirect_example.conf /etc/nginx/conf.d/

COPY conf.d/* /etc/nginx/conf.d/

COPY ssl /etc/nginx/ssl

