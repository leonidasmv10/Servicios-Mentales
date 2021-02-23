$(document).ready(function () {

    const profesional = new Profesional();
    $('#btnIngresar').click(function (e) {
        e.preventDefault();
        profesional.iniciarSesion();
    });
    
     $('#buttonAdd').click(function (e) {
        e.preventDefault();
        profesional.guardar();
    });
    
});


class Profesional
{

    profesional = "";

    constructor()
    {
        if (Profesional.instance instanceof Profesional)
        {
            return Profesional.instance;
        }
        Object.freeze(this);
        Profesional.instance = this;
    }

    iniciarSesion() {

        var usuario = $("#usuario").val();
        var password = $("#password").val();


        $.ajax({
            url: 'http://localhost:8080/Servicios_Mentales/LoginProfesional',
            data: {
                usuario: usuario,
                password: password
            },
            method: 'POST',
            success: function (data) {

                if (data == "NULL") {
                    window.location = "http://localhost:8080/Servicios_Mentales/index.jsp";
                } else {
                    this.profesional = JSON.parse(data);
                    console.log(this.profesional);
                    //alert(Number(administrador.idApoderado));

                    window.location = "http://localhost:8080/Servicios_Mentales/view/Profesional/Home.jsp";


                }
            }
        });

    }

    guardar() {



        $.ajax({
            url: 'http://localhost:8080/Servicios_Mentales/RegistrarProfesional',
            data: {
                
                nombres: $("#nombres").val(),
                apellidos: $("#apellidos").val(),
                dni: $("#dni").val(),
                sexo: $("#sexo").val(),
                fechaNac: $("#fechaNac").val(),
                direccion: $("#direccion").val(),
                cmp: $("#cmp").val(),
                celular: $("#celularPersonal").val(),
                correo: $("#correo").val(),
                estado: $("#estado").val(),
                usuario: $("#usuario").val(),
                password: $("#password").val()
            },
            method: 'POST',
            success: function (data) {
                //var ap = JSON.parse(data);
                console.log(data);
                alert(data);
            }
        });
    }

}

