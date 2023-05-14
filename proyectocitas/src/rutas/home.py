from config.db import db, app, ma
from flask import Blueprint, Flask,  redirect, request, jsonify, json, session, render_template

routes_home = Blueprint("routes_home", __name__)


@routes_home.route('/indexpaciente', methods=['GET'] )
def indexhome():
    return render_template('/main/homepaciente.html')

#-----------------------------Agendar citas------------------------------

@routes_home.route('/indexagendarcitas', methods=['GET'] )
def indexagendar():
    return render_template('/main/agendarcitas.html')


@routes_home.route('/indexodontologo', methods=['GET'] )
def indexhomeodon():
    return render_template('/main/homeodontologo.html')

@routes_home.route('/indexsecretaria', methods=['GET'] )
def indexsecretaria():
    return render_template('/main/homesecretaria.html')

@routes_home.route('/indexestadisticas', methods=['GET'] )
def indexestadistica():
    return render_template('/main/estaodon.html')

@routes_home.route('/indexestratamientos', methods=['GET'] )
def indexestratamientos():
    return render_template('/main/tratamientos.html')

@routes_home.route('/indexeactualizar', methods=['GET'] )
def indexdatos():
    return render_template('/main/actualizardatos.html')

@routes_home.route('/indexconsultar', methods=['GET'] )
def indexconsultar():
    return render_template('/main/consultarcitas.html')

@routes_home.route('/indexmisdatos', methods=['GET'] )
def indexmisdatos():
    return render_template('/main/misdatos.html')