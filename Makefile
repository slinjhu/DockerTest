.PHONY: env

ENV_NAME=env
APP_NAME=friendly-hello

env:
	(rm -rf $(ENV_NAME))
	python3.7 -m venv $(ENV_NAME)
	. $(ENV_NAME)/bin/activate && pip install -U pip &&	pip install -r requirements.txt

build:
	git archive -o build.tar.gz --format=tar.gz HEAD
	docker build . --tag=$(APP_NAME)

run:
	docker run -p 8000:80 $(APP_NAME)