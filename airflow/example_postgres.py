from builtins import range
from datetime import timedelta

import airflow
from airflow.operators.postgres_operator import PostgresOperator
from airflow.operators.dummy_operator import DummyOperator
from airflow.models import DAG

default_args = {
    'owner': 'airflow',
    'start_date': airflow.utils.dates.days_ago(2),
}

dag = DAG(
    dag_id='example_postgres',
    default_args=default_args,
    schedule_interval='0 0 * * *',
    dagrun_timeout=timedelta(minutes=60),
)

task = PostgresOperator(
    task_id='run_postgres',
    sql='select version()',
    database='postgres',
    dag=dag,
)

