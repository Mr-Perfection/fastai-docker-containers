FROM ubuntu:latest

ENV SHELL /bin/bash
ENV DEBIAN_FRONTEND noninteractive
WORKDIR /root

COPY install.sh ./
COPY mamba_setup.sh ./
COPY post_install.sh ./
RUN bash install.sh

CMD [ "/bin/bash" ]

