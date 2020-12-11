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
    console.log($queryurl);

    $.getJSON($queryurl, function (json) {
        console.log("Printing json");
        console.log(json);
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
        $.each(json.muscleArteries, function (key, ArteryValue) {
            $("#muscleArteryCell").append("<a href='artery.html?id=" + ArteryValue.id + "'>" + ArteryValue.latinName + "</a><br>");            
        });
        $table.append("</td></tr>");        
        //$table.append("<tr><th>Vein:</th><td>" + json.vein + "</td></tr>");

        ////////////////////////////77
        
        if(json.muscleVeins.length > 1)
        {
            var veinLabel = "Veins:";
        }
        else
        {
            var veinLabel = "Vein:";
        }
        $table.append("<tr><th>" + veinLabel + "</th><td id='muscleVeinCell'>");
        $.each(json.muscleVeins, function (key, VeinValue) {
            $("#muscleVeinCell").append("<a href='vein.html?id=" + VeinValue.id +"'>" + VeinValue.latinName + "</a><br>");            
        });

        //////////////////////////////////

        if(json.muscleNerves.length > 1)
        {
            var nerveLabel = "Nerves:";
        }
        else
        {
            var nerveLabel = "Nerve:";
        }
        $table.append("<tr><th>" + nerveLabel + "</th><td id='muscleNerveCell'>");
        $.each(json.muscleNerves, function (key, NerveValue) {
            $("#muscleNerveCell").append("<a href='nerve.html?id=" + NerveValue.id + "'>" + NerveValue.latinName + "</a><br>");            
        });

        //$table.append("<tr><th>Image(url):</th><td>" + json.image + "</td></tr>");
        $table.append("<tr><td colspan='2' style='text-align: center;'><image style='max-width: 250px;' src='images/muscles/" + json.image + "'></td></tr>");
        if(json.comment != 'N/A') {
            $table.append("<tr><th>Comment:</th><td>" + json.comment + "</td></tr>");
        }     

    });

});