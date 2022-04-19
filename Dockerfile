FROM python:3.8

WORKDIR /code
COPY . /code/
#ENV PIP_CONFIG_FILE ./deploy/pip.conf
RUN pip config set global.index-url https://mirrors.cloud.tencent.com/pypi/simple
RUN pip install -r requirements.txt
CMD ["gunicorn", "-c", "./deploy/gunicorn.py", "django_docker.wsgi"]