FROM python:3

COPY app /app
WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

# CMD [ "uvicorn", "main:app", "--reload" ]
CMD [ "uwsgi", "app.ini" ]

# FROM nginx:stable
# COPY site /usr/share/nginx/html
# COPY conf.d/* /etc/nginx/conf.d/
# COPY ssl /etc/nginx/ssl

