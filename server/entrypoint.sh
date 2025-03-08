#!/bin/sh

# Make migrations and migrate the database.
echo "Making migrations and migrating the database."
python manage.py makemigrations --noinput || exit 1
python manage.py migrate --noinput || exit 1
python manage.py collectstatic --noinput || exit 1
echo "Starting application"
exec "$@"