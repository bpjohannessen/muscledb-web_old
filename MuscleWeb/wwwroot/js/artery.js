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

    var $queryurl = "api/arterymuscles/" + getQueryVariable('id');

    $.getJSON($queryurl, function (json) {

        var $table = $("tbody#tbodyappend");

        $table.append("<tr><th colspan='2' style='text-align: center;'>" + json.artery_latinName + "</th></tr>");
        $table.append("<tr><th colspan='2' style='text-align: center; border: 0;'>" + json.artery_Name + "</th></tr>");        
        $table.append("<tr><td colspan='2' style='text-align: center;'>The artery supplies the following:</td></tr>");
        $table.append("</td></tr>");

        $.each(json.arteryMuscles, function (key, value) {
            $table.append("<tr><td><span style='font-weight: bold;'><a href='muscle.html?id=" + value.id + "'>" + value.latinName + "</span></td><td>" + value.name + "</td></tr>"); 
        });   

    });

});