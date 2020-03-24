all: build
build: 
	docker-compose build
run: build
	docker-compose up -d
logs:
	docker-compose logs
stop: 
	docker-compose stop
clean: stop
	docker-compose rm -f

