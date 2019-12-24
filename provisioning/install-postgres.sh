#!/bin/bash

# Install and Configure Postgres
sudo apt install postgresql postgresql-contrib -y
sudo -i -u postgres
createuser ryan -s
createdb ryan
psql -c "ALTER USER ryan WITH PASSWORD 'secret'"

