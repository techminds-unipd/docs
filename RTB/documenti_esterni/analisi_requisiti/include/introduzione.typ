#import "/template/template.typ": glossario
#set list(indent: 1em)

= Introduzione
== Scopo del documento
Questo documento fornisce una descrizione esaustiva e dettagliata dei #glossario[requisiti] e i #glossario[casi d'uso] modellati dal gruppo Tech Minds per lo sviluppo del #glossario[progetto] _Automatizzare le routine digitali tramite l’intelligenza generativa_. #linebreak()
All'interno di questo documento il linguaggio di modellazione utilizzato è #glossario[UML], in modo da avere una sintassi formale per i diagrammi dei casi d'uso. #linebreak()
I casi d'uso seguono la seguente struttura:

- *Nome/Identificatore*: identificativo del caso d'uso;
- *Descrizione*: breve testo che riassume lo scopo del caso d'uso;
- *#glossario[Attori] principali*: entità che eseguono l'azione;
- *Attori secondari* (0..\*): entità esterne al sistema ma coinvolte nell'esecuzione;
- *Scenario principale*: descrizione dettagliata delle azioni svolte durante il caso d'uso, intermedio tra le ipotesi e i risultati;
- *Pre-condizioni*: stato del programma prima dell'esecuzione del caso d'uso;
- *Post-condizioni*: stato del programma dopo l'esecuzione del caso d'uso;
- *Estensioni*: casi eccezionali che possono avvenire durante l'esecuzione del caso d'uso;
- *Generalizzazioni*: servono ad aggiungere o modificare caratteristiche del caso d'uso padre da cui si generalizza.

== Glossario
Uno dei documenti interni prodotti dal gruppo è il così detto #glossario[glossario], ovvero una lista di termini inerenti alle attività progettuali con la relativa definizione.
Il suo scopo è quello di garantire che tutti i membri del gruppo abbiano la stessa base di conoscenza e per sua natura è in continuo aggiornamento.
I termini che sono presenti all'interno del glossario, verranno scritti #glossario[in questo stile].

== Scopo del prodotto
Il progetto ha lo scopo di realizzare un prodotto che, utilizzando l'#glossario[intelligenza artificiale] generativa, vada ad automatizzare molte delle routine digitali che gli utenti svolgono manualmente.#linebreak()
Il prodotto sarà una web app che permetterà di costruire dei #glossario[workflow] i cui nodi sono dei servizi esterni (ad esempio un servizio Mail o un programma di videoscrittura) e gli #glossario[archi] indicheranno l'automazione da effettuare in linguaggio naturale.
Successivamente, un #glossario[agente] prenderà il workflow, interpreterà le istruzioni fornite in linguaggio naturale e le eseguirà.

== Riferimenti

=== Riferimenti normativi
#set par(justify: false)
- #glossario[Norme di progetto]: https://techminds-unipd.github.io/docs/RTB/documenti_interni/norme_progetto/norme-di-progetto.pdf [versione 1.0.0];
- #glossario[Capitolato] C3, Automatizzare le routine digitali tramite l’intelligenza generativa: https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf [visitato il: 17/02/2025];
- Regolamento progetto didattico: https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf [visitato il: 17/02/2025].

=== Riferimenti informativi
- Slide argomento T5 (corso di Ingegneria del Software): https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf [visitato il: 17/02/2025];
- Slide lezione sui diagrammi dei casi d'uso (corso di Ingegneria del Software): https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf [visitato il: 17/02/2025];
- Glossario: https://techminds-unipd.github.io/docs/RTB/documenti_interni/glossario/glossario.pdf [versione 1.0.0].
#set par(justify: true)