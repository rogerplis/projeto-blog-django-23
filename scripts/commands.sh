#!/bin/sh

# This script is used to run the commands in the container
set -e

# Wait for the database to be ready 
while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
  echo "Waiting for the database to be ready..."
  sleep 2
done
  echo "Database is ready! (host: $POSTGRES_HOST, port: $POSTGRES_PORT)"

python manage.py collectstatic --noinput
python manage.py makemigrations --noinput
python manage.py migrate --noinput
python manage.py runserver 0.0.0.0:8000
