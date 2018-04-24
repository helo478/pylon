from flask import Flask
app = Flask(__name__)

print("starting Flask server")

@app.route("/")
def hello():
    return "Hello World!"

app.run('0.0.0.0', 5000);
