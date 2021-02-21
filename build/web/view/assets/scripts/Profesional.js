$(document).ready(function () {

    const profesional = new Profesional();
    $('#btnIngresar').click(function (e) {
        e.preventDefault();
        profesional.iniciarSesion();
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
        var profesional;


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
    
     get() {
        return this.profesional;
    }

}

