#!/bin/bash
# mongo/bin must be in path
BASE_DIR=`dirname $0`

echo "Importing posts definitions..."
mongoimport -h localhost --port 27017 -d blog -c posts --drop --jsonArray --stopOnError --file $BASE_DIR/../data/posts.json

echo "Importing users..."
mongoimport -h localhost --port 27017 -d blog -c users --drop --jsonArray --stopOnError --file $BASE_DIR/../data/users.json

echo "Importing sessions..."
mongoimport -h localhost --port 27017 -d blog -c sessions --drop --jsonArray --stopOnError --file $BASE_DIR/../data/sessions.json

