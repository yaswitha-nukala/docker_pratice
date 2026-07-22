from ubuntu:latest
workdir /app
COPY calculator.py /app/
run apt-get update && apt-get install -y python3 python3-pip
cmd ["python3","calculator.py"]0