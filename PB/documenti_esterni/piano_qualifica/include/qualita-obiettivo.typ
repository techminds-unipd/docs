#import "./definizione-metriche.typ": getMPRO, getMFUN, getMAFF, getMMAN, getMEFF, getMUSA, getMACC, getMPOR
#show figure: set block(breakable: true)

== Qualità per obiettivo
=== Processi primari
==== Analisi dei requisiti
L'analisi dei requisiti è il processo che si occupa di individuare, definire e documentare le necessità e le aspettative degli stakeholder sotto forma di requisiti. #linebreak() L'obiettivo principale di questo processo è garantire che il prodotto software soddisfi le esigenze del committente.
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 2fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore accettabile*], [*Valore ottimale*]
    ), 
    ..getMFUN(1),
    ..getMFUN(2),
    ..getMFUN(3),
    ..getMPRO(10),
  ), 
  caption: [Analisi dei requisiti - Metriche e indici di qualità.]
) <tabella-MetricheAnalisiRequisiti>
#set par(justify: true)

==== Progettazione
La progettazione è il processo che si occupa di definire la struttura del sistema software in modo da soddisfare i requisiti individuati durante l'analisi. Durante questo processo vengono individuate le specifiche tecniche ed architetturali che guideranno la codifica del prodotto software.
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 2fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore accettabile*], [*Valore ottimale*]
    ), 
    ..getMMAN(1),
    ..getMMAN(6),
    ..getMEFF(1),
    ..getMUSA(1),
  ), 
  caption: [Progettazione - Metriche e indici di qualità.]
) <tabella-MetricheProgettazione>
#set par(justify: true)

==== Fornitura
Il processo di fornitura si occupa sia della gestione delle attività in cui il proponente è coinvolto sia della gestione delle risorse necessarie a consegnare al proponente un prodotto che soddisfi i requisiti.
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 2fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPRO(1),
    ..getMPRO(2),
    ..getMPRO(3),
    ..getMPRO(4),
    ..getMPRO(5),
    ..getMPRO(6),
    ..getMPRO(7),
    ..getMPRO(8),
    ..getMPRO(9),
  ), 
  caption: [Fornitura - Metriche e indici di qualità.]
) <tabella-MetricheFornitura>
#set par(justify: true)

==== Codifica
Il processo di codifica si occupa di realizzare effettivamente il prodotto software, trasformando la progettazione in codice sorgente e garantendo il soddisfacimento dei requisiti. 
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 2fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMMAN(2),
    ..getMMAN(3),
    ..getMMAN(4),
    ..getMMAN(5),
    ..getMPOR(1),
  ), 
  caption: [Codifica - Metriche e indici di qualità.]
) <tabella-MetricheCodifica>
#set par(justify: true)

=== Processi di supporto
==== Documentazione
L'obiettivo principale della documentazione è quello di fornire una descrizione chiara e dettagliata di tutto quello che è correlato allo sviluppo del prodotto software, facilitando la comprensione, la manutenzione e l'evoluzione del prodotto durante tutto il suo ciclo di vita.

#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 2fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore accettabile*], [*Valore ottimale*]
    ), 
    ..getMAFF(1),
    ..getMACC(1),
  ), 
  caption: [Documentazione - Metriche e indici di qualità.]
) <tabella-MetricheDocumentazione>
#set par(justify: true)

==== Verifica
La verifica è un processo che si occupa di accertare che non vengano introdotti errori durante le attività di progetto. Questo processo è fondamentale per garantire la qualità del prodotto finale e prepara il successo della validazione.
//TODO: aggiungere metriche di verifica
//valutare se aggiungere statement coverage, branch coverage, condition coverage
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 2fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPRO(12),
    ..getMPRO(13),
  ), 
  caption: [Verifica - Metriche e indici di qualità.]
) <tabella-MetricheVerifica>
#set par(justify: true)

==== Gestione dei rischi
Il processo di gestione dei rischi ha lo scopo di identificare, analizzare e gestire i rischi che possono insorgere durante lo sviluppo del progetto.
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 2fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPRO(11),
  ), 
  caption: [Gestione dei rischi - Metriche e indici di qualità.]
) <tabella-MetricheGestioneRischi>
#set par(justify: true)

==== Gestione della qualità
Il processo di gestione della qualità ha lo scopo di garantire che il prodotto software soddisfi i requisiti di qualità stabiliti.
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 2fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPRO(14),
  ), 
  caption: [Gestione della qualità - Metriche e indici di qualità.]
) <tabella-MetricheGestioneQualita>
#set par(justify: true)

=== Processi organizzativi
==== Pianificazione
La Pianificazione organizza obiettivi, risorse e tempistiche per guidare il successo di un progetto.
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 2fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPRO(4),
    ..getMPRO(5),
    
  ), 
  caption: [Pianificazione - Metriche e indici di qualità.]
) <tabella-MetrichePianificazione>
#set par(justify: true)

==== Miglioramento
Il processo di miglioramento mira a identificare le aree che possono essere ottimizzate o migliorate.
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 2fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPRO(14),
    ..getMPRO(15),

  ), 
  caption: [Miglioramento - Metriche e indici di qualità.]
) <tabella-MetricheMiglioramento>
#set par(justify: true)
