# =============================================================================
# RedThread Geo-Presets (Overpass-QL-Vorlagen)
# =============================================================================
#
# Diese Datei ist Bestandteil der RedThread-Anwendung und stellt eine kuratierte
# Sammlung von Overpass-Abfragevorlagen bereit. Sie speisen die Umkreis-Abfrage
# der Geo-Ansicht (Rechtsklick auf einen Kartenpunkt) und liefern georeferenzierte
# Objekte (Points of Interest) aus OpenStreetMap.
#
# Anwendung:    RedThread — Forensische OSINT-Erkenntnisketten
# Copyright:    © 2026 ot2i7ba (Otti). Alle Rechte vorbehalten.
# Homepage:     https://redthread.rocks
# Quellcode:    https://github.com/ot2i7ba
# Datenquelle:  OpenStreetMap / Overpass-API · © OpenStreetMap-Mitwirkende (ODbL)
#
# -----------------------------------------------------------------------------
# Datenschutz
# -----------------------------------------------------------------------------
# Beim Ausführen einer Abfrage werden die Koordinaten (geografische Breite und
# Länge) des gewählten Kartenpunktes, der Umkreis-Radius sowie die Abfrage selbst
# an den konfigurierten Overpass-Server (Voreinstellung: OpenStreetMap) übertragen
# und dort verarbeitet; zusätzlich werden — wie bei jedem Online-Aufruf — die
# IP-Adresse des Aufrufenden, Browser-Kennungen und ggf. weitere Verbindungs-
# merkmale übermittelt. Für die Erhebung, Verarbeitung, Speicherung und Weitergabe
# dieser Daten gelten ausschließlich die Datenschutzhinweise und Nutzungs-
# bedingungen des jeweiligen Server-Betreibers. Diese sind vor jeder Nutzung
# eigenverantwortlich zur Kenntnis zu nehmen. Insbesondere ist im Einzelfall zu
# prüfen, ob die Übermittlung im konkreten Ermittlungs- bzw. Recherchekontext
# zulässig, verhältnismäßig und mit den anwendbaren Vorgaben der Datenschutz-
# Grundverordnung (DSGVO), nationaler Datenschutzgesetze sowie dienst- bzw.
# behördeninterner Vorgaben (z. B. OPSEC) vereinbar ist. RedThread überträgt
# nichts automatisch: Jede Abfrage ist eine bewusst ausgelöste Handlung und nach
# einem OPSEC-Hinweis gesondert zu bestätigen.
#
# -----------------------------------------------------------------------------
# Haftungsausschluss
# -----------------------------------------------------------------------------
# Die hier hinterlegten Vorlagen sind technische Abfrage-Schablonen. Die Treffer
# stammen vollständig aus OpenStreetMap und unterliegen keiner Qualitäts- oder
# Vollständigkeitsgarantie: Objekte können fehlen, veraltet, falsch verortet oder
# uneinheitlich verschlagwortet sein. Die Aufnahme einer Vorlage stellt weder eine
# Empfehlung noch eine Aussage über Verfügbarkeit, rechtliche Zulässigkeit,
# Aktualität oder Eignung für einen bestimmten Zweck dar. Der Entwickler der
# RedThread-Anwendung ist nicht Betreiber von OpenStreetMap, der Overpass-API oder
# der Kachel-/Geokodierungsdienste, hat keinen Einfluss auf deren Gestaltung,
# Funktion, Inhalte oder Datenverarbeitung und übernimmt keinerlei Haftung —
# gleich aus welchem Rechtsgrund — für Schäden, Datenschutzverstöße, Verfügbar-
# keitsausfälle, fehlerhafte oder veraltete Ergebnisse oder sonstige nachteilige
# Folgen, die aus der Nutzung der Vorlagen oder dem Vertrauen auf deren Ausgaben
# entstehen. Die Verantwortung für die rechtmäßige, ermittlungstaktisch und
# ethisch angemessene Verwendung liegt vollständig beim Nutzer. Treffer sind vor
# einer forensischen Verwertung eigenständig zu verifizieren (Quelle, Aktualität,
# Verhältnismäßigkeit).
#
# -----------------------------------------------------------------------------
# Preset-Schema
# -----------------------------------------------------------------------------
#   ## <Kategorie>   optionale Gruppen-Überschrift (hier bewusst weggelassen,
#                    damit das Auswahlmenü schlank und global alphabetisch bleibt).
#   ### <Bezeichner> kurzer, prägnanter Name (erscheint im Auswahlmenü).
#   id:              stabiler, von Bezeichner/Tag UNABHÄNGIGER Identifikator.
#   icon:            Symbol/Emoji für den Karten-Marker.
#   radius:          Default-Umkreis in Metern (vom Schieberegler überschreibbar).
#   query: |         mehrzeiliges Overpass-QL bis zum nächsten ###/##.


