#@author Filip Oščádal <git@gscloud.cz>
all: info

info:
	@echo "\e[1;32m👾 Welcome to Go Experiments 👾\n"

	@echo "🆘 \e[0;1mmake build\e[0m - build test app (Docker)"
	@echo "🆘 \e[0;1mmake docs\e[0m - build documentation (Docker)"
	@echo "🆘 \e[0;1mmake go\e[0m - install Go language (online)"
	@echo "🆘 \e[0;1mmake test\e[0m - test run"

docs:
	@echo "🔨 \e[1;32m Creating documentation\e[0m\n"
	@bash ./bin/create_pdf.sh

build:
	@echo "🔨 \e[1;32m Building image\e[0m\n"
	@bash ./bin/build.sh

go:
	@echo "🔨 \e[1;32m Installing Go\e[0m\n"
	@sudo bash ./bin/go.sh

test:
	@echo "🔨 \e[1;32m Testing\e[0m\n"
	go run hello.go
	go build hello.go
	./hello
