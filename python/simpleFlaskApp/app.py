from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"


if __name__ == '__main__':
    print("Hello Console")
    i = 10
    while i > 0:
        print(f"Item {i}")
        i -= 1
