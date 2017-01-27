$(document).ready(function () {

    function search(query_value) {
        //var query_value = $('input#searchterm').val();
        $.getJSON("api/muscles", { searchterm: query_value }, function (json) {

            var $table = $("tbody#tbodyappend");
            $.each(json, function (idx, muscleitem) {
                $table.append("<tr><td>"+ idx +"</td><td>"+ muscleitem.id +"</td><td><a href='#/muscle/"+ muscleitem.id +"'>"+ muscleitem.name +"</a></td><td>"+ muscleitem.functio +"</td></tr>");
                // Add something $table.FadeOut()?
            });
        });
    }

    // Uncomment the next line to simulate a search without user input
    //search("gluteus");

    $(document).on("keyup", "#searchterm", function (e) {
        // Set Timeout
        clearTimeout($.data(this, 'timer'));

        // Set Search String
        var search_string = $(this).val();

        // Do Search
        if (search_string == '') {
            $("table#muskel").fadeOut();
            $('h4#results-text').fadeOut();
        } else {
            $("table#muskel").fadeIn();
            $('h4#results-text').fadeIn();
            $(this).data('timer', setTimeout(search(search_string), 100));
        };
    });
});