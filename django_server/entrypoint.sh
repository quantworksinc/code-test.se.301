#!/usr/bin/env bash
pip install -r requirements.txt
npm install
npm run dev
python manage.py makemigrations
until python manage.py migrate --noinput 
do
	echo "Waiting for postgres ready..."
	sleep 2
done
python manage.py test
python manage.py loaddata app/fixtures/fruits.yaml
python manage.py runserver 0.0.0.0:8000
