#!/bin/sh
echo "Applying database migrations..."
python manage.py migrate

# start the django application
echo "Starting Django Application..."
exec "$@"