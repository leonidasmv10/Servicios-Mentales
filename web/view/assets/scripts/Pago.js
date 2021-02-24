$(document).ready(function () {

    pago = new Pago();

    $('#buttonAdd').click(function (e) {
        e.preventDefault();

        pago.guardar();

    });


});


var Pago = function () {

    return {

        guardar: function () {


            $.ajax({
                url: 'http://localhost:8080/Servicios_Mentales/RegistrarPagoApoderado',
                 data: {
                    imagen: $("#idImagen").val()
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
