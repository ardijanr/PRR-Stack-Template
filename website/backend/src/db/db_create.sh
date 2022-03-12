#!/bin/bash

sudo -i -u postgres psql -c "CREATE USER dev_user;"
sudo -i -u postgres psql -c "CREATE DATABASE prrn_template_db;"
sudo -i -u postgres psql -c "CREATE USER dev_user;"
sudo -i -u postgres psql -c "ALTER USER dev_user WITH ENCRYPTED PASSWORD 'testing';"
sudo -i -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE prrn_template_db TO dev_user;"