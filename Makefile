all:
	make -C testdata

build:
	@docker run --rm \
		-v $(CURDIR)/go-bindata:/src \
		leanlabs/golang-builder
