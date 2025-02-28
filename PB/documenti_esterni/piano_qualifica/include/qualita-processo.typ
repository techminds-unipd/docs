#import "./definizione-metriche.typ": getMPROCByProcess
#show figure: set block(breakable: true)

== Qualità di processo
=== Processi primari

==== Fornitura
Il processo di fornitura si occupa sia della gestione delle attività in cui il proponente è coinvolto, sia della gestione delle risorse necessarie a consegnare al proponente un prodotto che soddisfi i requisiti.
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPROCByProcess("fornitura", false, true).flatten()
  ), 
  caption: [Fornitura - Metriche e indici di qualità.]
) <tabella-MetricheFornitura>
#set par(justify: true)

==== Sviluppo
Il processo di sviluppo si occupa della controllo e della gestione di tutte le fasi del ciclo di vita del prodotto software.
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPROCByProcess("sviluppo", false, true).flatten()
  ), 
  caption: [Sviluppo - Metriche e indici di qualità.]
) <tabella-MetricheSviluppo>
#set par(justify: true)

=== Processi di supporto
==== Documentazione
L'obiettivo principale della documentazione è quello di fornire una descrizione chiara e dettagliata di tutto quello che è correlato allo sviluppo del prodotto software, facilitando la comprensione, la manutenzione e l'evoluzione del prodotto durante tutto il suo ciclo di vita.

#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ), 
    ..getMPROCByProcess("documentazione", false, true).flatten()
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
    columns: (0.65fr, 1.1fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPROCByProcess("verifica", false, true).flatten()
  ), 
  caption: [Verifica - Metriche e indici di qualità.]
) <tabella-MetricheVerifica>
#set par(justify: true)

==== Gestione dei rischi
Il processo di gestione dei rischi ha lo scopo di identificare, analizzare e gestire i rischi che possono insorgere durante lo sviluppo del progetto.
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
  ..getMPROCByProcess("gestione rischi", false, true).flatten()
  ), 
  caption: [Gestione dei rischi - Metriche e indici di qualità.]
) <tabella-MetricheGestioneRischi>
#set par(justify: true)

==== Gestione della qualità
Il processo di gestione della qualità ha lo scopo di garantire che il prodotto software soddisfi i requisiti di qualità stabiliti.
#set par(justify: false)
#figure(
  table(
    columns: (0.65fr, 1.1fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPROCByProcess("gestione qualità", false, true).flatten()
  ), 
  caption: [Gestione della qualità - Metriche e indici di qualità.]
) <tabella-MetricheGestioneQualita>
#set par(justify: true)