import models
import db
from bottle import get, post, request
from bottle import template, static_file
from bottle import run

@get('/static/<file_path:path>')
def static(file_path):
    return static_file(file_path, root='./views/static')

@get('/')
@get('/index.html')
def index():
    return template('index')

@get('/search')
def search():
    q = request.params.q
    dao = db.FlowerDAO()
    flowers = dao.get_flowers_by_name(q)
    return template('list', flowers=flowers)

@get('/flower/<id>')
def get_flower(id):
    dao = db.FlowerDAO()
    flower = dao.get_flower(id)
    return template('material', flower=flower)

run(host='localhost', port=8080, debug=True)
