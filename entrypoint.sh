#!/bin/bash

export DB_DIALECT=HSQLDB
export DB_URL=jdbc:hsqldb:file:lavagna
export DB_USER=sa
export DB_PASS=""
export SPRING_PROFILE=dev



java -Xms64m -Xmx128m -Ddatasource.dialect="${DB_DIALECT}" \
-Ddatasource.url="${DB_URL}" \
-Ddatasource.username="${DB_USER}" \
-Ddatasource.password="${DB_PASS}" \
-Dspring.profiles.active="${SPRING_PROFILE}" \
-jar /app/target/lavagna-jetty-console.war --headless
