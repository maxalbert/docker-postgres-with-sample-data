FROM postgres:10

ENV POSTGRES_DB=dbtest
ENV POSTGRES_USER=dbtest
ENV POSTGRES_PASSWORD=dbtest

COPY ./sql/* /docker-entrypoint-initdb.d/
