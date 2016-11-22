function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("itinerary");
    ev.target.appendChild(document.getElementById(data));
}

$(document).ready(function() {
    allowDrop();
});
