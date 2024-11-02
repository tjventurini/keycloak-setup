init:
	@echo "Are we in a local or production environment? [local/prod]: "; \
	read ENV; \
	if [ "$$ENV" = "local" ]; then \
		# cp env.local .env; \
		ln -sf docker-compose.local.yml docker-compose.yml; \
	elif [ "$$ENV" = "prod" ]; then \
		# cp env.prod .env; \
		ln -sf docker-compose.prod.yml docker-compose.yml; \
	else \
		echo "Invalid environment. Please specify 'local' or 'prod'."; \
		exit 1; \
	fi; \
	echo "Initialization complete."

start:
	docker compose up -d
up: start

stop:
	docker compose down
down: stop

restart: stop start

tail:
	docker compose logs -f