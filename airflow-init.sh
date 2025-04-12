#!/bin/bash

# Only initialize the DB if not already done
if [ ! -f "/opt/airflow/airflow.db.init" ]; then
  echo "Initializing Airflow DB..."
  airflow db init
  touch /opt/airflow/airflow.db.init

  echo "Creating admin user..."
  airflow users create \
    --username admin \
    --firstname Agent \
    --lastname Admin \
    --role Admin \
    --email admin@example.com \
    --password admin
fi

echo "Starting scheduler and webserver..."
airflow scheduler & airflow webserver