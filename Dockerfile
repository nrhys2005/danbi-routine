#Djangho/DockerFile
FROM python:3.6.7
WORKDIR /srv/docker-server
#파이썬 버퍼링 제거 
ENV ENV PYTHONUNBUFFERED=0 

RUN apt-get -y update
RUN apt-get -y install vim

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8080
CMD ["python", "manage.py","runserver","0.0.0.0:8080"]