### Ampel
id:     geo-traffic-signals
icon:   🚦
radius: 1000
query: |
  [out:json][timeout:25];
  node["highway"="traffic_signals"](around:{radius},{lat},{lon});
  out center;

### Apotheke
id:     geo-pharmacy
icon:   💊
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="pharmacy"](around:{radius},{lat},{lon});
  out center;

### Bahnhof
id:     geo-railway-station
icon:   🚉
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["railway"="station"](around:{radius},{lat},{lon});
  out center;

### Bank
id:     geo-bank
icon:   🏦
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="bank"](around:{radius},{lat},{lon});
  out center;

### Bar
id:     geo-bar
icon:   🍸
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="bar"](around:{radius},{lat},{lon});
  out center;

### Behörde
id:     geo-government
icon:   🏛
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["office"="government"](around:{radius},{lat},{lon});
  out center;

### Bibliothek
id:     geo-library
icon:   📚
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="library"](around:{radius},{lat},{lon});
  out center;

### Botschaft/Konsulat
id:     geo-diplomatic
icon:   🛂
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["office"="diplomatic"](around:{radius},{lat},{lon});
  out center;

### Bushaltestelle
id:     geo-bus-stop
icon:   🚏
radius: 1000
query: |
  [out:json][timeout:25];
  node["highway"="bus_stop"](around:{radius},{lat},{lon});
  out center;

### Café
id:     geo-cafe
icon:   ☕
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="cafe"](around:{radius},{lat},{lon});
  out center;

### Campingplatz
id:     geo-camp
icon:   🏕
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["tourism"="camp_site"](around:{radius},{lat},{lon});
  out center;

### Einkaufszentrum
id:     geo-mall
icon:   🛍
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["shop"="mall"](around:{radius},{lat},{lon});
  out center;

### Fahrrad-Parkplatz
id:     geo-bicycle-parking
icon:   🚲
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="bicycle_parking"](around:{radius},{lat},{lon});
  out center;

### Fahrradweg
id:     geo-cycleway
icon:   🚴
radius: 1000
query: |
  [out:json][timeout:25];
  way["highway"="cycleway"](around:{radius},{lat},{lon});
  out center;

### Feuerwehr
id:     geo-fire
icon:   🚒
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="fire_station"](around:{radius},{lat},{lon});
  out center;

### Fitnessstudio
id:     geo-fitness
icon:   🏋
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["leisure"="fitness_centre"](around:{radius},{lat},{lon});
  out center;

### Flughafen
id:     geo-aerodrome
icon:   ✈
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["aeroway"="aerodrome"](around:{radius},{lat},{lon});
  out center;

### Gasthaus/Pension
id:     geo-guesthouse
icon:   🛏
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["tourism"="guest_house"](around:{radius},{lat},{lon});
  out center;

### Geldautomat
id:     geo-atm
icon:   💳
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="atm"](around:{radius},{lat},{lon});
  out center;

### Gericht
id:     geo-courthouse
icon:   ⚖
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="courthouse"](around:{radius},{lat},{lon});
  out center;

### Hostel
id:     geo-hostel
icon:   🛌
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["tourism"="hostel"](around:{radius},{lat},{lon});
  out center;

### Hotel
id:     geo-hotel
icon:   🏨
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["tourism"="hotel"](around:{radius},{lat},{lon});
  out center;

### Industrie/Lager
id:     geo-industrial
icon:   🏭
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["landuse"="industrial"](around:{radius},{lat},{lon});
  out center;

