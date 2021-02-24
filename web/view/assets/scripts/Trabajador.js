$(document).ready(function () {

    trabajador = new Trabajador();

    trabajador.listarPagos();

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

    listarPagos()
    {
        $("#table_pago_cajero").DataTable({

            dom: 'Bfrtip',
            buttons: [
                'excel', 'pdf'
            ],
            ajax:
                    {
                        method: "GET",
                        url: "http://localhost:8080/Servicios_Mentales/PagoTrabajador",
                        dataSrc: "datos"
                    },
            columns: [
                {data: "nombres"},
                {data: "apellidos"},
                {data: "dni"},
                {data: "fecha"},
                {data: "horario"},
                {data: "motivo"},
                {data: "estado"},
                {
                    data: "idCita", width: "15%", orderable: false,
                    render: function (d, t, r) {

                        if (r.estado == "Pendiente")
                        {
                            return '<input type="submit" style="background-color: rgb(70, 206, 17); color:black" class="btn btn-success" onclick="trabajador.enviarCitaID(' + d + ',' + r.idPago + ');" value="Verificar Pago">';
                        }
                        return '<input type="submit" style="background-color: rgb(70, 206, 17); color:black" class="btn btn-success" onclick="" value="Ver Boleta">';
                    }
                }
            ],
            "language": {
                "url": "//cdn.datatables.net/plug-ins/1.10.21/i18n/Spanish.json"
            },
        });
    }

    enviarCitaID(idCita, idPago)
    {
        alert("ID CITA ES: " + idCita);

        $.ajax({
            url: 'http://localhost:8080/Servicios_Mentales/EnviarCitaAdministrador',
            data: {
                idCita: idCita,
                idPago: idPago
            },
            method: 'POST',
            success: function (data) {
                //var ap = JSON.parse(data);
                console.log(data);
                alert(data);
            }
        });

        window.location = "http://localhost:8080/Servicios_Mentales/view/Trabajador/VerificarPago.jsp";


    }

}

