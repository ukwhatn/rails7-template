.PHONY: test build-dev

DIR_NAME := $(shell basename $(CURDIR))

init:
	cp .env.example .env

build-dev:
	docker compose -f compose.dev.yml build

up-dev:
	make build-dev
	docker compose -f compose.dev.yml up -d

down-dev:
	docker compose -f compose.dev.yml down

clean-dev:
	docker compose -f compose.dev.yml down --rmi all --volumes --remove-orphans
