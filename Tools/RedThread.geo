# RedThread Geo-Presets (Overpass-QL-Vorlagen)
#
#   Schema (analog RedThread.tools):
#     ## <Kategorie>
#     ### <Bezeichnung>
#     id:     stabiler Identifikator        (optional)
#     icon:   Symbol/Emoji für den Marker   (optional)
#     radius: Default-Umkreis in Metern     (optional)
#     query: |
#       <mehrzeiliges Overpass-QL bis zur nächsten ###/##>
#
#   Platzhalter {lat} / {lon} / {radius} füllt RedThread zur Laufzeit
#   (Mittelpunkt = rechtsgeklickter Punkt, Radius = Slider). Output-Format
#   und Caps setzt RedThread; `out center;` liefert auch für Flächen (way/
#   relation) einen Punkt. Presets ohne {lat}/{lon} werden verworfen.

## Sicherheit & Behörden
### Überwachungskameras
id:     geo-surveillance
icon:   📷
radius: 500
query: |
  [out:json][timeout:25];
  ( node["man_made"="surveillance"](around:{radius},{lat},{lon});
    way ["man_made"="surveillance"](around:{radius},{lat},{lon}); );
  out center;

### Webcams (best effort — in OSM dünn getaggt)
id:     geo-webcam
icon:   🎥
radius: 1000
query: |
  [out:json][timeout:25];
  node["man_made"="surveillance"]["surveillance:type"="webcam"](around:{radius},{lat},{lon});
  out center;

### Polizei
id:     geo-police
icon:   🚓
radius: 3000
query: |
  [out:json][timeout:25];
  ( node["amenity"="police"](around:{radius},{lat},{lon});
    way ["amenity"="police"](around:{radius},{lat},{lon}); );
  out center;

### Feuerwehr
id:     geo-fire
icon:   🚒
radius: 3000
query: |
  [out:json][timeout:25];
  ( node["amenity"="fire_station"](around:{radius},{lat},{lon});
    way ["amenity"="fire_station"](around:{radius},{lat},{lon}); );
  out center;

### Krankenhäuser
id:     geo-hospital
icon:   🏥
radius: 5000
query: |
  [out:json][timeout:25];
  ( node["amenity"="hospital"](around:{radius},{lat},{lon});
    way ["amenity"="hospital"](around:{radius},{lat},{lon}); );
  out center;


## Infrastruktur
### Geldautomaten
id:     geo-atm
icon:   💳
radius: 1000
query: |
  [out:json][timeout:25];
  ( node["amenity"="atm"](around:{radius},{lat},{lon});
    way ["amenity"="atm"](around:{radius},{lat},{lon}); );
  out center;

### Tankstellen
id:     geo-fuel
icon:   ⛽
radius: 3000
query: |
  [out:json][timeout:25];
  ( node["amenity"="fuel"](around:{radius},{lat},{lon});
    way ["amenity"="fuel"](around:{radius},{lat},{lon}); );
  out center;

### Parkplätze
id:     geo-parking
icon:   🅿️
radius: 1000
query: |
  [out:json][timeout:25];
  ( node["amenity"="parking"](around:{radius},{lat},{lon});
    way ["amenity"="parking"](around:{radius},{lat},{lon}); );
  out center;


## Unterkünfte
### Hotels
id:     geo-hotel
icon:   🏨
radius: 2000
query: |
  [out:json][timeout:25];
  ( node["tourism"="hotel"](around:{radius},{lat},{lon});
    way ["tourism"="hotel"](around:{radius},{lat},{lon}); );
  out center;
