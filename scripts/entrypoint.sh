#!/usr/bin/env bash

airflow db init && airflow users create --firstname admin --lastname admin --email admin --password admin --username admin --role Admin

exec airflow webserver
