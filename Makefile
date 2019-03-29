.PHONY: env

ENV_NAME=env

env:
	(rm -rf $(ENV_NAME))
	python3.7 -m venv $(ENV_NAME)
	. $(ENV_NAME)/bin/activate && pip install -U pip &&	pip install -r requirements.txt

