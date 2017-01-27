$(document).ready(function () {

    $("input#searchterm").focus();

    $("table#muscleResults").hide();

    function search(query_value) {
        //var query_value = $('input#searchterm').val();
        $.getJSON("api/muscles", { searchterm: query_value }, function (json) {

            var $table = $("tbody#tbodyappend");
            $.each(json, function (idx, muscleitem) {
                //$table.append("<tr><td>"+ idx +"</td><td>"+ muscleitem.id +"</td><td><a href='#/muscle/"+ muscleitem.id +"'>"+ muscleitem.name +"</a></td><td>"+ muscleitem.functio +"</td></tr>");
                $table.append("<tr><td id='muscleResultItem'><a href='#" + muscleitem.id + "'><div>" + muscleitem.name + "</div></a></td></tr>");
                // Add something $table.FadeOut()?
            });
        });
    }

    // Uncomment the next line to simulate a search without user input
    //search("flexio");

    $(document).on("keyup", "#searchterm", function (e) {
        // Set Timeout
        clearTimeout($.data(this, 'timer'));

        // Set Search String
        var search_string = $(this).val();

        // Do Search        
        if (search_string == '') {
            // If search_string is empty, ie, if you delete the text in input#searchterm after a search, table#muscleResults will fade and disappear
            $("table#muscleResults").fadeOut();
            //$('input#searchterm').fadeOut(); // Fix duplicates
        } else {
            $("table#muscleResults").show();
            $(this).data('timer', setTimeout(search(search_string), 100)); // Needs some adjustment?
        };
    });

    $(document).on("keydown", "#searchterm", function(e) {
        // When a key is pressed, <tbody id="tbodyappend"> is removed (removes all results before querying again)
        $("tbody#tbodyappend").empty();
    });


});