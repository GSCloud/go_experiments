all: info

info:
	@echo "\e[1;32m👾 Welcome to Go Experiments 👾\n"

	@echo "🆘 \e[0;1mmake docs\e[0m - build documentation (Docker)"
	@echo "🆘 \e[0;1mmake go\e[0m - install Go language (online)"
	@echo "🆘 \e[0;1mmake test\e[0m - test run"

docs:
	@bash ./bin/create_pdf.sh

go:
	@sudo bash ./bin/go.sh

test:
	go run hello.go
	go build hello.go
