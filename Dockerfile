FROM python:3.8-slim

RUN apt update && apt install gcc -y

WORKDIR /usr/src/parrot

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1
    
COPY . .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    pip install uwsgi

