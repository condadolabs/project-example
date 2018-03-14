.PHONY: init test

init:
	pip install -r requirements/development.txt
	docker-compose up -d
	cp -Rvf .env-sample .env
	python manage.py migrate

test:
	pytest
