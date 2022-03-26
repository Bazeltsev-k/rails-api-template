.PHONY: help bundle test run run console routes migrate load_schema lint lint_fix
default: help

help: ## Display help.
	@echo "Usage:"
	@echo "  make <target>"
	@echo ""
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-15s %s\n", $$1, $$2}'

bundle: ## Check or install gems
	bundle check || bundle install

test: bundle ## Run test
	bundle exec rspec $(params)

run: bundle ## Start application
	bundle exec puma -C config/puma.rb -b tcp://0.0.0.0:3000 --pidfile /tmp/puma.pid

run-worker: bundle ## Start application worker
	bundle exec sidekiq -C config/sidekiq.yml

console: bundle ## Open Rails console
	bundle exec rails c

routes: bundle ## Show application routes
	bundle exec rake routes

migrate: bundle ## Run DB migrations
	bundle exec rake db:migrate

load_schema: bundle ## Run DB Seeds
	bundle exec rake db:schema:load db:migrate

lint: bundle ## Qonto Standard linter
	bundle exec rubocop --parallel

lint_fix: bundle ## Qonto Standard Linter (Fix issues)
	bundle exec rubocop -A