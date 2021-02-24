$(document).ready(function () {

    const apoderado = new Apoderado();
    $('#btnIngresar').click(function (e) {
        e.preventDefault();
        apoderado.iniciarSesion();
    });

    $('#registrar').click(function (e) {
        e.preventDefault();
        apoderado.guardar();
       
    });

    $('#idDatosDeAfiliacion').click(function (e) {

        e.preventDefault();

        //$('#Saludo').html("<i>Yordy Leonidas</i>");
        //var id = apoderado.obtenerID();

        var apo = apoderado.obtener();
        //alert("ID PACIENTE: " + apo.idPaciente)
        console.log(apo);

        if (apo.idPaciente == 0)
        {
            window.location = "http://localhost:8080/Servicios_Mentales/view/Apoderado/RegistrarDatosDeAfiliacion.jsp";
        } else
        {

            window.location = "http://localhost:8080/Servicios_Mentales/view/Apoderado/DatosDeAfiliacion.jsp";

        }


    });



});


class Apoderado
{
   
    constructor()
    {
        if (Apoderado.instance instanceof Apoderado)
        {
            return Apoderado.instance;
        }
        Object.freeze(this);
        Apoderado.instance = this;
    }
    iniciarSesion() {

        var usuario = $("#usuario").val();
        var password = $("#password").val();

        $.ajax({
            url: 'http://localhost:8080/Servicios_Mentales/LoginApoderado',
            data: {
                usuario: usuario,
                password: password
            },
            method: 'POST',
            success: function (data) {

                if (data == "NULL") {
                    window.location = "http://localhost:8080/Servicios_Mentales/view/Apoderado/Login.jsp";
                } else {
                  
                    console.log(data);
                    //alert(Number(this.apoderado.idApoderado));
                    window.location = "http://localhost:8080/Servicios_Mentales/view/Apoderado/Home.jsp";

                }
            }
        });

    }


    guardar() {

        var obj = {
            id: $("#hdnIdNombres").val(),
            nombres: $("#nombres").val(),
            apellidos: $("#apellidos").val(),
            usuario: $("#usuario").val(),
            password: $("#password").val()
        };

        $.ajax({
            url: 'http://localhost:8080/Servicios_Mentales/RegistrarApoderado',
            data: {
                apoderado: JSON.stringify(obj)
            },
            method: 'POST',
            success: function (data) {
                var ap = JSON.parse(data);
                console.log(ap);
                 window.location = "http://localhost:8080/Servicios_Mentales/view/Apoderado/Login.jsp";
            }
        });
    }

    obtenerID() {

        let result = "";

        $.ajax({
            url: 'http://localhost:8080/Servicios_Mentales/ObtenerIDApoderado',
            method: 'GET',
            async: false,
            success: function (data) {
                result = data;
            }
        });
        return Number(result);
    }

    obtener()
    {
        let obj;

        $.ajax({
            url: 'http://localhost:8080/Servicios_Mentales/ObtenerApoderado',
            method: 'GET',
            async: false,
            success: function (data) {
                obj = JSON.parse(data);
            }
        });
        return obj;
    }

    modificar()
    {

    }

}

