[Deutsche Version](#redthread-ger) | [English version](#redthread-eng)

&nbsp;
&nbsp;
&nbsp;
&nbsp;

# RedThread [GER]
RedThread ist ein Werkzeug für strukturierte OSINT-Recherche und nachvollziehbare Erkenntnisketten. Ich habe es als Soloprojekt entwickelt, weil mir in der Praxis immer wieder dasselbe Problem begegnet ist: Informationen sind oft schnell gefunden, aber deutlich schwerer sauber zu ordnen, belastbar miteinander zu verknüpfen und später noch verständlich herzuleiten.

Genau dafür ist RedThread entstanden. Es soll dir helfen, aus einzelnen Funden einen roten Faden zu machen, der nicht nur auf dem Bildschirm gut aussieht, sondern auch inhaltlich trägt. Im Mittelpunkt stehen deshalb nicht bloß Visualisierung und Sammeln, sondern Struktur, Begründung, Plausibilität und eine Arbeitsweise, bei der Schlussfolgerungen nachvollziehbar bleiben.

RedThread läuft als portable Windows-Anwendung, arbeitet standardmäßig lokal und speichert jedes Projekt in einer passwortverschlüsselten Datei. Ohne ausdrücklich ausgelöste Online-Funktionen verlässt kein Datenelement deinen Rechner.

## Warum der Quellcode noch nicht öffentlich ist
Der Quellcode ist im Moment noch nicht öffentlich auf GitHub. Nicht, weil ich ihn für geheim halte oder ihn künstlich zurückhalten möchte, sondern weil RedThread noch an einem Punkt ist, an dem Rückmeldungen aus einem kleinen Testkreis direkt in die Weiterentwicklung einfließen und größere Baustellen noch sauber abgeschlossen werden sollen.

Ein wichtiger Teil davon ist die Internationalisierung (i18n). Das bedeutet nicht nur, sichtbare Texte zu übersetzen, sondern Begriffe, Abläufe, Exporte und die gesamte Anwendung sprachlich und strukturell konsistent zu machen. Bevor der Code öffentlich wird, möchte ich deshalb erst einen Entwicklungsstand erreichen, der in sich stimmig ist und sich auch nach außen sauber vertreten lässt. Aktuell ist RedThread nur in deutscher Sprache verfügbar, da das Projekt ursprünglich weder für eine Veröffentlichung noch für einen größeren Umfang vorgesehen war.

## Die Ansichten
Ein Kern von RedThread sind die fünf verschiedenen Ansichten auf dieselbe Datenbasis. Sie sind nicht als Spielerei gedacht, sondern als unterschiedliche Blickwinkel auf denselben Sachverhalt, je nachdem, ob du gerade erfassen, prüfen, ordnen oder Zusammenhänge erkennen willst.

Die **Kettenansicht** zeigt den linearen roten Faden. Hier wird sichtbar, in welcher Reihenfolge Erkenntnisse aufeinander aufbauen. Das ist die passende Ansicht, wenn du eine Herleitung Schritt für Schritt durchgehen und prüfen willst, ob die Abfolge in sich logisch ist.

Der **Zeitstrahl** ordnet Knoten entlang ihres Zeitbezugs. Dadurch lassen sich Abläufe, Überschneidungen und Widersprüche sehr viel schneller erkennen als in einer rein linearen Liste. Knoten ohne Zeitbezug gehen dabei nicht verloren, sondern werden gesondert ausgewiesen.

Der **Graph** ist die Werkbank für Beziehungen. Hier lassen sich Verbindungen modellieren, erkunden und visuell prüfen. Gerade bei verzweigten Recherchen zeigt sich in dieser Ansicht oft zum ersten Mal, welche Knoten zentral sind, wo sich Cluster bilden und an welcher Stelle eine vermeintlich starke Kette in Wahrheit nur an einer einzigen schwachen Verbindung hängt. Der Graph bietet dafür unter anderem freie Anordnung, mehrere Auto-Layouts, Pfad-Hervorhebung, Suche und eine Übersichtskarte.

Die **Geo-Ansicht** bringt räumliche Bezüge ins Spiel. Knoten mit hinterlegten Koordinaten werden dort auf einer Karte dargestellt. Das ist hilfreich, wenn Orte, Bewegungen oder räumliche Muster eine Rolle spielen. Die Kartenansicht nutzt OpenStreetMap-Kacheln und benötigt deshalb für die Kartendarstellung eine Internetverbindung; die übrige Arbeit in RedThread bleibt davon unberührt.

Die **Matrix-Ansicht** ist für mich eine der stillen, aber besonders nützlichen Ansichten. Sie beantwortet eine Frage, die in dichten Netzen schnell untergeht: Wer hängt eigentlich mit wem zusammen, und wie stark? Statt Linien und Knoten zeigt die Matrix die Verbindungsdichte als sortierbare Heatmap-Tabelle. Dadurch fallen Häufungen, Drehscheiben und auffällige Muster oft schneller auf als im Graph. Außerdem lässt sich aus einer Zelle direkt an die passende Stelle im Graph springen.

## Plausibilität und ACH
RedThread soll nicht einfach nur Beziehungen zeichnen, sondern ihre Herleitung sichtbar machen. Deshalb kann jede Verbindung mit Begründung, Konfidenz, Belegen und Alternativhypothesen versehen werden. Für viele typische OSINT-Zuordnungen gibt es zusätzlich eine regelbasierte Plausibilitätsprüfung, die passende Begründungen vorschlagen kann, ohne dem Nutzer die Bewertung abzunehmen. In der aktuellen Fassung deckt diese Logik 52 kuratierte Beziehungspaare ab.

Besonders wichtig ist mir der Umgang mit konkurrierenden Erklärungen. RedThread unterstützt deshalb pro Verbindung die Erfassung geprüfter Alternativhypothesen mit Widerlegung und Status. Dieser Ansatz folgt der Analyse konkurrierender Hypothesen, kurz ACH, nach Richards J. Heuer. Dahinter steckt ein einfacher, aber wertvoller Gedanke: Nicht die erstbeste oder bequemste Erklärung soll gewinnen, sondern diejenige, die nach Prüfung der Alternativen übrig bleibt. Das hilft gegen vorschnelle Bestätigung und macht Schlussfolgerungen belastbarer.

Ergänzt wird das durch eine projektweite Übersicht, die unter anderem Scheinkorroboration, zeitliche Widersprüche und offene Alternativen sichtbar macht. Dazu kommt ein Konsistenz-Check, der typische formale Schwächen wie fehlende Quellenangaben, unbegründete Verbindungen, Dubletten oder unvollständige Pflichtfelder erkennt.

## Wie RedThread arbeitet
Erkenntnisse werden in RedThread als Knoten erfasst. Dazu gehören je nach Bedarf Felder wie Bezeichnung, Entitätstyp, Bewertung, Quelle, Quellendetail, Zeitbezug, Tags, Koordinaten, Anhänge und interne Hinweise. Verbindungen zwischen Knoten lassen sich mit Beziehungstyp, Verbindungsstil, Begründung, Konfidenz, Belegen und Alternativen ausstatten. So bleibt nicht nur sichtbar, dass zwei Dinge zusammenhängen sollen, sondern auch, warum.

Dazu kommt eine integrierte Recherche-Hilfe. Sie bündelt derzeit 91 OSINT-Werkzeuge aus 19 Kategorien und kann je Entitätstyp passende nächste Prüfschritte vorschlagen. RedThread führt also keine autonome Recherche durch, sondern unterstützt dich dabei, Rechercheergebnisse sauber zu strukturieren, zu prüfen und weiterzuverarbeiten.

## Was RedThread besonders macht
Ein zentraler Punkt ist die lokale Arbeitsweise. RedThread hat keine Cloud-Anbindung, keine Telemetrie und keine automatische Ausleitung von Projektdaten. Gespeichert wird in einer passwortbasiert verschlüsselten Projektdatei; Anhänge werden eingebettet, normalisiert und mit Prüfsummen versehen.

Hinzu kommen Mechanismen für Nachvollziehbarkeit und Integrität. Änderungen werden in einem fortlaufenden Protokoll mit Hash-Chain festgehalten, die Anwendung prüft beim Start ihre eigene Integrität, und auf Wunsch kann der Zustand der Audit-Kette zusätzlich über einen externen RFC-3161-Zeitstempel zeitlich verankert werden.

Vielleicht ist genau das der eigentliche Charakter von RedThread: kein Produkt, das um eine hübsche Oberfläche herum gebaut wurde, sondern ein Werkzeug, das aus echtem Bedarf gewachsen ist. Eines, das helfen soll, aus Recherche nicht bloß eine Sammlung von Treffern zu machen, sondern eine saubere, überprüfbare und verständliche Herleitung.

---

Ich bin selbst gespannt, wie sich RedThread weiterentwickeln wird — ursprünglich nur als kleines Helferlein gedacht, ist daraus längst ein deutlich größeres Projekt geworden; noch ist vieles offen, aber ich arbeite daran, Schritt für Schritt und so gut es Zeit, Beruf und Privatleben zulassen.

Die Projekt-Homepage ist [redthread.rocks](https://redthread.rocks).

&nbsp;
&nbsp;
&nbsp;
&nbsp;

---

&nbsp;
&nbsp;
&nbsp;
&nbsp;

# RedThread
RedThread is a tool for structured OSINT research and traceable chains of findings. I built it as a solo project because I kept running into the same problem in practice: information is often quick to find, but much harder to organise cleanly, connect in a reliable way, and explain clearly later on.

That is exactly why RedThread exists. It is meant to help turn individual findings into a coherent thread that does not just look tidy on screen, but also holds up in substance. The focus is therefore not just on visualisation and collection, but on structure, reasoning, plausibility, and a way of working in which conclusions remain understandable and reviewable.

RedThread runs as a portable Windows application, works locally by default, and stores each project in a password-encrypted file. Unless you deliberately trigger an online function, no project data leaves your machine.

## Why the source code is not public yet
The source code is not public on GitHub yet. Not because I consider it secret or want to keep it closed off for its own sake, but because RedThread is still at a stage where feedback from a small group of testers flows directly into development and a few larger pieces still need to be finished properly.

One important part of that is internationalisation. This involves far more than translating visible text; it also means making terminology, workflows, exports, and the application as a whole consistent in both language and structure. Before opening up the code, I want the project to reach a stage that feels internally coherent and is mature enough to present in public with confidence.

## Views
One of RedThread's core strengths is that it offers five different views of the same underlying data. They are not there as decoration, but as different ways of looking at the same matter, depending on whether you want to capture, review, organise, or recognise relationships.

The **Chain View** shows the linear thread. It makes the order in which findings build on each other immediately visible. This is the right view when you want to walk through a line of reasoning step by step and check whether the sequence is logically sound.

The **Timeline** arranges nodes according to their time reference. This makes sequences, overlaps, and contradictions much easier to spot than in a purely linear list. Nodes without a time reference are not lost; they are shown separately.

The **Graph** is the main workspace for relationships. It is where connections can be created, explored, and visually assessed. In more complex research, this is often the first place where it becomes obvious which nodes are central, where clusters emerge, and where an apparently strong chain actually depends on a single weak link. The graph supports free positioning, multiple auto-layouts, path highlighting, search, and an overview minimap.

The **Geo View** adds a spatial perspective. Nodes with stored coordinates appear on a map. This is useful whenever places, movements, or geographic patterns matter. The map view uses OpenStreetMap tiles and therefore requires an internet connection for map rendering, while the rest of the work in RedThread remains unaffected.

The **Matrix View** is, to me, one of the quieter but especially useful views. It answers a question that easily gets lost in dense networks: who is actually connected to whom, and how strongly? Instead of lines and nodes, the matrix shows connection density as a sortable heatmap table. That makes clusters, hubs, and striking patterns easier to notice than in the graph, and a single click on a cell can jump straight to the relevant connection in the graph.

## Plausibility and ACH
RedThread is not meant to merely draw relationships; it is meant to show how those relationships are justified. For that reason, every connection can carry a justification, confidence level, supporting evidence, and alternative hypotheses. For many typical OSINT mappings, there is also a rule-based plausibility check that can suggest fitting justifications without taking the evaluation away from the user. In its current state, this logic covers 52 curated relationship pairs.

What matters especially to me is the handling of competing explanations. RedThread therefore supports recording tested alternative hypotheses for each connection, together with their rebuttal and status. This follows the Analysis of Competing Hypotheses, or ACH, developed by Richards J. Heuer. The underlying idea is simple but valuable: the goal is not to settle on the first or most convenient explanation, but on the one that remains after alternatives have been examined. That helps counter premature confirmation and makes conclusions more robust.

This is complemented by a project-wide overview that highlights, among other things, false corroboration, temporal contradictions, and unresolved alternatives. In addition, a consistency check detects common formal weaknesses such as missing source information, unsupported connections, duplicates, or incomplete required fields.

## How RedThread works
In RedThread, findings are captured as nodes. Depending on the case, these can include fields such as label, entity type, assessment, source, source detail, time reference, tags, coordinates, attachments, and internal notes. Connections between nodes can be enriched with a relationship type, connection style, justification, confidence, evidence, and alternatives. This means the project shows not only that two things are supposed to be related, but also why.

On top of that, RedThread includes an integrated research helper. It currently brings together 91 OSINT tools across 19 categories and can suggest suitable next checks depending on the entity type. RedThread does not perform autonomous research; it supports you in structuring, reviewing, and processing research results in a clean and transparent way.

## What makes RedThread different
A central aspect is its local-first way of working. RedThread has no cloud connection, no telemetry, and no automatic transfer of project data. Everything is stored in a password-based encrypted project file; attachments are embedded, normalised, and accompanied by checksums.

It also includes mechanisms for traceability and integrity. Changes are recorded in a continuous log with a hash chain, the application verifies its own integrity on startup, and, if desired, the state of the audit chain can additionally be anchored in time through an external RFC 3161 timestamp.

Perhaps that is RedThread's actual character: not a product built around a polished surface, but a tool that grew out of real practical need. One that aims to turn research into more than a loose collection of hits, and instead into a clean, reviewable, and understandable line of reasoning.

---

I am genuinely curious to see where RedThread will go from here — what started as a small helper tool has gradually grown into a much larger project; much is still open, but I continue to work on it step by step, as time permits alongside work and everyday life.

The project homepage is [redthread.rocks](https://redthread.rocks).
