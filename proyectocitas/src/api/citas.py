from flask import Flask, Blueprint,  redirect, request, jsonify, json, session, render_template
from common.Toke import *
from config.db import db, app, ma

from Model.citas import citas, citasSchema

routes_citas = Blueprint("routes_citas", __name__)

cita_schema = citasSchema()
citas_Schema = citasSchema(many=True)

#Datos de la tabla citas
@routes_citas.route('/citas', methods=['GET'])
def obtenercitas():    
    returnall = citas.query.all()
    result_citas = citas_Schema.dump(returnall)
    return jsonify(result_citas)

@routes_citas.route('/eliminarcitas/<id>', methods=['GET'] )
def eliminarcitas(id):
    cita = citas.query.get(id)
    db.session.delete(cita)
    db.session.commit()
    return jsonify(cita_schema.dump(cita))

@routes_citas.route('/actualizarcitas', methods=['POST'] )
def actualizarcitas():
    id = request.json['id_cita']
    odontologo = request.json['id_odontologo']
    fecha = request.json['fecha']
    hora = request.json['hora']
    rcitas = citas.query.get(id)
    rcitas.odontologo = odontologo
    rcitas.fecha = fecha
    rcitas.hora = hora
    db.session.commit()
    return redirect('/citas')

@routes_citas.route('/savecitas', methods=['POST'] )
def guardar_citas():
    xcitas = request.json['id_paciente', 'id_odontologo', 'fecha', 'hora', 'nota']
    new_cita = citas(xcitas)
    db.session.add(new_cita)
    db.session.commit()
    return redirect('/citas')