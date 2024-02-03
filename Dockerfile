FROM ubuntu:latest

WORKDIR /app/src

COPY . /app/src

RUN apt-get update && apt-get install python3.11 python3-pip -y && pip install -r requirements.txt

CMD [ "uvicorn" "app:app" "--port 8002" ]