from flask import Flask, Blueprint,  redirect, request, jsonify, json, session, render_template
from common.Toke import *
from config.db import db, app, ma

from Model.Historial_clinico import Historial,  HistorialesSchema

routes_historial = Blueprint("routes_historial", __name__)

Historial_schema = HistorialesSchema()
Historiales_Schema = HistorialesSchema(many=True)

#Datos de la tabla citas
@routes_historial.route('/Historial', methods=['GET'])
def obtenerhistorial():    
    returnall = Historial.query.all()
    result_Historial = Historiales_Schema.dump(returnall)
    return jsonify(result_Historial)

@routes_historial.route('/eliminarhistorial/<id>', methods=['GET'] )
def eliminarhistorial(id):
    historial = Historial.query.get(id)
    db.session.delete(historial)
    db.session.commit()
    return jsonify(Historial_schema.dump(historial))

@routes_historial.route('/actualizarhistorial', methods=['POST'] )
def actualizarhistorial():
    id = request.json['id']
    paciente = request.json['id_paciente']
    tratamiento = request.json['id_tratamiento']
    medicamentos = request.json['medicamentos']
    diagnostico = request.json['diagnostico']
    fecha_creacion = request.json['fecha_creacion']
    rhistorial = Historial.query.get(id)
    rhistorial.paciente = paciente
    rhistorial.tratamiento = tratamiento
    rhistorial.medicamentos = medicamentos
    rhistorial.diagnostico = diagnostico
    rhistorial.fecha_creacion = fecha_creacion
    db.session.commit()
    return redirect('/Historial')

@routes_historial.route('/savehistorial', methods=['POST'] )
def guardar_historial():
    historial = request.json['id_paciente', 'id_odontologo', 'fecha', 'hora', 'nota']
    new_historial = Historial(historial)
    db.session.add(new_historial)
    db.session.commit()
    return redirect('/Historial')