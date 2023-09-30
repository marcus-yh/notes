#!/usr/bin/make

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
	docker run --rm -v ${PWD}:/docs marcus-yh/notes build

.PHONY: deploy-github-pages
deploy-github-pages:
	docker run --rm -v ${PWD}:/docs marcus-yh/notes gh-deploy --force

.PHONY: serve-doc
serve-local:
	docker-compose up
