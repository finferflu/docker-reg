FROM ubuntu:14.04
ADD etcdctl /usr/bin/etcdctl
ADD docker /usr/bin/docker
RUN apt-get update && apt-get -y install libsqlite3-0 && apt-get clean
ADD libdevmapper.so.1.02 /lib/libdevmapper.so.1.02
ADD docker-reg.sh /usr/bin/docker-reg.sh
RUN chmod +x /usr/bin/docker-reg.sh
ENTRYPOINT ["/usr/bin/docker-reg.sh"]
