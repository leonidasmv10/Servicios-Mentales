$(document).ready(function () {

    var trabajador = new Trabajador();
    $('#btnIngresar').click(function (e) {
        e.preventDefault();

        var jsonTrabajador = trabajador.iniciarSesion();


        console.log(objTrabajador);
        alert("ruta es: ");
    });

    $('#buttonAdd').click(function (e) {
        e.preventDefault();
        trabajador.guardar();

    });


});


class Trabajador
{

    constructor()
    {

        if (Trabajador.instance instanceof Trabajador)
        {
            return Trabajador.instance;
        }
        Object.freeze(this);
        Trabajador.instance = this;
    }

    iniciarSesion() {

        var usuario = $("#usuario").val();
        var password = $("#password").val();

        var trabajador;



        $.ajax({
            url: 'http://localhost:8080/Servicios_Mentales/LoginTrabajador',
            data: {
                usuario: usuario,
                password: password
            },
            method: 'POST',
            dataType: "json",
            async: false,
            success: function (data) {

                if (data == "NULL") {
                    window.location = "http://localhost:8080/Servicios_Mentales/index.jsp";
                } else {

                    //console.log(data);
                    trabajador = data;
                    //console.log(trabajador);
                    window.location = "http://localhost:8080/Servicios_Mentales/view/Trabajador/Home.jsp";
                    $('#idUserTrabajador').html('Hooola ' + trabajador.nombres);
                }
            }
        });



        return trabajador;

    }

    guardar() {



        $.ajax({
            url: 'http://localhost:8080/Servicios_Mentales/RegistrarTrabajador',
            data: {

                nombres: $("#nombres").val(),
                apellidos: $("#apellidos").val(),
                dni: $("#dni").val(),
                sexo: $("#sexo").val(),
                fechaNac: $("#fechaNac").val(),
                direccion: $("#direccion").val(),

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

