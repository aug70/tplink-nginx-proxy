# ==================== [START] Global Variable Declaration =================== #
SHELL := /bin/bash
BASE_DIR := $(shell pwd)
.DEFAULT_GOAL := restart
# ===================== [END] Global Variable Declaration ==================== #

u up:
	@docker-compose up -d
d down:
	@docker-compose down
c clean:
	@rm -rf ./logs/*.log
r restart: down clean up

