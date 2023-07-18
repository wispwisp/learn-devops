FROM nginx:stable

# COPY redirect_example.conf /etc/nginx/conf.d/
COPY site /usr/share/nginx/html
COPY conf.d/* /etc/nginx/conf.d/
COPY ssl /etc/nginx/ssl

