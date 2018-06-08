FROM python3

ENV AIRFLOW_HOME=/airflow

RUN mkdir -p /airflow && \
    pip3 install cryptography apache-airflow

RUN airflow initdb

