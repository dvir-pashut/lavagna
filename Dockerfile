FROM maven:3.8.6-openjdk-8 AS builder
COPY . /app
WORKDIR /app
RUN mvn verify
# RUN chmod +x entrypoint.sh
# ENTRYPOINT [ "./entrypoint.sh" ]


FROM openjdk:8u212-jre-alpine3.9
WORKDIR  /app
COPY --from=builder /app/target ./target
COPY --from=builder /app/entrypoint.sh .
ENTRYPOINT [ "./entrypoint.sh" ]
