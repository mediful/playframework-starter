FIG = docker-compose

.PHONY: run
run:
	@$(FIG) up -d
	@$(FIG) exec app bash -i -c "sbt run -testQuick"

.PHONY: stop
stop:
	@$(FIG) stop

.PHONY: init
init:
	@$(FIG) up -d
	@$(FIG) exec app bash -i -c "sbt new playframework/play-scala-seed.g8"
	@$(FIG) stop
