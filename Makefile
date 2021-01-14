.PHONY: all
all: test

.PHONY: test
test:
	echo "$EXAMPLE_SECRET"
	@echo 'all tests passed!'
