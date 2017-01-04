include utils/*.mk

PROJECT_NAME=flight-deck
DC=docker-compose -p $(PROJECT_NAME)

.PHONY: readme-toc
readme-toc:: ##@Other	Update the Table of Contents in ./README.md
	docker run --rm -v `pwd`:/src quay.io/getpantheon/markdown-toc -i /src/README.md
