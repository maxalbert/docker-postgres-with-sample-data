This is a minimal example of how to bundle sample data with a dockerized Postgres database.

## Prerequisites

- `docker`
- `docker-compose`
- `psql` (to connect to the running database)


## Quick start
```
$ make fresh
```
This removes any existing container and data volume from previous runs, (re-)builds the docker image and spins up a new container called `dbtest` which runs PosgreSQL and has a small sample table ingested.

To verify that it worked you can run `make connect` (this requires `psql`), which will drop you into a `psql` console and then you can list the contents of the sample table:
```
$ make connect
dbtest=# SELECT * FROM sample_data;
 id |       time_stamp       | comment 
----+------------------------+---------
  1 | 2018-01-01 00:11:22+00 | foo
  2 | 2018-01-02 12:34:56+00 | bar
  3 | 2018-01-03 18:17:16+00 | quux
(3 rows)
```

To stop the container, run `make down`. In order to remove the underlying data volume where the PostgreSQL-internal data is persisted, run `make purge-data-volume`.
