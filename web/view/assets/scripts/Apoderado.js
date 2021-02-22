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
        alert("ID PACIENTE: " + apo.idPaciente)
        console.log(apo);

        if (apo.idPaciente == 0)
        {
            window.location = "http://localhost:8080/Servicios_Mentales/view/Apoderado/RegistrarDatosDeAfiliacion.jsp";
        }else
        {
           
            window.location = "http://localhost:8080/Servicios_Mentales/view/Apoderado/DatosDeAfiliacion.jsp";
           
        }


    });

    
    
});


class Apoderado
{
    apoderado = "";
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
                    window.location = "http://localhost:8080/Servicios_Mentales/index.jsp";
                } else {
                    this.apoderado = JSON.parse(data);
                    console.log(this.apoderado);
                    alert(Number(this.apoderado.idApoderado));
                    window.location = "http://localhost:8080/Servicios_Mentales/view/Apoderado/Home.jsp";

                }
            }
        });

    }

    get() {
        return this.apoderado;
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
                alert(ap);
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

