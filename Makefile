.PHONY:

DOCKER_IMAGE=vivienney/adminer

build-full:
	docker build -t ${DOCKER_IMAGE}:full ./adminer-full

build-pm:
	docker build -t ${DOCKER_IMAGE}:pm ./adminer-pm

build-editor:
	docker build -t ${DOCKER_IMAGE}:editor ./adminer-editor

build-mongo:
	docker build -t ${DOCKER_IMAGE}:mongo ./adminer-mongo

build-mysql:
	docker build -t ${DOCKER_IMAGE}:mysql ./adminer-mysql

build-oracle-11:
	docker build -t ${DOCKER_IMAGE}:oracle-11 ./adminer-oracle-11

build-oracle-12:
	docker build -t ${DOCKER_IMAGE}:oracle-12 ./adminer-oracle-12

build-postgres:
	docker build -t ${DOCKER_IMAGE}:postgres ./adminer-postgres
