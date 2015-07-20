FROM ubuntu

RUN apt-get update

RUN apt-get install -q -y python-software-properties software-properties-common
RUN add-apt-repository ppa:saltstack/salt
RUN apt-get update -q && apt-get install -q -y salt-minion openssh-client

ADD entrypoint.sh /

CMD ["/entrypoint.sh"]
