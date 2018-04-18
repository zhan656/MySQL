from flask import Flask, jsonify

# @TODO: Create a dictionary of superhero name and real name
# for all 7 members of the justice league.
justice_league_members = [{"Superman":"Clark Kent", "Batman":"Bruce Wayne", 'Wonder Woman':"Princess Diana",
                            'Green Lantern':'Hal Jordan', 'Flash':"Barry Allen", 'Aquaman':'Arthur Curry','Cyborg':'Victor Stone'}]

#################################################
# Flask Setup
# 1. import Flask

# 2. Create an app, being sure to pass __name__
app = Flask(__name__)
#################################################
# @TODO: Initialize your Flask app here
# YOUR CODE GOES HERE
@app.route("/")
def home():
    print("Server received request for 'Home' page...")
    return jsonify("Welcome to my API!")


@app.route("/api/v1.0/justice-league")
def justice_league():
    print("Server received request for 'justice-league-hero' page...")
    return jsonify(justice_league_members)

#################################################
# Flask Routes
#################################################

# @TODO: Complete the routes for your app here
# YOUR CODE GOES HERE

if __name__ == "__main__":
    # @TODO: Create your app.run statement here
    # YOUR CODE GOES HERE
    #raise NotImplementedError()
    app.run(debug=True)
