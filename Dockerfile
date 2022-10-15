FROM ubuntu:latest
WORKDIR /app
RUN apt -y update && apt -y install curl netcat python3 python3-pip
COPY src/* .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]