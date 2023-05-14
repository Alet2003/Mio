from common.Toke import *
from config.db import db, app, ma
from flask import (
    Flask,
    Blueprint,
    redirect,
    request,
    jsonify,
    json,
    session,
    render_template,
)
from Model.Usuarios import Users, UsuariosSchema
from Model.RolesUsuario import RolesUsuarios
from Model.Odontogramas import Odon

routes_user = Blueprint("routes_user", __name__)

# usuario
Usuario_Schema = UsuariosSchema()
Usuarios_Schema = UsuariosSchema(many=True)


@routes_user.route("/")
def index():
    return "index usuario"


routes_user.route("/Usuarios", methods=["GET"])


def usuarios():
    returnall = Users.query.all()
    resultado_usuarios = Usuarios_Schema.dump(returnall)
    return jsonify(resultado_usuarios)


# crud de usuarios
@routes_user.route("/eliminar_Users/<id>", methods=["GET"])
def eliminar_users(id):
    id_user = Users.query.get(id)
    db.session.delete(id_user)
    db.session.commit()
    return jsonify(UsuariosSchema.dump(id_user))


@routes_user.route("/actualizarUsers", methods=["POST"])
def actualizar_users():
    id = request.json["id"]
    nombre = request.json["nombre"]
    fecha_nacimiento = request.json["fecha_nacimiento"]
    correo = request.json["correo"]
    password = request.json["password"]
    telefono = request.json["telefono"]
    direccion = request.json["direccion"]
    fecha_registro = request.json["fecha_registro"]
    fecha_actualizacion = request.json["fecha_actualizacion"]
    users = Users.query.get(id)
    users.nombre = nombre
    users.fecha_nacimiento = fecha_nacimiento
    users.correo = correo
    users.telefono = telefono
    users.password = password
    users.direccion = direccion
    users.fecha_registro = fecha_registro
    users.fecha_actualizacion = fecha_actualizacion
    db.session.commit()
    return redirect("/Usuarios")


@routes_user.route("/save_Users", methods=["POST"])
def guardar_Users():
    usuarios = request.json[
        "id, nombre, fecha_nacimiento, correo, password, telefono, direccion,fecha_registro, fecha_actualizacion,id_roles"
    ]
    print(usuarios)
    new_Users = Users(usuarios)
    db.session.add(new_Users)
    db.session.commit()
    return redirect("/Usuarios")


@routes_user.route("/save_registro", methods=["POST"])
def registrar():
    print("patilla")
    nombre = request.form["nombre"]
    correo = request.form["correo"]
    password = request.form["password"]
    id_roles = request.form["id_roles"]
    print(nombre, correo, password)
    new_registro = Users("", nombre, "", correo, password, "", "", "", id_roles)

    db.session.add(new_registro)
    db.session.commit()

    return ""


@app.route("/login", methods=["POST"])
def login():
    print("SEÑOORRRR")
    dct = request.json
    correo = request.json["correo"]
    password = request.json["password"]
    print(dct, correo, password)
    resultado = (
        db.session.query(Users, RolesUsuarios)
        .filter(
            Users.correo == correo,
            Users.password == password,
            Users.id_roles == RolesUsuarios.id,
        )
        .first()
    )

    # Busca el usuario en la base de datos
    if not resultado:
        return "a" #jsonify({"": ""+})

    # Si el inicio de sesión es exitoso, redirige al usuario a la vista correspondiente en función de su id_roles
    if resultado.RolesUsuarios.roles == "Secretaria":
        return jsonify({"rol": "Secretaria"})
        # return redirect("/fronted/indexagendarcitas")
    elif resultado.RolesUsuarios.roles == "Odontologo":
        return jsonify({"rol": "Odontologo"})
        # return redirect("/main/homeodontologo.html")
    elif resultado.RolesUsuarios.roles == "Paciente":
        return jsonify({"rol": "Paciente"})
        # return redirect("/main/homepaciente.html")

# @app.route("/estadisticas", methods=["POST"])
# def esta():
#     datos={}
# stats=[]

# # Bucle para cada semana
# for i in range(4):
#     # Filtrar los pacientes atendidos en la semana correspondiente
#     correo =correo
#     fecha_inicio = fechaini[i]
#     fecha_fin = fechafinal[i]
#     pacientes = Users.query.join(Odon).filter(Odon.fecha_consulta.between(fecha_inicio, fecha_fin)).filter(Users.correo==correo).all()
#     num_pacientes = len(pacientes)
    
#     # Calcular el porcentaje correspondiente
#     porcentaje = round((num_pacientes / 10) * 100)
    
#     # Añadir los valores a la lista de estadísticas
#     stats.append({'semana': f'Semana {i+1}', 'pacientes_atendidos': num_pacientes, 'porcentaje': porcentaje}) 

# # Imprimir las estadísticas
# for stat in stats:
#     print(f"{stat['semana']}: {stat['pacientes_atendidos']} pacientes atendidos ({stat['porcentaje']}%)")