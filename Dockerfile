FROM python:3.8-slim

WORKDIR /usr/src/parrot

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1
    
COPY . .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

