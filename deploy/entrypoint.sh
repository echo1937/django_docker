#!/usr/bin/env bash

python manage.py collectstatic --no-input
python manage.py makemigrations --no-input
python manage.py migrate --no-input

gunicorn -c ./deploy/gunicorn.py django_docker.wsgi
