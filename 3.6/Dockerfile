FROM newtoncodes/ubuntu:16.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.6.list

RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y mongodb-org
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN groupadd -r mongo && useradd -r -g mongo mongo

RUN rm -rf /var/lib/mongodb && mkdir -p /var/lib/mongodb /var/run/mongod
RUN mkdir -p /var/lib/mongodb
RUN chown -R mongodb:mongodb /var/lib/mongodb /var/log/mongodb /var/run/mongod && chmod 777 /var/run/mongod

COPY mongod.conf /etc/mongod.conf

COPY entrypoint.sh /usr/bin/entrypoint
RUN chmod +x /usr/bin/entrypoint

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["mongod"]

VOLUME ["/var/lib/mongodb", "/var/log/mongodb"]
EXPOSE 27017 27018 27019
