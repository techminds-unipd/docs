#set list(indent: 1em)

= Introduzione
== Scopo del documento
Questo documento fornisce una descrizione esaustiva e dettagliata dei requisiti e i #text([casi d'uso#sub("G")], fill: red) modellati dal gruppo Tech Minds per lo sviluppo del progetto _Automatizzare le routine digitali tramite l’intelligenza generativa_. #linebreak()
All'interno di questo documento il linguaggio di modellazione utilizzato è UML, in modo da avere una rappresentazione formale. #linebreak()
I casi d'uso seguono la seguente struttura:

- *Nome/Identificatore*: Identificativo del caso d'uso con una breve descrizione;
- *#text([Attori#sub("G")], fill: red) principali*: Chi esegue l'azione;
- *Attori secondari* (0..\*): Parti di minore importanza coinvolte nell'esecuzione;
- *Scenario principale*: Descrizione dettagliata delle azioni svolte durante il caso d'uso, intermedio tra le ipotesi e i risultati;
- *Pre-condizioni*: Stato del programma prima dell'esecuzione del caso d'uso;
- *Post-condizioni*: Stato del programma dopo l'esecuzione del caso d'uso;
- *Trigger*: Evento scatenante del caso d'uso;
- *Estensioni*: Casi eccezionali che possono avvenire durante l'esecuzione del caso d'uso.

== Scopo del prodotto
Il progetto ha lo scopo di realizzare un prodotto che, utilizzando l'#text([intelligenza artificiale#sub("G")], fill: red) generativa, vada ad automatizzare molte delle routine digitali che gli utenti svolgono manualmente.#linebreak()
Il prodotto sarà un'app desktop che permetterà di costruire dei #text([workflow#sub("G")], fill: red) i cui nodi sono dei servizi esterni (ad esempio un servizio Mail o un programma di videoscrittura) e gli archi indicheranno l'automazione da effettuare in linguaggio naturale.
Successivamente, un #text([agente#sub("G")], fill: red) prenderà il workflow, interpreterà le istruzioni fornite in linguaggio naturale ed eseguirà il workflow.

== Glossario
Per evitare fraintendimenti sulla terminologia utilizzata è stato stilato un glossario che contiene tutte le definizioni dei termini tecnici utilizzati in questo documento.
Nel documento i termini del glossario verranno indicati con il #text("colore rosso", fill: red).

== Riferimenti

=== Riferimenti normativi
- #link("https://techminds-unipd.github.io/docs/RTB/blablas")[Norme di progetto]
- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[Capitolato C3: Automatizzare le routine digitali tramite l’intelligenza generativa]
- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[Regolamento progetto didattico]

=== Riferimenti informativi
- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")[Slide argomento T5 (corso di Ingegneria del Software)]
- #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")[Slide lezione sui diagrammi dei casi d'uso (corso di Ingegneria del Software)]