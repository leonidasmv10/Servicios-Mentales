$(document).ready(function () {

    historia = new Historia();


    $('#buttonGuardar').click(function (e) {
        e.preventDefault();

        historia.guardar();


    });


});


var Historia = function () {

    return {

        guardar: function () {


            $.ajax({
                url: 'http://localhost:8080/Servicios_Mentales/RegistrarHistoria',
                data: {
                    motivo: $("#idMotivo").val(),
                    descripcion: $("#idDescripcion").val(),
                    examen: $("#idExamen").val(),
                    diagnostico: $("#idDiagnostico").val(),
                    tratamiento: $("#idTratamiento").val(),
                    observacion: $("#idObservacion").val()                 
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
