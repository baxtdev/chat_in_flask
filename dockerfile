FROM python:3.10
SHELL ["/bin/bash", "-c"]

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /chat_app
COPY requirements.txt /app/requirements.txt
COPY . /chat_app

RUN pip3 install -r requirements.txt

# CMD ["cd","chat_app"]
# CMD [ "python","chat_app/manage.py","runserver","8001"]



