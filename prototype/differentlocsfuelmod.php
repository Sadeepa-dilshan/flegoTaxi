<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Directions Route Finder</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <style>
    #map {
      height: 400px;
      width: 100%;
    }
  </style>
</head>
<body style="background:#86B049;">
  <h1 class="text-center fw-bold">Flego Taxi</h1>
  <br>
  <div class="container">
    <div class="form-group">
      <input type="text" id="source" class="form-control" placeholder="Source location" autocomplete>
    </div>
    <div class="form-group">
      <input type="text" id="dest" class="form-control" placeholder="Destination">
    </div>
    <br>
    <button class="btn btn-primary" onclick="getDirections(google.maps.TravelMode.DRIVING)">Get Driving Directions</button>
    <button class="btn btn-primary" onclick="getDirections(google.maps.TravelMode.TRANSIT)">Get Transit Directions</button>
    <button class="btn btn-primary" onclick="getDirections(google.maps.TravelMode.TWO_WHEELER)">Get two-wheeler Directions</button>
    
    <br><br><div id="map"></div>
    <div id="distanceResult" class="fw-bold" ><br>
      Distance: <span id="distance-text"></span> km<br><br>

      <div class="row">
        <div class="col fw-bold">From car <br><br> Fuel for a car: <span id="fuel-car"></span> liter<br>
                        Price: RS: <span id="price-car"></span></div>
        <div class="col fw-bold">From bike <br><br> Fuel for a car: <span id="fuel-bike"></span> liter<br>
                        Price: RS: <span id="price-bike"></span></div></div>
      </div>
      
    </div>
  </div>

  <script>
    let map, directionsService, directionsRenderer;
    let sourceAutocomplete, desAutocomplete;

    function initMap() {
      map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: 37.7749, lng: -122.4194 },
        zoom: 13
      });

      
      directionsService = new google.maps.DirectionsService();
      directionsRenderer = new google.maps.DirectionsRenderer();
      directionsRenderer.setMap(map);

      sourceAutocomplete = new google.maps.places.Autocomplete(
        document.getElementById('source')
      );
      desAutocomplete = new google.maps.places.Autocomplete(
        document.getElementById('dest')
      );
    }

    function getDirections(travelMode) {
      const source = document.getElementById('source').value;
      const destination = document.getElementById('dest').value;

      const request = {
        origin: source,
        destination: destination,
        travelMode: travelMode,
      };

      directionsService.route(request, function(result, status) {
        if (status === 'OK') {
          directionsRenderer.setDirections(result);

          const route = result.routes[0];
          let totalDistance = 0;

          // Calculate the total distance
          for (let i = 0; i < route.legs.length; i++) {
            totalDistance += route.legs[i].distance.value;
          }

          // Convert distance from meters to kilometers
          const distanceInKm = (totalDistance / 1000).toFixed(2);

          // Display the distance on the page
          document.getElementById("distance-text").textContent = distanceInKm;

          //fuel for vehicle
          const car = 30;
          const bike = 50;


          // Calculate fuel and price for car
          function fromcar(){
            const fuel = (distanceInKm / car).toFixed(2);
            document.getElementById("fuel-car").textContent = fuel;
            const price = (fuel * 400).toFixed(2);
            document.getElementById("price-car").textContent = price;
          }
          // Calculate fuel and price for bike
          function frombike(){
            const fuel = (distanceInKm / bike).toFixed(2);
            document.getElementById("fuel-bike").textContent = fuel;
            const price = (fuel * 350).toFixed(2);
            document.getElementById("price-bike").textContent = price;
          }


          fromcar();
          frombike();

        } else {
          alert("Directions request failed due to " + status);
        }
      });
    }
  </script>

  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDhA-YcscwiZow_bzXbbysCmWR33-31vBQ&callback=initMap"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>
