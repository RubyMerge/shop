$(document).ready(function() {
    $('#count-order').on('keyup mouseup', function () {
        var value = $(this).val();
        $.ajax({
            url: '/orders/cost_calculation/',
            type: 'post',
            data: {value: value},
            success: function (result) {
                $('#show-cost').html(`<h2>${result}</h2>`);
            }
        });
    });
});