FROM python:3.8

WORKDIR /code
COPY . /code/
COPY ./deploy/entrypoint.sh /
#ENV PIP_CONFIG_FILE ./deploy/pip.conf
RUN pip config set global.index-url https://mirrors.cloud.tencent.com/pypi/simple
RUN pip install -r requirements.txt
ENTRYPOINT ["sh", "/entrypoint.sh"]
#CMD ["gunicorn", "-c", "./deploy/gunicorn.py", "django_docker.wsgi"]