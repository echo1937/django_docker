FROM python:3.8-alpine

WORKDIR /code
COPY . /code/
ENV PIP_CONFIG_FILE ./deploy/pip.conf
RUN pip install -r requirements.txt
CMD ["gunicorn", "-b 0.0.0.0:8000", "django_docker.wsgi"]