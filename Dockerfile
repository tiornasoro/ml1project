FROM python:3.10-slim-buster
WORKDIR /app
COPY . /app
RUN apt update -y && apt install awscli -y

RUN pip install -r requirements.txt
CMD ["python3","app.py"]

#RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y && pip install -r requirements.txt
