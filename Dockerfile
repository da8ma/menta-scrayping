FROM python:3

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

ARG UID=1000
ARG USER=da8ma
RUN useradd -m -u ${UID} ${USER}

USER ${UID}

# python package settings
RUN pip install --upgrade pip && \
pip install requests