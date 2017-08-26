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
        
        var $ul = $("ul#grouplist");
        var group = json;
        renderGroup(group, $ul);


        // while(group.SubMuscleGroups.length > 0)        
        // {

        // }
        // console.log(json);
        // var $ul = $("ul#grouplist");

        // $.each(json, function (idx, muscle) {
        //     $ul.append("<li><a href='muscle.html?id="+ muscle.id +"'>" + muscle.latinName + "</a></li>");
        // });   

        function renderGroup(group, list){
            console.log(list);            
            list.append("<ul id=" + group.id + "></ul>");
            
            var $sublist = $("ul#" + group.id);

            console.log($sublist);

            $sublist.append("<li>" + group.name + "</li>");
            $.each(group.muscles, function (idx, muscle) {
                $sublist.append("<li><a href='muscle.html?id="+ muscle.id +"'>" + muscle.latinName + "</a></li>");
            });  
            $.each(group.subMuscleGroups, function(idx, subgroup){
                renderGroup(subgroup, list);
            });
        }
    });


});