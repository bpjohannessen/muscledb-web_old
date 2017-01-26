$(document).ready(function () {

    function search() {
        var query_value = $('input#searchterm').val();
        $.getJSON("api/muscles", {searchterm : query_value}, function(json){
            alert(json);
        });
    }


    $(document).on("keyup", "#searchterm", function (e) {
        // Set Timeout
        clearTimeout($.data(this, 'timer'));

        // Set Search String
        var search_string = $(this).val();

        // Do Search
        if (search_string == '') {
            $("ul#results").fadeOut();
            $('h4#results-text').fadeOut();
        } else {
            $("ul#results").fadeIn();
            $('h4#results-text').fadeIn();
            $(this).data('timer', setTimeout(search, 100));
        };
    });
});