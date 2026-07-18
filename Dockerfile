from ubuntu:latest
workdir /test
copy . /test
run apt-get update && apt-get install -y pthon3 python3-pip
cmd["python3","test.py"]