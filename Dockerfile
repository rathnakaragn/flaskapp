FROM ubuntu:latest
WORKDIR /app
RUN apt -y update && apt -y install curl netcat python3 python3-pip ncat
RUN python3 -m pip install --upgrade pip
COPY requirements.txt requirements.txt
COPY src/app.py .
RUN pip3 install -r requirements.txt
CMD ["python3", "app.py"]
