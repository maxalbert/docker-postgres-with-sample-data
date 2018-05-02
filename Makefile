PROJECT_NAME = dbtest-demo
DBTEST_PORT = 9000
DATA_VOLUME_NAME = $(PROJECT_NAME)_data-volume-dbtest

all:

fresh: down purge-data-volume build up

up:
	docker-compose -p $(PROJECT_NAME) up -d

down:
	docker-compose -p $(PROJECT_NAME) down

build:
	docker-compose -p $(PROJECT_NAME) build dbtest

logs:
	docker-compose -p $(PROJECT_NAME) logs -f

connect:
	psql postgresql://dbtest:dbtest@localhost:$(DBTEST_PORT)/dbtest

purge-data-volume:
	docker volume rm $(DATA_VOLUME_NAME) || true
