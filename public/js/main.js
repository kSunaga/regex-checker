$(function () {

    $('input[name="option_checkbox"]').change(function () {

        var id = $('#option_checkbox').prop('checked');

        if (id) {
            $('#input_option').show();
        } else {
            $('#input_option').hide();
        }
    })
    
    $('input[name="replased"]').change(function () {

        var id = $('#replased').prop('checked');

        if (id) {
            $('.input_replased').show();
        } else {
            $('.input_replased').hide();
        }
    })

    $
});