### Kino
id:     geo-cinema
icon:   🎬
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="cinema"](around:{radius},{lat},{lon});
  out center;

### Klinik
id:     geo-clinic
icon:   🩺
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="clinic"](around:{radius},{lat},{lon});
  out center;

### Krankenhaus
id:     geo-hospital
icon:   🏥
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="hospital"](around:{radius},{lat},{lon});
  out center;

### Marktplatz
id:     geo-marketplace
icon:   🧺
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="marketplace"](around:{radius},{lat},{lon});
  out center;

### Militär
id:     geo-military
icon:   🎖
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["military"="base"](around:{radius},{lat},{lon});
  out center;

### Museum
id:     geo-museum
icon:   🖼
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["tourism"="museum"](around:{radius},{lat},{lon});
  out center;

### Öffentliche Toilette
id:     geo-toilets
icon:   🚻
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="toilets"](around:{radius},{lat},{lon});
  out center;

### Park
id:     geo-park
icon:   🌳
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["leisure"="park"](around:{radius},{lat},{lon});
  out center;

### Parkplatz
id:     geo-parking
icon:   🅿
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="parking"](around:{radius},{lat},{lon});
  out center;

### Polizei
id:     geo-police
icon:   🚓
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="police"](around:{radius},{lat},{lon});
  out center;

### Post
id:     geo-post
icon:   📮
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="post_office"](around:{radius},{lat},{lon});
  out center;

### Recycling/Müll
id:     geo-recycling
icon:   ♻
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="recycling"](around:{radius},{lat},{lon});
  out center;

### Rehazentrum
id:     geo-rehab
icon:   🧑
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["healthcare"="rehabilitation"](around:{radius},{lat},{lon});
  out center;

### Religiöse Stätte
id:     geo-worship
icon:   ⛪
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="place_of_worship"](around:{radius},{lat},{lon});
  out center;

### Restaurant
id:     geo-restaurant
icon:   🍽
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="restaurant"](around:{radius},{lat},{lon});
  out center;

### Schule
id:     geo-school
icon:   🏫
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="school"](around:{radius},{lat},{lon});
  out center;

### Schwimmbad
id:     geo-swimming
icon:   🏊
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["leisure"="swimming_pool"](around:{radius},{lat},{lon});
  out center;

### Spielplatz
id:     geo-playground
icon:   🛝
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["leisure"="playground"](around:{radius},{lat},{lon});
  out center;

### Sportanlage
id:     geo-sports
icon:   🏟
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["leisure"="sports_centre"](around:{radius},{lat},{lon});
  out center;

### Supermarkt
id:     geo-supermarket
icon:   🛒
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["shop"="supermarket"](around:{radius},{lat},{lon});
  out center;

### Tankstelle
id:     geo-fuel
icon:   ⛽
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="fuel"](around:{radius},{lat},{lon});
  out center;

### Theater
id:     geo-theatre
icon:   🎭
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="theatre"](around:{radius},{lat},{lon});
  out center;

### U-/S-Bahn
id:     geo-subway
icon:   🚇
radius: 1000
query: |
  [out:json][timeout:25];
  node["station"="subway"](around:{radius},{lat},{lon});
  out center;

### Überwachungskamera
id:     geo-surveillance
icon:   📷
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["man_made"="surveillance"](around:{radius},{lat},{lon});
  out center;

### Umspannwerk
id:     geo-substation
icon:   ⚡
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["power"="substation"](around:{radius},{lat},{lon});
  out center;

### Universität
id:     geo-university
icon:   🎓
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["amenity"="university"](around:{radius},{lat},{lon});
  out center;

### Wald/Forst
id:     geo-forest
icon:   🌲
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["landuse"="forest"](around:{radius},{lat},{lon});
  out center;

### Webcam
id:     geo-webcam
icon:   🎥
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["man_made"="surveillance"]["surveillance:type"="webcam"](around:{radius},{lat},{lon});
  out center;

### Zoo/Aquarium
id:     geo-zoo
icon:   🦓
radius: 1000
query: |
  [out:json][timeout:25];
  nwr["tourism"="zoo"](around:{radius},{lat},{lon});
  out center;
