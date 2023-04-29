# AI-Testground

This repository contains a list of questions we want to ask AIs to see how they can support us.

## Software Development Process overview

This process overview lists all the things that happen during the development process.
So we can have a look at it and feel inspired.

### 1. Task arrival

- Die Aufgabe kommt an. Vermutlich als E-mail.
- Die Aufgabe wird per PowerShell-Script in das Kanbanboard aufgenommen.
  - Die Dauer der Aufgabe wird anhand des Betreffs geschätzt.
  - Die Email wird extrahiert und als Anhang hinzugefügt und es wird der letzte Hauptabschnitt der Email als Beschreibung aufgenommen.
  - Die Aufgabe wird anhand von Regeln in eine passende Spalte aufgenommen.
  - Klassifizierung der Aufgabe als Suppoort/Bug/Feature oder interne Weiterentwicklung.

Verbesserungsideen für KI:

- Umschreiben der eintreffenden E-Mails
  - Der Betreff der eintreffenden E-Mails ist oft nicht entsprechend dem Inhalt. Das erschwert im Kanban-Board die Übersicht. Kann KI einen guten neuen Betreff erzeugen?
  - Durch die Ungenauigkeit des Betreffs verschlechtert sich u.a. unsere Vorhersage zur Aufgabendauer. (Kann KI hier einen Beitrag leisten? Z.B. durch saubere Formulierung des Betreffs)
- Aufgaben verbessern
  - Wenn KI einen passenden Betreff für Aufgaben wählen kann, dann verbessert sich die Übersicht im Kanban-Board.
  - Kann KI in den sich aufstauenden Aufgaben nachsehen, ob wir bereits eine ähnliche Aufgabe von jemand anders haben?
  - Kann KI automatisch Teilschritte für die Aufgaben erstellen und als Subtasks vermerken.
  - Kann KI vielleicht eine standardisierte Aufgabenbeschreibung erzeugen (Wo ist das Problem? Was genau ist das Problem? Welchen Kunden betrifft das System.)
  - Kann man prüfen, ob alle wichtigen Angaben im Inhalt enthalten sind.

#### Handling von Support-Aufgaben

Support-Aufgaben können eine sehr hohe Varianz aufweisen, es gibt aber auch die üblichen Verdächtigen, bei denen wir
bereits einen hohen Grad an Automatisierung vorliegen haben.

Die herausfordernden Aufgaben sind sehr Wissensintensiv und müssen sauber gelöst werden. Hier kann KI nicht helfen.

#### Entwicklungsaufgaben

1. Anforderungssammlung

- Können wir über KI-s herausfinden, wer von einer Aufgabe alles betroffen ist?
- automtisch Lösungsvorschläge machen?

2. Planung und Design

- eine Architiktur vorschlagen?
- User-Story use cases oder funktionale Spezifaktion schreiben?
- das User-Interaface gestalten?

3. Implementation

- uns dabei helfen, herauszufinden, ob sich jemand an die Coding-Standards hält.
- Welche Entwicklungsaufgaben im Rahmen unseres Tech-Stacks erledigen?
  - C#, MS SQL-Server, PHP, MySQL, TypeScript, Javascript, Powershell, Python, Rust
- Brauchbarkeit für Performance-Optimierung z.B. in SQL
  - Umschreiben einer Skalarfunktion in einen View

4. Testing and Quality Assurance

- einen Test-Plan entwickeln?
- Unit Tests schreiben?
- Bugs identifizieren und beheben?

5. Deployment and Release

- Kann es Skripte erstellen, die uns bei der Automatisierung von Deployment und Release helfen?
  - GitHub Actions
  - Powershell
  - Docker

6. Maintainance and Support

- Schreiben von Benutzerdokumentation
- Schreiben von Trainingsmaterial
- Lösungsvorschläge für identifizierte Probleme. (Vorschlag von Sofortmaßnahmen)
