FROM python:3.10

ENV PYTHONUNBUFFERED 1

WORKDIR /app
COPY requirements.txt /app/requirements.txt
COPY . /app
EXPOSE 8001



RUN adduser --disabled-password app-user
RUN chown -R app-user:app-user /app

RUN pip3 install -r requirements.txt

USER app-user