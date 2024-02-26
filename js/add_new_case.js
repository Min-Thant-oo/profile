$('#traveled_country').change(function () {
    if ($('#traveled_country').val() == 'true') {
        $('.traveled_country_name_group').removeClass('d-none');
    } else {
        $('.traveled_country_name_group').addClass('d-none');
    }
})
function preview_images()
{
    var total_file=document.getElementById("images").files.length;
    for(var i=0;i<total_file;i++)
    {
        $('#image_preview').append("<div class='col-md-6'><img class='img-fluid' src='"+URL.createObjectURL(event.target.files[i])+"'></div>");
    }
}