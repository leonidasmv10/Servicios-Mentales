$(document).ready(function () {

    var trabajador = new Trabajador();
    $('#btnIngresar').click(function (e) {
        e.preventDefault();

        var jsonTrabajador = trabajador.iniciarSesion();
        

        console.log(objTrabajador);
        alert("ruta es: ");
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
                    $('#idUserTrabajador').html('Hooola '+trabajador.nombres);
                }
            }
        });



        return trabajador;

    }

    get() {
        return this.profesional;
    }

}

