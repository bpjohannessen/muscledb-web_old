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

    var $queryurl = "api/muscles/" + getQueryVariable('id');

    $.getJSON($queryurl, function (json) {
        var $table = $("tbody#tbodyappend");

        $table.append("<tr><th colspan='2' style='text-align: center;'>" + json.latinName + "</th></tr>");
        $table.append("<tr><th colspan='2' style='text-align: center;'>" + json.name + "</th></tr>");
        
        $table.append("<tr><td id='muscleGroupCell' colspan='2' style='font-size: 0.8em;'>");
        $.each(json.muscleGroups, function (key, value) {
            $("#muscleGroupCell").append(value.name + "<br>");
        });
        $table.append("</td></tr>");

        $table.append("<tr><th>Origo:</th><td>" + json.origo + "</td></tr>");
        $table.append("<tr><th>Insertio:</th><td>" + json.insertio + "</td></tr>");
        $table.append("<tr><th>Functio:</th><td>" + json.functio + "</td></tr>");
        //$table.append("<tr><th>Image(url):</th><td>" + json.image + "</td></tr>");
        $table.append("<tr><td colspan='2' style='text-align: center;'><image style='max-width: 250px;' src='images/muscles/" + json.image + "'></td></tr>");
        if(json.comment != 'N/A') {
            $table.append("<tr><th>Comment:</th><td>" + json.comment + "</td></tr>");
        }     

    });

});