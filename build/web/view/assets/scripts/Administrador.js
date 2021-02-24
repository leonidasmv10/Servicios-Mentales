$(document).ready(function () {

    const instancia = new Administrador();
    $('#btnIngresar').click(function (e) {
        e.preventDefault();

        let adm = new Administrador();
        instancia.iniciarSesion();
        console.log(adm.get());
        //alert(adm.get());
        //$('#userID').val(adm.get().usuario);

        //$('#prueba').html("hola pro " + adm.get().usuario);
        //alert("pera p");

    });
});


class Administrador
{
    administrador = "";

    constructor()
    {
        if (Administrador.instance instanceof Administrador)
        {
            return Administrador.instance;
        }
        Object.freeze(this);
        Administrador.instance = this;
    }

    iniciarSesion() {

        var usuario = $("#usuario").val();
        var password = $("#password").val();

        $.ajax({
            url: 'http://localhost:8080/Servicios_Mentales/LoginAdministrador',
            data: {
                usuario: usuario,
                password: password
            },
            method: 'POST',
            async: false,
            success: function (data) {

                if (data == "NULL") {
                    window.location = "http://localhost:8080/Servicios_Mentales/view/Administrador/Login.jsp";
                } else {
                    this.administrador = JSON.parse(data);
                    //console.log(this.administrador);
                    //alert(Number(administrador.idApoderado));

                    window.location = "http://localhost:8080/Servicios_Mentales/view/Administrador/Home.jsp";

                }
            }
        });

    }

    get() {
        return this.administrador;
    }

}

