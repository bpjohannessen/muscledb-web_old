function inputchanged() {
    clearTimeout($.data(this, 'timer'));
    var search_string = $("#searchterm").val();
    if (search_string == '') {
        // If search_string is empty, ie, if you delete the text in input#searchterm after a search, table#muscleResults will fade and disappear
        //$("table#muscleResults").fadeOut();
        $("tbody#tbodynosearchterm").show();

        $("tbody#tbodynosearchterm").fadeIn(300); //fadeIn(duration in ms) / fadeOut(duration in ms) default is 400 (ms)    
        $("tbody#tbodyappend").fadeOut(200);
        //$('input#searchterm').fadeOut(); // Fix duplicates
    } else {
        $("tbody#tbodynosearchterm").hide();
        $("table#muscleResults").show();
        $(this).data('timer', setTimeout(search(search_string), 100)); // Needs some adjustment?
    };
}

function search(query_value) {
    $("tbody#tbodyappend").empty();
    $.getJSON("api/muscles", { searchterm: query_value }, function (json) {

        var $table = $("tbody#tbodyappend");
        $.each(json, function (idx, muscleitem) {
            $table.append("<tr><td id='muscleResultItem'><a href='/v2/api/muscles/" + muscleitem.id + "'><div>" + muscleitem.name + "</div></a></td></tr>");
        });
    });
}

$(document).ready(function () {

    $("input#searchterm").focus();

    // Uncomment the next line to simulate a search without user input
    //search("flexio");
});