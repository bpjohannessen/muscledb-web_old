$(document).ready(function () {

    $("table#muskel").hide();

    function search(query_value) {
        //var query_value = $('input#searchterm').val();
        $.getJSON("api/muscles", { searchterm: query_value }, function (json) {

            var $table = $("tbody#tbodyappend");
            $.each(json, function (idx, muscleitem) {
                //$table.append("<tr><td>"+ idx +"</td><td>"+ muscleitem.id +"</td><td><a href='#/muscle/"+ muscleitem.id +"'>"+ muscleitem.name +"</a></td><td>"+ muscleitem.functio +"</td></tr>");
                $table.append("<tr><td id='hoverski'>" + muscleitem.name + "</td></tr>");
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
            // If search_string is empty, ie, if you delete the text in input#searchterm after a search, table#muskel will fade and disappear
            $("table#muskel").fadeOut();
            $('input#searchterm').fadeOut(); // Fix duplicates
        } else {
            $("table#muskel").show();
            $(this).data('timer', setTimeout(search(search_string), 100));
        };
    });
});