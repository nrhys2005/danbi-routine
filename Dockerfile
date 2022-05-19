FROM python:3.9.7
WORKDIR /usr/src/app

#COPY ../../requirements.txt ./
#RUN pip install -r requirements.txt
RUN apt-get update
COPY ./ /usr/src/app/.

RUN pip install -r requirements.txt

#CD /usr/src/app/

EXPOSE 8081
#CMD ["bash", "-c", "pwd"]
#CMD ["bash", "-c", "ls"]
CMD ["bash", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]