FROM python:3.6-buster

RUN apt-get update && apt-get -y install libbz2-1.0 xz-utils zlib1g libxml2-dev libxslt1-dev 

RUN pip install scancode-toolkit

RUN mkdir /app

VOLUME /app

WORKDIR /app

ENTRYPOINT [ "/usr/local/bin/scancode", "-clpieu", "--html-app", "results.html", "/app" ]
