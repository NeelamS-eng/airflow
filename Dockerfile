FROM apache/airflow:2.0.0-python3.8
ENV AIRFLOW_HOME=/usr/local/airflow
COPY ./scripts/entrypoint.sh /entrypoint.sh
USER root
RUN chmod +x /entrypoint.sh
USER airflow
WORKDIR ${AIRFLOW_HOME}
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 8080
