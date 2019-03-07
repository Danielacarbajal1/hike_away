import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/outdoors-v9',
      center: [-71.21454, 46.81228],
      zoom: 5.0
    });
      const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach((marker) => {
    const element = document.createElement('div');
  element.className = 'marker';
  element.style.backgroundImage = `url('${marker.image_url}')`;
  element.style.backgroundSize = 'contain';
  element.style.width = '50px';
  element.style.height = '50px';
const container = document.querySelector(".targetDiv");
const hikeCard = document.querySelector("li.item");

let previousCenteredHikeCardIndex = 0;

container.addEventListener("scroll", () => {
 const centerScreensScrollDistanceFromLeft = (container.scrollLeft + (hikeCard.clientWidth / 2));
 const currentCenteredHikeCardIndex = Math.floor(centerScreensScrollDistanceFromLeft / hikeCard.clientWidth);

 if (previousCenteredHikeCardIndex !== currentCenteredHikeCardIndex) {
   previousCenteredHikeCardIndex = currentCenteredHikeCardIndex;
   const correspondingMarker = markers[currentCenteredHikeCardIndex];
   if (map.isMoving()) { map.stop(); }
   map.flyTo({ center: [correspondingMarker.lng, correspondingMarker.lat], zoom: 6 });
 }
});

    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // <-- add this
    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
      fitMapToMarkers(map, markers);
  });
  }
};

export { initMapbox };
