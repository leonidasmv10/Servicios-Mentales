$(document).ready(function () {

    cita = new Cita();
    cita.listar();
});
var Cita = function () {

    return {

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

    }
}
