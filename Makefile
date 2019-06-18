all: venv
	pipenv run python render.py

venv:
	pipenv install

clean:
	rm dist/*
