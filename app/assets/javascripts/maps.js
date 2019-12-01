


function initMap() {
  // The location of Uluru
  var place = {lat: -25.344, lng: 131.036};
  // The map, centered at Uluru
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 4, center:place});
  // The marker, positioned at Uluru
  var marker = new google.maps.Marker({position: place, map: map});
}