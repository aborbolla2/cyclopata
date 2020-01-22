

$(document).ready(function () {
        $("#datos_usuario").show();
        $("#historial_usuario").hide();

});

$(document).on('click','#btn-datos',function () {
        $("#datos_usuario").fadeIn("fast");
        $("#historial_usuario").fadeOut("fast");
});

$(document).on('click','#btn-historial',function () {
        $("#historial_usuario").fadeIn("fast");
        $("#datos_usuario").fadeOut("fast");
});


/*$(document).ready(function(){
        $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#clients_table tr").filter(function() {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
        });

});*/

