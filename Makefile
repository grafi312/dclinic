REPOSITORY_FULL_NAME="676704612042.dkr.ecr.eu-central-1.amazonaws.com/dclinic"
DEFAULT_IMAGE_TAG="latest"

gradle-build:
	./gradlew bootJar --no-daemon

docker-image-build:
    ifneq ($(TAG),)
		docker build -t $(REPOSITORY_FULL_NAME):$(TAG) ./
    else
	    echo "No tag specified.\nWill be used default tag - latest\n" && \
	    	docker build -t $(REPOSITORY_FULL_NAME):$(DEFAULT_IMAGE_TAG) ./
    endif

docker-image-push:
    ifneq ($(TAG),)
	    docker push $(REPOSITORY_FULL_NAME):$(TAG)
    else
	    echo "No tag specified.\nWill be used default tag - latest\n" && \
	    	docker push $(REPOSITORY_FULL_NAME):$(DEFAULT_IMAGE_TAG)
    endif
