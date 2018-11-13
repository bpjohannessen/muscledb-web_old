function inputchanged() {
    clearTimeout($.data(this, 'timer'));
    var search_string = $("#searchterm").val();
    if (search_string == '') {
        // If search_string is empty, ie, if you delete the text in input#searchterm after a search, table#muscleResults will fade and disappear   
        $(".appended").remove();
    } else {
        $("table#muscleResults").show();
        $(this).data('timer', setTimeout(search(search_string), 0)); // Needs some adjustment?
    };
}

function search(query_value) {

    $.getJSON("api/muscles", { searchterm: query_value }, function (json) {
        $(".appended").remove(); //moved from line 14        
        var $table = $("tbody#tbodyappend");
        $.each(json, function (idx, muscleitem) {
            $table.append("<tr class='appended'><td id='muscleResultItem'><a onclick='showMuscle(" + muscleitem.id + ")'><div>" + muscleitem.name + "</div></a></td></tr>");
        });
    });
}

// function getQueryVariable(variable) {
//     var query = window.location.search.substring(1);
//     var vars = query.split('&');
//     for (var i = 0; i < vars.length; i++) {
//         var pair = vars[i].split('=');
//         if (decodeURIComponent(pair[0]) == variable) {
//             return decodeURIComponent(pair[1]);
//         }
//     }
//     console.log('Query variable %s not found', variable);
// }

function showGroups(id) {
    $('#mainContent').load('groups.html', function() {
    console.log("test ok!!");
    console.log(id);

    console.log("Setter queryurl");

    var $queryurl = "api/musclegroups/" + id;


    console.log($queryurl);

        $.getJSON($queryurl, function (json) {
    
            var $ul = $("div#grouplist");
            var group = json;
            renderGroup(group, $ul);
    
            function renderGroup(group, list) {
    
                list.append("<ul id=" + group.id + "></ul>");
                var muscleGroupList = $("ul#" + group.id);
                muscleGroupList.append("<li style='font-weight: bold;'>" + group.name + "</li>");
    
                if (group.muscles.length > 0) {
                    muscleGroupList.append("<ul style='list-style: square;' id=ml" + group.id + "></ul>");
                    var muscleList = $("#ml" + group.id);
                }
    
                $.each(group.muscles, function (idx, muscle) {
                    muscleList.append("<li><a href='muscle.html?id=" + muscle.id + "'>" + muscle.latinName + "</a></li>");
                });
                $.each(group.subMuscleGroups, function (idx, subgroup) {
                    renderGroup(subgroup, muscleGroupList);
                });
            }
        });
    });
}

function showAbout() {
    console.log("showAbout OK!");
    $('#mainContent').load('test.html', function() {
        pageVar = "about";
        console.log(pageVar);
        /// can add another function here
    });
}

function showMuscle(id) {
    console.log("viser showMuscle" + id);
    $('#mainContent').load('muscle.html', function() {

        var $queryurl = "api/muscles/" + id;

        $.getJSON($queryurl, function (json) {
            var $table = $("tbody#tbodyappend");
    
            $table.append("<tr><th colspan='2' style='text-align: center;'>" + json.latinName + "</th></tr>");
            $table.append("<tr><th colspan='2' style='text-align: center; border: 0;'>" + json.name + "</th></tr>");        
            $table.append("<tr><td id='muscleGroupCell' colspan='2' style='text-align: center; font-style: italic; font-size: 0.8em;'>");
            $.each(json.muscleGroups, function (key, value) {
                $("#muscleGroupCell").append(value.name + "<br>");            
            });
            $table.append("</td></tr>");
            $table.append("<tr><th>Origo:</th><td>" + json.origo + "</td></tr>");
            $table.append("<tr><th>Insertio:</th><td>" + json.insertio + "</td></tr>");
            $table.append("<tr><th>Functio:</th><td>" + json.functio + "</td></tr>");
            if(json.muscleArteries.length > 1)
            {
                var arteryLabel = "Arteries:";
            }
            else
            {
                var arteryLabel = "Artery:";
            }
            $table.append("<tr><th>" + arteryLabel + "</th><td id='muscleArteryCell'>");
            $.each(json.muscleArteries, function (key, value) {
                $("#muscleArteryCell").append(value.latinName + "<br>");            
            });
            $table.append("</td></tr>");        
            $table.append("<tr><th>Vein:</th><td>" + json.vein + "</td></tr>");
            $table.append("<tr><th>Nerve:</th><td>" + json.nerve + "</td></tr>");
            //$table.append("<tr><th>Image(url):</th><td>" + json.image + "</td></tr>");
            $table.append("<tr><td colspan='2' style='text-align: center;'><image style='max-width: 250px;' src='images/muscles/" + json.image + "'></td></tr>");
            if(json.comment != 'N/A') {
                $table.append("<tr><th>Comment:</th><td>" + json.comment + "</td></tr>");
            }     
    
        });



    });
}

$(document).ready(function () {

    $("input#searchterm").focus();

    // Uncomment the next line to simulate a search without user input
    //search("flexio");

});