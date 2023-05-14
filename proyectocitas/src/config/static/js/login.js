function registrar() {
    const nombre = document.getElementById("logname").value;
    const email = document.getElementById("logemail1").value;
    const pass = document.getElementById("logpass1").value;
    const rol = document.getElementById("rol").value;
    let idrol = 0;
    console.log(nombre, email, pass, rol);
    if (nombre === "" && email === "" && pass === "" && rol === "...") {
        Swal.fire({
            title: 'Hay campos vacios!',
            text: 'Por favor complete todos los campos.',
            imageUrl: 'https://www.latercera.com/resizer/sb91NqJC0m16VtB4cjbZvQxIEmc=/900x600/smart/arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/YPG2SOLGAJBDBHO5PRJA75IEGI.jpg',
            imageWidth: 400,
            imageHeight: 200,
            imageAlt: 'Custom image',
        })
    } else {
        Swal.fire({
            icon: 'success',
            title: 'Sus datos han sido guardados con exito',
            text: 'Disfrute su estancia'

        })
        if (rol == "Secretaria") {
            idrol = 1
        } else if (rol == "Odontologo") {
            idrol = 2
        } else if (rol == "Paciente") {
            idrol = 3
        } else {
            Swal.fire({
                title: 'Hay campos vacios!',
                text: 'Debe seleccionar un rol.',
                imageUrl: 'https://www.latercera.com/resizer/sb91NqJC0m16VtB4cjbZvQxIEmc=/900x600/smart/arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/YPG2SOLGAJBDBHO5PRJA75IEGI.jpg',
                imageWidth: 400,
                imageHeight: 200,
                imageAlt: 'Custom image',
            })
        }
        axios
            .post(
                'api/save_registro', {
                nombre: nombre,
                correo: email,
                password: pass,
                id_roles: idrol,
            }, {
                headers: {
                    "Content-Type": "multipart/form-data",
                },
            }
            )
            .then((res) => {
                console.log(res.data);
            })
            .catch((err) => {
                console.log(err);
            });
    }

    document.getElementById("miform").reset();
}

function login() {
    const correo = document.getElementById('logemail').value;
    const pass = document.getElementById('logpass').value;
    axios.post('/login', {
        correo: correo,
        password: pass
    })
        .then(function (response) {
            // Si el inicio de sesión es exitoso, redirige al usuario a la vista correspondiente en función de su rol
            if (response.data.rol === "Secretaria") {
                window.location.href = '/fronted/indexsecretaria';
            } else if (response.data.rol === "Odontologo") {
                window.location.href = '/fronted/indexodontologo';
            } else if (response.data.rol === "Paciente") {
                window.location.href = '/fronted/indexpaciente';
            } else {
                window.location.href = '/';
            }
        })
        .catch(function (error) {
            console.log(error);
        });
}

function aaa(){
    const fechaini=document.getElementById("fechaini").value;
    const fechafin=document.getElementById("fechafin").value;
    const correo=document.getElementById("logemail").value;
    
    }
    
    $(function() {
        $('[data-toggle="tooltip1"]').tooltip1({ trigger: 'manual' }).tooltip1('show');
    });
    