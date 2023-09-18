FROM apache/airflow:2.2.5-python3.9
LABEL maintainer="neiromc@gmail.com"

USER root
RUN apt update && apt install -y \
  git \
  ffmpeg \
  && rm -rf /var/cache/apt/archives /var/lib/apt/lists/* && apt clean

USER airflow
WORKDIR /opt/airflow

#RUN /usr/local/bin/python -m pip install --upgrade pip \ 
RUN pip install -U git+https://github.com/openai/whisper.git

