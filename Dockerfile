FROM python:alpine3.18

COPY requirements.txt /temp/requirements.txt
COPY src /service
WORKDIR /service
EXPOSE 8000

RUN pip install --no-cache-dir -r /temp/requirements.txt
RUN adduser --disabled-password service-user

USER service-user