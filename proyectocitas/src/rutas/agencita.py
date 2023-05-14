from config.db import db, app, ma
from flask import Blueprint, Flask,  redirect, request, jsonify, json, session, render_template

routes_agencitas = Blueprint("routes_agencitas", __name__)


@routes_agencitas.route('/indexagendarcitas', methods=['GET'] )
def indexhom():
    return render_template('/main/agendarcitas.html')

@routes_agencitas.route('/indexconsultarcitas', methods=['GET'] )
def indexhome():
    return render_template('/main/consultarcitas.html')

