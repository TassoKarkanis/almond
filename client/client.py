from flask import Flask, request
app = Flask(__name__)

@app.route("/")
def top():
    msg = "<html>"
    msg += "Hello, world!"
    msg += "<br>"
    msg += "<table>"
    for k in request.headers.keys():
        msg += "<tr><td>" + k + "</td><td>" + request.headers[k] + "</td></tr>"

    msg += "</table></html>"
    return msg

app.run(host="0.0.0.0", port=80)

