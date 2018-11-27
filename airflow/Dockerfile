FROM python3

ENV AIRFLOW_HOME=/airflow
ENV AIRFLOW_GPL_UNIDECODE=1

RUN mkdir -p /airflow && \
    pip3 install cryptography apache-airflow

RUN airflow initdb

ADD start.sh /

# Add PostgreSQL support
RUN rpm -ivh https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm && \
    yum install -y postgresql10-libs && \
    pip3 install psycopg2-binary

# sample dag for the PostgreSQL operator
RUN mkdir /airflow/dags
ADD example_postgres.py /airflow/dags

CMD ["/bin/bash", "/start.sh"]
