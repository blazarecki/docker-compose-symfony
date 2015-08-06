dev:
	docker-compose run --rm tools app/console doc:dat:drop --force && \
	docker-compose run --rm tools app/console doc:dat:cre && \
	docker-compose run --rm tools app/console doc:mig:mig --no-interaction && \
	docker-compose run --rm tools app/console h4:lo:se src/FixturesBundle/FixtureSet/GlobalFixtureSet.php && \
	docker-compose run --rm tools app/console fos:elastica:populate && \
	docker-compose run --rm tools app/console assetic:dump

test:
	docker-compose run --rm tools bin/behat ${ARGS}
