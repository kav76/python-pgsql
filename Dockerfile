FROM python:3.9

WORKDIR /srv/app
RUN apt-get -y update
RUN apt-get -y install python3-pip
RUN apt-get -y install libpq-dev python-dev
RUN python3 -m pip install Flask
RUN python3 -m pip install psycopg2
RUN python3 -m pip install configparser

CMD [ "python3", "/opt/web.py"]
