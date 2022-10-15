FROM ubuntu:latest
WORKDIR /app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=8888
RUN apt -y update && apt -y install curl netcat python3 python3-pip
COPY src/* .
RUN pip install -r requirements.txt
CMD ["flask", "run"]