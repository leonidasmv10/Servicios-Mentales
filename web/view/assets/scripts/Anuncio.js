$(document).ready(function () {
    anuncio = new Anuncio();
    anuncio.listar();
    anuncio.listar_novedad_admin();
    anuncio.listar_anuncio_admin();

    $('#buttonModificar').click(function (e) {

        alert("Terminando");
        e.preventDefault();
        anuncio.modificarAnuncio();

    });


});
var Anuncio = function () {

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
                            url: "http://localhost:8080/Servicios_Mentales/HomeApoderado",
                            dataSrc: "datos"
                        },
                columns: [
                    {data: "titulo"},
                    {data: "descripcion"},
                    {
                        data: "idAnuncio", width: "15%", orderable: false,
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

        listar_novedad_admin: function () {
            $("#table_novedad_admin").DataTable({

                dom: 'Bfrtip',
                buttons: [
                    'excel', 'pdf'
                ],
                ajax:
                        {
                            method: "GET",
                            url: "http://localhost:8080/Servicios_Mentales/NovedadAdministrador",
                            dataSrc: "datos"
                        },
                columns: [
                    {data: "titulo"},
                    {data: "descripcion"},
                    {
                        data: "idAnuncio", width: "15%", orderable: false,
                        render: function (d, t, r) {
                            return '<input type="submit" style="background-color: rgb(70, 206, 17); color:black" class="btn btn-success" onclick="anuncio.cargarModal(0)" value="Editar">';
                        }
                    }
                ],
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.21/i18n/Spanish.json"
                },
            });
        },

        listar_anuncio_admin: function () {
            $("#table_anuncio_admin").DataTable({

                dom: 'Bfrtip',
                buttons: [
                    'excel', 'pdf'
                ],
                ajax:
                        {
                            method: "GET",
                            url: "http://localhost:8080/Servicios_Mentales/AnunciosAdministrador",
                            dataSrc: "datos"
                        },
                columns: [
                    {data: "titulo"},
                    {data: "descripcion"},
                    {
                        data: "idAnuncio", width: "15%", orderable: false,
                        render: function (d, t, r) {
                            return '<input type="submit" style="background-color: rgb(70, 206, 17); color:black" class="btn btn-success" onclick="anuncio.enviarAnuncioID(' + d + ')" value="Editar">';
                        }
                    }
                ],
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.21/i18n/Spanish.json"
                },
            });
        },

        mostrarAnuncio: function (idAnuncio) {

        },

        enviarAnuncioID: function (idAnuncio) {


            alert("ID ANUNCIO: " + idAnuncio);

            $.ajax({
                url: 'http://localhost:8080/Servicios_Mentales/EnviarAnuncioAdministrador',
                data: {
                    idAnuncio: idAnuncio,
                },
                method: 'POST',
                success: function (data) {
                    //var ap = JSON.parse(data);
                    console.log(data);
                    alert(data);
                }
            });

            window.location = "http://localhost:8080/Servicios_Mentales/view/Administrador/ModificarAnuncio.jsp";

        },

        modificarAnuncio: function () {

            $.ajax({
                url: 'http://localhost:8080/Servicios_Mentales/ModificarAnuncio',
                data: {
                    titulo: $("#tituloID").val(),
                    estado: $("#estadoID").val(),
                    descripcion: $("#descripcionID").val()

                },
                method: 'POST',
                success: function (data) {
                    //var ap = JSON.parse(data);
                    console.log(data);
                    alert(data);
                }
            });



        },

    }
}
