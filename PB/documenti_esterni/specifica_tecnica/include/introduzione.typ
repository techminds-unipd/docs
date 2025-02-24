#import "/template/template.typ": glossario
= Introduzione

== Scopo del documento
Il documento che descrive la specifica tecnica nasce con l'intenzione di documentare le scelte tecnologiche e architetturali adottate per la realizzazione del prodotto, spiegando i design pattern utilizzati e le motivazioni che hanno portato a tali scelte. Successivamente vengono tracciati i #glossario[requisiti] e il loro stato per comprendere se sono stati soddisfatti. Infine il documento avrà lo scopo di guidare la codifica del prodotto.

== Glossario
Uno dei documenti interni prodotti dal gruppo è il così detto #glossario[glossario], ovvero una lista di termini inerenti alle attività progettuali con la relativa definizione.
Il suo scopo è quello di garantire che tutti i membri del gruppo abbiano la stessa base di conoscenza e per sua natura è in continuo aggiornamento.
I termini che sono presenti all'interno del glossario, verranno scritti #glossario[in questo stile].

== Scopo del prodotto
Il #glossario[progetto] ha lo scopo di realizzare un prodotto che, utilizzando l'#glossario[intelligenza artificiale] generativa, vada ad automatizzare molte delle routine digitali che gli utenti svolgono manualmente.#linebreak()
Il prodotto sarà una web app che permetterà di costruire dei #glossario[workflow] i cui nodi sono dei servizi esterni (ad esempio un servizio Mail o un programma di videoscrittura) e gli #glossario[archi] indicheranno l'automazione da effettuare in linguaggio naturale.
Successivamente, un #glossario[agente] prenderà il workflow, interpreterà le istruzioni fornite in linguaggio naturale e le eseguirà.

== Riferimenti
=== Riferimenti normativi
- #glossario[Capitolato] C3, Automatizzare le routine digitali tramite l’intelligenza generativa: https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf [visitato il: 24/02/2025];
- Regolamento progetto didattico: https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf [visitato il: 24/02/2025].


#set par(justify: false)
=== Riferimenti informativi
- Slide argomento T6 - Progettazione software (corso di Ingegneria del Software): https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T06.pdf \[visitato il: 24/02/2025\];
- Slide lezione sui diagrammi delle classi (corso di Ingegneria del Software): https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf \[visitato il: 24/02/2025\];
- Slide lezione sui pattern architetturali (corso di Ingegneria del Software): https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf \[visitato il: 24/02/2025\];
- Slide lezione sulla dependency injection (corso di Ingegneria del Software): https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Architetturali%20-%20Dependency%20Injection.pdf \[visitato il: 24/02/2025\];
- Glossario: https://techminds-unipd.github.io/docs/RTB/documenti_interni/glossario/glossario.pdf \[versione 1.0.0\];
- #glossario[Analisi dei Requisiti]: https://techminds-unipd.github.io/docs/RTB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf \[versione 1.2.0\].
- TODO linkare documentazione aggiuntive per le tecnologie
#set par(justify: true)