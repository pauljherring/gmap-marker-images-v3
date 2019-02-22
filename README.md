# gmap-marker-images-v3

Simulacrum of the standard Google Maps marker pin, in a variety of colors, based on the [Standard and Extended CSS colours](https://www.w3.org/TR/css-color-3).

![red](https://raw.githubusercontent.com/pauljherring/gmap-marker-images-v3/master/images/teardrop/red.png)
![orange](https://raw.githubusercontent.com/pauljherring/gmap-marker-images-v3/master/images/teardrop/orange.png)
![yellow](https://raw.githubusercontent.com/pauljherring/gmap-marker-images-v3/master/images/teardrop/yellow.png)
![green](https://raw.githubusercontent.com/pauljherring/gmap-marker-images-v3/master/images/teardrop/green.png)
![blue](https://raw.githubusercontent.com/pauljherring/gmap-marker-images-v3/master/images/teardrop/blue.png)
![indigo](https://raw.githubusercontent.com/pauljherring/gmap-marker-images-v3/master/images/teardrop/indigo.png)
![violet](https://raw.githubusercontent.com/pauljherring/gmap-marker-images-v3/master/images/teardrop/violet.png)


# Example usage

## Example 1 - minimal code
![Example 1](https://raw.githubusercontent.com/pauljherring/gmap-marker-images-v3/master/example_1.png)
```js
var map;

function initMap() {
	var iconbase='/markers/images/teardrop/dark'; // Where the markers 
	var this_place = { lat: 51.501364, lng: -0.1440787, /* Buckingham Palace */};
	
	map = new google.maps.Map(document.getElementById('map'), {
        center: this_place,
        zoom: 13
    });
	var this_marker = new google.maps.Marker({
        position: this_place, 
        map: map,
        title: "Buckingham Palace",
        label: {
            text: '+', // single character
            color: 'white', // or black (or any other CSS name) based upon marker color
        },
        icon: {
            url: iconbase+'blue.png', // this name is based on the W3C names
            labelOrigin: new google.maps.Point(13, 13), // where that single label character goes
        },
    });
}
```
## Example 2 - with popup.
![Example 2](https://raw.githubusercontent.com/pauljherring/gmap-marker-images-v3/master/example_2.png)

```js
var map;

function initMap() {
	var iconbase='/markers/images/teardrop/dark'; // Where the markers directory is as viewed from a client
	var infoWindow = new google.maps.InfoWindow; // for popup
	var this_place = {
		lat: 51.501364, 
		lng: -0.1440787, // Buckingham Palace
	};

	map = new google.maps.Map(document.getElementById('map'), {
		center: this_place,
		zoom: 13
	});

	var this_marker = new google.maps.Marker({
		position: this_place, 
		map: map,
		title: "Buckingham Palace",
		label: {
			text: '#', // single character
			color: 'black', // or white (or any other CSS name) based upon marker color
		},
		icon: {
			url: iconbase+'khaki.png', // this name is based on the W3C names
			labelOrigin: new google.maps.Point(13, 13), // where that single label character goes
		},
	});
	this_marker.addListener('click', function() {
		infoWindow.setContent("Buck House");
		infoWindow.open(map, this_marker);
	});
}
```