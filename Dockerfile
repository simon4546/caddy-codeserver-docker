FROM codercom/code-server

LABEL maintainer="Arghyadeep<arghyadeep.k@gmail.com>"

USER root

# Installing Caddy
RUN echo "deb [trusted=yes] https://apt.fury.io/caddy/ /" | tee -a /etc/apt/sources.list.d/caddy-fury.list
RUN apt-get update -y
RUN apt-get install caddy -y

COPY script.sh /script.sh
RUN ["chmod", "+x", "/script.sh"]

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/script.sh"]
