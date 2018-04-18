from flask import Flask, jsonify

justice_league_members = [
    {"superhero": "Aquaman", "real_name": "Arthur Curry"},
    {"superhero": "Batman", "real_name": "Bruce Wayne"},
    {"superhero": "Cyborg", "real_name": "Victor Stone"},
    {"superhero": "Flash", "real_name": "Barry Allen"},
    {"superhero": "Green Lantern", "real_name": "Hal Jordan"},
    {"superhero": "Superman", "real_name": "Clark Kent/Kal-El"},
    {"superhero": "Wonder Woman", "real_name": "Princess Diana"}
]

#################################################
# Flask Setup
#################################################
app = Flask(__name__)


#################################################
# Flask Routes
#################################################

@app.route("/api/v1.0/justice-league")
def justice_league():
    """Return the justice league data as json"""

    return jsonify(justice_league_members)


@app.route("/")
def welcome():
    return (
        f"Welcome to the Justice League API!<br/>"
        f"Available Routes:<br/>"
        f"/api/v1.0/justice-league/superhero/<br/>"
        f"/api/v1.0/justice-league/superhero/Aquaman<br/>"
        f"/api/v1.0/justice-league/superhero/Batman<br/>"
        f"/api/v1.0/justice-league/superhero/Cyborg<br/>"
        f"/api/v1.0/justice-league/superhero/Flash<br/>"
        f"/api/v1.0/justice-league/superhero/Green%20Lantern<br/>"
        f"/api/v1.0/justice-league/superhero/superman<br/>"
        f"/api/v1.0/justice-league/superhero/Wonder%20Women"
    )


"""TODO: Handle API route with variable path to allow getting info
for a specific character based on their 'superhero' name """
@app.route("/api/v1.0/justice-league/superhero/<superhero>")
def justice_league_character(superhero):
    """Fetch the Justice League character whose superhero matches
       the path variable supplied by the user, or a 404 if not."""
       
    canonicalized = superhero.replace(" ", "").lower()
    for character in justice_league_members:
        search_term = character["superhero"].replace(" ", "").lower()

        if search_term == canonicalized:
            return jsonify(character)

    return jsonify({"error": f"real_name with superhero name {superhero} not found."}), 404


if __name__ == "__main__":
    app.run(debug=True)
