# .PHONY: build test push

REPO=neiromc/airflow
TAG=2.2.5-python3.9-openai.whisper
IMAGE=$(REPO):$(TAG)

build :	
	docker build . -f Dockerfile $(IMAGE)

test :
	docker run -it --rm --name whisper $(IMAGE) python -c "import whisper; print (whisper.__version__)"

push :
	docker push $(IMAGE)