from flask import Flask
import socket


app = Flask(__name__)

@app.route("/")
def hello():
    html = """
    <h1>Hello world</h1>
    <b>Hostname</b>: {hostname}
    """
    return html.format(
        hostname=socket.gethostname()
    )


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)