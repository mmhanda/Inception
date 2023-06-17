up:
	mkdir -p ${HOME}/data/nginx_press_data/ ${HOME}/data/database_data/
	docker-compose -f ./srcs/docker-compose.yml up
down:
	docker-compose -f ./srcs/docker-compose.yml down
clean: down
	docker system prune -a
	docker-compose -f ./srcs/docker-compose.yml down -v
	rm -rf ${HOME}/data/nginx_press_data/ ${HOME}/data/database_data/
	docker volume prune -f
re: clean up