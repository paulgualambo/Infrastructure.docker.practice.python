#jsonify convierte un objeto aun json
from flask import Flask, jsonify
import os

#aplicacion de servidor
app = Flask(__name__)

from products import products

@app.route('/ping')
def ping():
    return jsonify({"message" : "prueba de ping"})

@app.route('/products', methods=['GET'])
def GetProducts():
    return jsonify(products)

@app.route('/products/<string:product_name>', methods=['GET'])
def GetProduct(product_name):
    productsFound = [product for product in products if product['name'] == product_name]
    return jsonify(productsFound)

#si este archivo se ejecuta como archivo principal
if __name__ == '__main__':
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT",5000)))