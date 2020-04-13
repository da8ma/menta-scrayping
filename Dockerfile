FROM python:3

LABEL description="This container is for scraping learning."

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN apt-get update && \
    apt-get install -y vim less

ARG UID=1000
ARG USER=crawler
RUN useradd -m -u ${UID} ${USER}

USER ${UID}

# install python library
RUN pip install --upgrade pip && \
    pip install requests　&& \
    pip install bs4