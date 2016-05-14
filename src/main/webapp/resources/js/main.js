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
        }
    )
}