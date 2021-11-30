#!/bin/sh

python manage.py makemigrations
pip install pip-tools
pip-sync
python manage.py migrate
python manage.py loaddata sample_db.json

# Additional instructions...
#    python manage.py createsuperuser
#    npm install
#    gulp watch