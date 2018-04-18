# 1. import Flask
from flask import Flask
import jsonify

# 2. Create an app, being sure to pass __name__
app = Flask(__name__)


# 3. Define what to do when a user hits the index route
@app.route("/")
def home():
    print("Server received request for 'Home' page...")
    return jsonify("Welcome to my API!")


# 4. Define what to do when a user hits the /about route
@app.route("/about")
def about():
    print("Server received request for 'About' page...")
    return "Welcome to my 'About' page!"
    
# 5. Define what to do when a user hits the /contact route
@app.route("/contact")
def contact():
    print("Server received request for 'Contact' page...")
    return "Welcome to contact me at boo@foo.com"


if __name__ == "__main__":
    app.run(debug=True)
