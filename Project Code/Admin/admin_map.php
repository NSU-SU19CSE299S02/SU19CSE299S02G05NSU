<?php
include_once 'mheader.php';
include_once 'locations_model.php';
?>
<div id="map"></div>s
<script>
    var map;
    var marker;
    var infowindow;
    var red_icon =  'http://maps.google.com/mapfiles/ms/icons/red-dot.png' ;
    var purple_icon =  'http://maps.google.com/mapfiles/ms/icons/purple-dot.png' ;
    var locations = <?php get_all_locations() ?>;

function initMap() {
    var dhaka = {lat: 23.791455, lng: 90.400409};
    infowindow = new google.maps.InfoWindow();
    map = new google.maps.Map(document.getElementById('map'), {
    center: dhaka,
    zoom: 13
});
    var i ; var confirmed = 0;
    for (i = 0; i < locations.length; i++) {
    marker = new google.maps.Marker({
    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
    map: map,
    icon :   locations[i][4] === '1' ?  red_icon  : purple_icon,
    html: document.getElementById('form')
});
