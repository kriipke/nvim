# Variables
IMAGE_NAME ?= kriipke/nvim
IMAGE_TAG ?= 0.1.5
PLATFORMS ?= linux/amd64,linux/arm64,linux/arm/v7
BUILDER_NAME ?= mybuilder

# Default target
.DEFAULT_GOAL := help

.PHONY: help
help: ## Show this help message
    @echo "Usage: make [target] [VARIABLE=value]"
    @echo ""
    @echo "Targets:"
    @awk 'BEGIN {FS = ":.*##"; printf "\033[1m%-20s\033[0m %s\n", "Target", "Description"} /^[a-zA-Z_-]+:.*?##/ { printf "\033[1m%-20s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

.PHONY: build
build: ## Build the Docker image
    docker buildx create --name $(BUILDER_NAME) --use
    docker buildx inspect --bootstrap
    docker buildx build --platform $(PLATFORMS) -t $(IMAGE_NAME):$(IMAGE_TAG) . --load

.PHONY: push
push: ## Push the Docker image to the registry
    docker push $(IMAGE_NAME):$(IMAGE_TAG)

.PHONY: clean
clean: ## Clean up Docker builder instances
    docker buildx rm $(BUILDER_NAME)

.PHONY: run
run: ## Run the Docker container
    docker run --rm -it $(IMAGE_NAME):$(IMAGE_TAG)

.PHONY: shell
shell: ## Run the Docker container with a shell
    docker run --rm -it $(IMAGE_NAME):$(IMAGE_TAG) /bin/bash

.PHONY: rebuild
rebuild: clean build ## Clean and rebuild the Docker image

.PHONY: all
all: build push ## Build and push the Docker image
