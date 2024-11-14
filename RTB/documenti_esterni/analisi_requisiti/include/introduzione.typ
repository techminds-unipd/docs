#set list(indent: 1em)

= Introduzione
== Scopo del documento
Questo documento fornisce una descrizione esaustiva e dettagliata dei requisiti e i #text([casi d'uso], fill: red) modellati dal gruppo Tech Minds per lo sviluppo del progetto _Automatizzare le routine digitali tramite l’intelligenza generativa_. #linebreak()
All'interno di questo documento il linguaggio di modellazione utilizzato è UML, in modo da avere una rappresentazione formale. #linebreak()
I casi d'uso seguono la seguente struttura:

- *Nome/Identificatore*: identificativo del caso d'uso con una breve descrizione;
- *#text([Attori], fill: red) principali*: chi esegue l'azione;
- *Attori secondari* (0..\*): parti di minore importanza coinvolte nell'esecuzione;
- *Scenario principale*: descrizione dettagliata delle azioni svolte durante il caso d'uso, intermedio tra le ipotesi e i risultati;
- *Pre-condizioni*: stato del programma prima dell'esecuzione del caso d'uso;
- *Post-condizioni*: stato del programma dopo l'esecuzione del caso d'uso;
- *Trigger*: evento scatenante del caso d'uso;
- *Estensioni*: casi eccezionali che possono avvenire durante l'esecuzione del caso d'uso.

== Glossario
Uno dei documenti interni prodotti dal gruppo è il così detto #text([glossario], fill: red), ovvero una lista di termini inerenti alle attività progettuali con la relativa definizione.
Il suo scopo è quello di garantire che tutti i membri del gruppo abbiano la stessa base di conoscenza e per sua natura è in continuo aggiornamento.
I termini che sono presenti all'interno del glossario, verranno scritti #text([in questo stile], fill: red).

== Scopo del prodotto
Il progetto ha lo scopo di realizzare un prodotto che, utilizzando l'#text([intelligenza artificiale], fill: red) generativa, vada ad automatizzare molte delle routine digitali che gli utenti svolgono manualmente.#linebreak()
Il prodotto sarà un'app desktop che permetterà di costruire dei #text([workflow], fill: red) i cui nodi sono dei servizi esterni (ad esempio un servizio Mail o un programma di videoscrittura) e gli archi indicheranno l'automazione da effettuare in linguaggio naturale.
Successivamente, un #text([agente], fill: red) prenderà il workflow, interpreterà le istruzioni fornite in linguaggio naturale ed eseguirà il workflow.

== Riferimenti

=== Riferimenti normativi
- Norme di progetto: https://techminds-unipd.github.io/docs/RTB/documenti_interni/norme_progetto/norme-di-progetto.pdf;
- Capitolato C3, Automatizzare le routine digitali tramite l’intelligenza generativa: https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf;
- Regolamento progetto didattico: https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf.

=== Riferimenti informativi
- Slide argomento T5 (corso di Ingegneria del Software): https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf;
- Slide lezione sui diagrammi dei casi d'uso (corso di Ingegneria del Software): https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf.