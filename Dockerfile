FROM ubuntu:latest
WORKDIR /app
RUN apt -y update && apt -y install curl netcat python3 python3-pip ncat
RUN pip install -U pip
COPY requirements.txt requirements.txt
COPY src/app.py .
RUN pip install -r requirements.txt
CMD ["python3", "app.py"]
