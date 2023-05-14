from config.db import db, app, ma
from flask import Blueprint, Flask,  redirect, request, jsonify, json, session, render_template
from Model.Usuarios import Users
routes_index = Blueprint("routes_index", __name__)


@routes_index.route('/indexIndex', methods=['GET'] )
def indexdIndex():
    
    return render_template('/main/index.html')

# @routes_index.route('/saveregistro', methods=['POST'] )
# def saveregistro():
#     print("patilla")
#     nombre = request.form['nombre']
#     correo = request.form['correo']
#     password = request.form['password']
#     new_registro = Users(nombre, correo, password)
#     db.session.add(new_registro)
#     db.session.commit()
#     return render_template('/main/homeodontologo.html') 