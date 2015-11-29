IMAGE = leanlabs/go-bindata-builder
TAG   = 1.0.0

all:
	make -C testdata

build:
	@docker run --rm \
		-v $(CURDIR)/go-bindata:/src \
		leanlabs/golang-builder

build_image:
	@docker build -t $(IMAGE):latest .
	@docker tag $(IMAGE):latest $(IMAGE):$(TAG)

release: build build_image
	@docker push $(IMAGE):latest
	@docker push $(IMAGE):$(TAG)
