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