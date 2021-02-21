$(document).ready(function () {

    const trabajador = new Trabajador();
    $('#btnIngresar').click(function (e) {
        e.preventDefault();
        trabajador.iniciarSesion();
    });
});


class Trabajador
{
    
    trabajador = "";

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
        


        $.ajax({
            url: 'http://localhost:8080/Servicios_Mentales/LoginTrabajador',
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
                    
                    window.location = "http://localhost:8080/Servicios_Mentales/view/Trabajador/Home.jsp";
                    

                }
            }
        });
        
        alert(get());

    }
    
     get() {
        return this.profesional;
    }

}

