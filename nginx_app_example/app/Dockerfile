FROM python:3
#FROM python:3.8.17-alpine3.18
# 3.8.17-alpine3.18, 3.8-alpine3.18, 3.8.17-alpine, 3.8-alpine

WORKDIR /app
COPY main.py ./
COPY app.ini ./
COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

# CMD [ "uvicorn", "main:app", "--reload" ]
# CMD [ "uwsgi", "app.ini" ]
CMD [ "python", "main.py" ]

