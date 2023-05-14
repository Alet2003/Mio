from flask import Flask, Blueprint,  redirect, request, jsonify, json, session, render_template
from common.Toke import *
from config.db import db, app, ma

from Model.Tratamientos import Trata, TratamientosSchema

routes_tratamientos = Blueprint("routes_tratamientos", __name__)

tratamiento_schema = TratamientosSchema()
tratamientos_schema = TratamientosSchema(many=True)

@routes_tratamientos.route('/tratamientos', methods=['GET'])
def obtenertrata():    
    returnall = Trata.query.all()
    result_trata = tratamientos_schema.dump(returnall)
    return jsonify(result_trata)

@routes_tratamientos.route('/eliminartratamientos/<id>', methods=['GET'] )
def eliminartrata(id):
    trata = Trata.query.get(id)
    db.session.delete(trata)
    db.session.commit()
    return jsonify(tratamiento_schema.dump(trata))

@routes_tratamientos.route('/actualizartratamientos', methods=['POST'] )
def actualizartrata():
    nombre = request.json['nombre']
    descripcion = request.json['descripcion']
    duracion = request.json['duracion']
    costo = request.json['costo']
    trata = Trata.query.get(id)
    trata.nombre = nombre
    trata.descripcion = descripcion
    trata.duracion = duracion
    trata.costo = costo
    db.session.commit()
    return redirect('/tratamientos')

@routes_tratamientos.route('/savetratamientos', methods=['POST'] )
def guardar_citas():
    trata = request.json['nombre', 'descripcion', 'duracion', 'costo']
    new_trata = Trata(trata)
    db.session.add(new_trata)
    db.session.commit()
    return redirect('/tratamientos')