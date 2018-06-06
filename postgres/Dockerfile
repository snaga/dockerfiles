FROM centos7-dev

RUN rpm -ivh https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm

RUN yum install -y postgresql10 postgresql10-contrib postgresql10-devel postgresql10-libs postgresql10-plpython postgresql10-server && \
    su -c "/usr/pgsql-10/bin/initdb -D /var/lib/pgsql/10/data --no-locale -E utf-8" postgres

RUN yum install -y pg_partman10

ADD build_madlib.sh /

CMD ["su", "-c", "/usr/pgsql-10/bin/postgres -D /var/lib/pgsql/10/data -i", "postgres"]

