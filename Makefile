path: docker

clean:
	docker system prune -a -f

build:
	cd $(path) && docker build -t basic .

rebuild: clean build

run:
	cd $(path) && docker run --rm -p 81:80 basic

rerun: rebuild run

compose:
	docker-compose up -d --build