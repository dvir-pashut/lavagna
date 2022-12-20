FROM maven:3.8.6-openjdk-8 
COPY . /app
WORKDIR /app
RUN mvn verify
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]