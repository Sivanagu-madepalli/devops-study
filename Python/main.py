from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/")
def index():
  return render_template("index.html")

@app.route("/calculate")
def calculate():
  income = float(request.args.get("income"))
  expenses = float(request.args.get("expenses"))
  result = income - expenses
  return render_template("result.html", result=result)

if __name__ == "__main__":
  app.run()