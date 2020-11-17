#!/bin/bash
# -*- ENCODING: UTF-8 -*-
dbContainerId="$(docker ps -f "name=practica2_gps_mongo" | sed -n 2p | sed 's/ .*//')"
docker exec "${dbContainerId}" mongo ordering usr/local/data/db/MongoRecords.js
