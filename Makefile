
SHELL := /bin/sh

include .env
export


.PHONY: build-mkdocs
build-mkdocs:
	IMAGE_NAME=${IMAGE_NAME} && SERVICE_NAME=${SERVICE_NAME} && docker-compose build ${SERVICE_NAME}

.PHONY: build-python
build-python:
	docker-compose --verbose build python

.PHONY: build
build: build-mkdocs build-python
	docker-compose build python

.PHONY: build-doc
build-doc:
	echo "hej"

.PHONY: serve-doc
serve-doc:
	docker-compose up
