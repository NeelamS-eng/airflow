FROM apache/airflow:2.0.0-python3.8
ENV AIRFLOW_HOME=/usr/local/airflow
WORKDIR ${AIRFLOW_HOME}
COPY ./scripts/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 8080
