.PHONY: test build-dev

DIR_NAME := $(shell basename $(CURDIR))

init:
	cp .env.example .env

dev:
	make build-dev
	make up-dev
	make log-dev

build-dev:
	docker compose -f compose.dev.yml build

up-dev:
	docker compose -f compose.dev.yml up -d

down-dev:
	docker compose -f compose.dev.yml down

clean-dev:
	docker compose -f compose.dev.yml down --rmi all --volumes --remove-orphans

log-dev:
	docker compose -f compose.dev.yml logs -f

prod:
	make build-prod
	make up-prod
	make log-prod

build-prod:
	docker compose -f compose.prod.yml build

up-prod:
	docker compose -f compose.prod.yml up -d

down-prod:
	docker compose -f compose.prod.yml down

log-prod:
	docker compose -f compose.prod.yml logs -f

redis-cli:
	docker compose -f compose.dev.yml exec redis redis-cli