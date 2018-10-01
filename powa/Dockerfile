FROM centos7-dev

RUN yum install -y https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-centos96-9.6-3.noarch.rpm
RUN yum install -y powa_96-web

ADD powa-web-start.sh /

CMD ["/powa-web-start.sh", "localhost", "5432", "postgres"]
