from ubuntu :latest
workdir /app
copy ./app
run apt-get update && apt-get istall -y python3 python3-pip
cmd ["python3","calculator.py"]