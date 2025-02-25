#import "/template/template.typ": glossario
#import "/template/template.typ": sezione_glossario
#import "/template/template.typ": sezione_scopo_prodotto
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
#sezione_glossario

== Scopo del prodotto
#sezione_scopo_prodotto

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