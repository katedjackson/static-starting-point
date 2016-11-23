function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("img", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("itinerary");
    ev.target.appendChild(document.getElementById(data));
}

$(function() {
    allowDrop();
});
