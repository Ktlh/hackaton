$(document).ready(function () {
    $("#send").click(Send)
});
function Send() {

    var mass = "";
    for (var i = 1; i < 21; i++) {
        // mass[i]=$('input[name=i]:checked').val().getPropertyValue();
        mass += (parseInt($('input[name=' + i + ']:checked').val()) + (i != 20 ? "-" : ""))
    }
    $.post("/result", {
            id: mass
        },
        function (response) {
            google.charts.load("current", {packages:["corechart"]});
            google.charts.setOnLoadCallback(drawChart);
            function drawChart() {
                var array = [];
                array.push(['Profession', 'Points']);
                for(var i = 0; i < response.length; i++){
                    array.push([response[i].key, response[i].value])
                }
                console.log(array);
                var data = google.visualization.arrayToDataTable(array);

                console.log(data);
                var options = {
                    title: 'Professional Orientation',
                    pieHole: 0.4
                };

                var chart = new google.visualization.PieChart(document.getElementById('result-chart'));
                $("#image-slider").hide();
                chart.draw(data, options);
            }
        }
    )
}