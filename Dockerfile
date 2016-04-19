FROM node:slim
MAINTAINER Chanathip Srithanrat <omongo@gmail.com>

ENV HOME /tmp

RUN sed -i 's/httpredir/ftp.th/' /etc/apt/sources.list\
 && apt-get update\
 && apt-get -y install locales\
 && apt-get clean\
 && find /var/lib/apt/lists -type f -delete\
 && localedef -i en_US -f UTF-8 en_US.UTF-8
 && npm install -g elm\
 && npm cache clean

ENV LANG en_US.UTF-8

EXPOSE 8000

ENTRYPOINT ["elm"]
CMD ["repl"]
