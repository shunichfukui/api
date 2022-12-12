rubocop: ## docker-compose run --rm api bundle exec rubocop
	docker-compose run --rm api bundle exec rubocop
rubocop-a: ## docker-compose run --rm api bundle exec rubocop -a
	docker-compose run --rm api bundle exec rubocop -a
rubocop-A: ## docker-compose run --rm api bundle exec rubocop -A
	docker-compose run --rm api bundle exec rubocop -A