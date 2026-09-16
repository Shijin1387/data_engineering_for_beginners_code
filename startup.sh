#!/bin/bash
set -e
source /home/airflow/.venv/bin/activate
if [ "${START_AIRFLOW}" = "true" ]; then
  airflow standalone &
fi
exec jupyter lab --allow-root --ip=0.0.0.0 --no-browser --IdentityProvider.token='' --notebook-dir=/home/airflow
