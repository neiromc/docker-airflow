# docker-airflow
Docker image for airflow

## Additional packages:
- openai/whisper


## Manual tests:
```bash
#test whisper
docker run -it --rm --name whisper neiromc/airflow:2.2.5-python3.9-openai.whisper python -c "import whisper; print (whisper.__version__)"
```

## Build:
```bash
#build container
make build

#run tests
make test

#push container
make push
```
