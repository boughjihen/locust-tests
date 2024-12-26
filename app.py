from flask import Flask, jsonify, request

app = Flask(__name__)

# Route d'accueil
@app.route('/')
def hello_world():
    return 'Hello, World!'

# Une route pour obtenir un utilisateur
@app.route('/user/<int:id>', methods=['GET'])
def get_user(id):
    # Simule une base de données avec un dictionnaire
    users = {
        1: {"name": "John Doe", "age": 30},
        2: {"name": "Jane Smith", "age": 25},
    }
    user = users.get(id)
    if user:
        return jsonify(user)
    else:
        return jsonify({"message": "User not found"}), 404

# Une route pour créer un utilisateur
@app.route('/user', methods=['POST'])
def create_user():
    data = request.get_json()
    if 'name' in data and 'age' in data:
        return jsonify({"message": "User created", "user": data}), 201
    return jsonify({"message": "Missing data"}), 400

if __name__ == '__main__':
    app.run(debug=True)

