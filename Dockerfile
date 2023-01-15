FROM ubuntu:latest

ENV SHELL /bin/bash
WORKDIR /root

COPY install.sh ./
RUN bash install.sh

CMD [ "/bin/bash" ]

