$(document).ready(function () {

    cita = new Cita();
    cita.listar();
    cita.listar_doctor();
    


    $('#submitCita').click(function (e) {
        e.preventDefault();

        cita.guardar();


    });


});


var Cita = function () {

    return {

        guardar: function () {


            $.ajax({
                url: 'http://localhost:8080/Servicios_Mentales/RegistrarCitaApoderado',
                data: {
                    motivo: $("#idMotivo").val(),
                    fecha: $("#idFechaCita").val(),
                    idDoctor: $("#idMedico").val(),
                    horario: $("#idHorario").val(),
                },
                method: 'POST',
                success: function (data) {
                    //var ap = JSON.parse(data);
                    console.log(data);
                    alert(data);
                }
            });


        },

        listar: function () {
            $("#table_main").DataTable({

                dom: 'Bfrtip',
                buttons: [
                    'excel', 'pdf'
                ],
                ajax:
                        {
                            method: "GET",
                            url: "http://localhost:8080/Servicios_Mentales/CitaApoderado",
                            dataSrc: "datos"
                        },
                columns: [
                    {data: "idDoctor"},
                    {data: "fecha"},
                    {data: "horario"},
                    {data: "motivo"},
                    {data: "estado"},
                    {
                        data: "idCita", width: "15%", orderable: false,
                        render: function (d, t, r) {
                            return '<input type="submit" style="background-color: rgb(70, 206, 17); color:black" class="btn btn-success" onclick="anuncio.cargarModal(0)" value="Detalle">';
                        }
                    }
                ],
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.21/i18n/Spanish.json"
                },
            });
        },

        listar_doctor: function () {
            $("#table_doctor").DataTable({

                dom: 'Bfrtip',
                buttons: [
                    'excel', 'pdf'
                ],
                ajax:
                        {
                            method: "GET",
                            url: "http://localhost:8080/Servicios_Mentales/CitaProfesional",
                            dataSrc: "datos"
                        },
                columns: [
                    {data: "idDoctor"},
                    {data: "fecha"},
                    {data: "horario"},
                    {data: "motivo"},
                    {data: "estado"},
                    {
                        data: "idCita", width: "15%", orderable: false,
                        render: function (d, t, r) {

                            if (r.estado == "Reservado")
                            {
                                return '<input type="submit" style="background-color: rgb(70, 206, 17); color:black" class="btn btn-success" onclick="cita.atender(' + d + ')" value="Atender">';
                            }



                            return '<input type="submit" style="background-color: rgb(70, 206, 17); color:black" class="btn btn-success" onclick="anuncio.cargarModal(0)" value="Detalle">';
                        }
                    }
                ],
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.21/i18n/Spanish.json"
                },
            });
        },

        atender: function (idCita) {

            alert("El id de la cita es: " + idCita);

            $.ajax({
                url: 'http://localhost:8080/Servicios_Mentales/AtenderPaciente',
                data: {
                    idCita: idCita,
                },
                method: 'POST',
                success: function (data) {
                    //var ap = JSON.parse(data);
                    console.log(data);
                    alert(data);
                }
            });

            window.location = "http://localhost:8080/Servicios_Mentales/view/Profesional/Atender.jsp";

        }

    }
}
