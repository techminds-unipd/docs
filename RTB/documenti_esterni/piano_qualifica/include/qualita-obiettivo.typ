== Qualità per obiettivo
=== Processi primari
==== Analisi dei requisiti
==== Progettazione
==== Fornitura
==== Codifica

=== Processi di supporto
==== Documentazione
L'obiettivo principale della documentazione è quello di fornire una descrizione chiara e dettagliata di tutto quello che è correlato allo sviluppo del prodotto software, facilitando la comprensione, la manutenzione e l'evoluzione del prodotto durante tutto il suo ciclo di vita.

#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    [MD1], 
    [Errori ortografici],
    [4%], 
    [0%], 
    [MD2], 
    [Indice di Gulpease],
    [\u{2A7E}40], 
    [\u{2A7E}70], 
    [MD3],
    [Caption in tabelle e figure],
    [100%],
    [100%]
  ), 
  caption: [Documentazione - Metriche e indici di qualità.]
) <tabella-MetricheDocumentazione>

==== Verifica
La verifica è un processo che si occupa di accertare che non vengano introdotti errori durante le attività di progetto. Questo processo è fondamentale per garantire la qualità del prodotto finale e prepara il successo della validazione.
//TODO: aggiungere metriche di verifica
//valutare se aggiungere statement coverage, branch coverage, condition coverage
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    [MV1], 
    [Code Coverage],
    [\u{2A7E}75%], 
    [100%],
    [MV2],
    [Percentuale di test passati],
    [\u{2A7E}90%],
    [100%],
  ), 
  caption: [Verifica - Metriche e indici di qualità.]
) <tabella-MetricheVerifica>
/* Da valutare se aggiungere dato che potrebbe andare in contrasto con la parte di analisi dei requisiti dei processi primari
==== Validazione
La validazione è un processo che si occupa di accertare che il prodotto software soddisfi i requisiti specificati nel contratto con il committente.
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    [MV1], 
    [Copertura dei requisiti obbligatori],
    [100%], 
    [100%]
  ), 
  caption: [Validazione - Metriche e indici di qualità.]
) <tabella-MetricheValidazione>
*/
==== Gestione dei rischi
Il processo di gestione dei rischi ha lo scopo di identificare, analizzare e gestire i rischi che possono insorgere durante lo sviluppo del progetto.
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    [MR1], 
    [Rischi non previsti],
    [\u{2A7D}4], 
    [0]
  ), 
  caption: [Gestione dei rischi - Metriche e indici di qualità.]
) <tabella-MetricheGestioneRischi>

==== Gestione della qualità
Il processo di gestione della qualità ha lo scopo di garantire che il prodotto software soddisfi i requisiti di qualità stabiliti.
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    [MQ1], 
    [Percentuale di metriche soddisfatte],
    [\u{2A7E}80%], 
    [100%]
  ), 
  caption: [Gestione della qualità - Metriche e indici di qualità.]
) <tabella-MetricheGestioneQualita>

=== Processi organizzativi
==== Miglioramento
==== Pianificazione