FROM resin/rpi-raspbian

#Install Utility

RUN apt-get -q update \
	&& apt-get -qy install \
 		wget \
		python python-dev python-pip python-virtualenv \
		build-essential  \
		curl \
        git 


RUN pip install paho-mqtt
RUN sudo pip install adafruit_python_dht

RUN ls

ENV INITSYSTEM=on

RUN ls

WORKDIR /usr/local/bin

RUN ls

COPY app/ /usr/local/bin
RUN ls /usr/local/bin/Adafruit_DHT



CMD ["python", "/usr/local/bin/main.py"]
