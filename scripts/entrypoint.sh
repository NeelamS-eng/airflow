#!/usr/bin/env bash

airflow db init

exec airflow webserver
