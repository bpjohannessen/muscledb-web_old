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

    var $queryurl = "api/musclegroups/" + getQueryVariable('id');

    $.getJSON($queryurl, function (json) {
        console.log(json);
        var $ul = $("ul#grouplist");

        $.each(json, function (idx, muscle) {
            $ul.append("<li><a href='muscle.html?id="+ muscle.id +"'>" + muscle.latinName + "</a></li>");
        });   

    });

});