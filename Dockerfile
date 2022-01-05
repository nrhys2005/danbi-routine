#Djangho/DockerFile
FROM python:3.6.7
#파이썬 버퍼링 제거 
ENV ENV PYTHONUNBUFFERED=0 

RUN apt-get -y update
RUN apt-get -y install vim

RUN mkdir /srv/docker-server

ADD . /srv/docker-server

WORKDIR /srv/docker-server

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8083
CMD ["python", "manage.py","runserver","0.0.0.0:8083"]
