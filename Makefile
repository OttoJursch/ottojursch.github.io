all:
	python render.py

venv:
	pipenv install

clean:
	rm dist/*
