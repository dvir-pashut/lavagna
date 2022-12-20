#!/bin/bash

export DB_DIALECT=MYSQL
export DB_URL='jdbc:mysql://mysql_db:3306/lavagna?useSSL=false&allowPublicKeyRetrieval=true'
export DB_USER=root
export DB_PASS=password
export SPRING_PROFILE=dev

java -Xms64m -Xmx128m -Ddatasource.dialect="${DB_DIALECT}" \
-Ddatasource.url="${DB_URL}" \
-Ddatasource.username="${DB_USER}" \
-Ddatasource.password="${DB_PASS}" \
-Dspring.profiles.active="${SPRING_PROFILE}" \
-jar /app/target/lavagna-jetty-console.war --headless
