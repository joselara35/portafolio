#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requerimientos.txt
pip install --upgrade pip

python manage.py collectstatic --no-input
python manage.py migrate