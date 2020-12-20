SHELL := /bin/bash
# .PHONY: install install-and-serve
default: install-and-serve

h help:
	@egrep '^\S|^$$' Makefile

clean:
	rm -rf output/

install: clean
	#sudo snap install hugo >/dev/null
	realpath hugo || brew install hugo
	hugo version

install-and-serve: install serve

s serve:
	hugo server -vvv --verbose

build: build-prod

dev build-dev: install
	HUGO_ENV=development hugo -D

prod build-prod: install
	HUGO_ENV=production hugo -D

test github-actions:
	# act -P ubuntu-latest=nektos/act-environments-ubuntu:18.04
	# act -j lint -P ubuntu-latest=shivammathur/node:latest
	# act -P ubuntu-latest=shivammathur/node:latest
	# ACTIONS_RUNNER_DEBUG=true
	act -P ubuntu-latest=nektos/act-environments-ubuntu:18.04 -j github-pages lint 
