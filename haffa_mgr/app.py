from flask import Flask

app = Flask(__name__)

@app.route("/")
def inded():
    return "<h1>HAFFA Flask App</h1>"

if __name__ == '__main__':
    app.run(host="0.0.0.0")

