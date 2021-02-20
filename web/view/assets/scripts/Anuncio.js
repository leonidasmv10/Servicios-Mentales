$(document).ready(function () {

    anuncio = new Anuncio();
    anuncio.listar();
});
var Anuncio = function () {

    return {

        listar: function () {
            $("#example").DataTable({

                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ],
                ajax:
                        {
                            method: "GET",
                            url: "http://localhost:8080/Servicios_Mentales/HomeApoderado",
                            dataSrc: "datos"
                        },
                columns: [
                    {data: "titulo"},
                    {data: "descripcion"}
                ],
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.21/i18n/Spanish.json"
                },
            });
        },
    }
}
