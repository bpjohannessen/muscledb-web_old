function getQueryVariable(variable) {
    var query = window.location.search.substring(1);
    var vars = query.split('&');
    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split('=');
        if (decodeURIComponent(pair[0]) == variable) {
            return decodeURIComponent(pair[1]);
        }
    }
    console.log('Query variable %s not found', variable);
}

$(document).ready(function () {

    if(getQueryVariable('id') > 0) {
        console.log("ok");
    } else {
        console.log("not ok");
    }

    var $queryurl = "api/nervemuscles/" + getQueryVariable('id');

    $.getJSON($queryurl, function (json) {

console.log(json);

        var $table = $("tbody#tbodyappend");

        $table.append("<tr><th colspan='2' style='text-align: center;'>" + json.nerve_latinName + "</th></tr>");
        $table.append("<tr><th colspan='2' style='text-align: center; border: 0;'>" + json.nerve_Name + "</th></tr>");        
        $table.append("<tr><td id='muscleGroupCell' colspan='2' style='text-align: center; font-style: italic; font-size: 0.8em;'>");
        $.each(json.nerveMuscles, function (key, value) {
            $("#muscleGroupCell").append("<a href='muscle.html?id=" + value.id + "'>" + value.name + "</a><br>");            
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