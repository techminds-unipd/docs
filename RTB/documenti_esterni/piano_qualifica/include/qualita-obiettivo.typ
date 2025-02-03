== Qualità per obiettivo
=== Processi primari
==== Analisi dei requisiti
L'analisi dei requisiti è il processo che si occupa di individuare, definire e documentare le necessità e le aspettative degli stakeholder sotto forma di requisiti. #linebreak() L'obiettivo principale di questo processo è garantire che il prodotto software soddisfi le esigenze del committente.
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ), 
    [MF1], 
    [Percentuale di requisiti obbligatori soddisfatti],
    [100%], 
    [100%],
    [MF2],
    [Percentuale di requisiti desiderabili soddisfatti],
    [\u{2A7E}0%], 
    [100%],
    [MF3],
    [Percentuale di requisiti opzionali soddisfatti],
    [\u{2A7E}0%], 
    [100%],
    [MPC10],
    [Requirements Stability Index (RSI)],
    [\u{2A7E}80%],
    [100%],
  ), 
  caption: [Analisi dei requisiti - Metriche e indici di qualità.]
) <tabella-MetricheAnalisiRequisiti>
==== Progettazione
La progettazione è il processo che si occupa di definire la struttura del sistema software in modo da soddisfare i requisiti individuati durante l'analisi. Durante questo processo vengono individuate le specifiche tecniche ed architetturali che guideranno la codifica del prodotto software.
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ), 
    [MM1],
    [Accoppiamento tra classi],
    [\u{2A7D}9],
    [\u{2A7D}6],
    [MM6],
    [Profondità della gerarchie],
    [\u{2A7D}5],
    [\u{2A7D}3],
    [ME1],
    [Tempo medio di esecuizone di un workflow],
    [\u{2A7D}20 secondi (tempo timout)], 
    [\u{2A7D}10 secondi],
    [MU1],
    [Click per utilizzare una funzionalità],
    [\u{2264}7 click],
    [\u{2264}5 click],
    [MAC2],
    [Livello WCAG],
    [A],
    [AA]
  ), 
  caption: [Progettazione - Metriche e indici di qualità.]
) <tabella-MetricheProgettazione>
==== Fornitura
Il processo di fornitura si occupa sia della gestione delle attività in cui il proponente è coinvolto sia della gestione delle risorse necessarie a consegnare al proponente un prodotto che soddisfi i requisiti.
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    [MPC1],
    [Earned Value (EV)],
    [\u{2A7E}0],
    [\u{2264} EAC],
    [MPC2],
    [Actual Cost (AC)],
    [\u{2A7E}0],
    [\u{2264} EAC],
    [MPC3],
    [Planned Value (PV)],
    [\u{2A7E}0],
    [\u{2264} BAC],
    [MPC4],
    [Cost Variance (CV)],
    [\u{2A7E}-10%],
    [\u{2A7E}0],
    [MPC5],
    [Schedule Variance (SV)],
    [\u{2A7E}-10%],
    [\u{2A7E}0],
    [MPC6],
    [Cost Performance Index (CPI)],
    [\u{00B1}10%],
    [\u{00B1}0%],
    [MPC7],
    [Estimate at completion (EAC)],
    [\u{00B1}5% rispetto a quanto preventivato], 
    [Come preventivato],
    [MPC8],
    [Estimate to complete (ETC)],
    [\u{2A7E}0],
    [\u{2264} EAC],
    [MPC9],
    [Schedule Performance Index (SPI)],
    [\u{00B1}10%],
    [\u{00B1}0%],
  ), 
  caption: [Fornitura - Metriche e indici di qualità.]
) <tabella-MetricheFornitura>
==== Codifica
Il processo di codifica si occupa di realizzare effettivamente il prodotto software, trasformando la progettazione in codice sorgente e garantendo il soddisfacimento dei requisiti. 
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    [MM2],
    [Complessità ciclomatica per metodo],
    [\u{2A7D}7],
    [\u{2A7D}5],
    [MM3],
    [Parametri per metodo],
    [\u{2A7D}6],
    [\u{2A7D}5],
    [MM4],
    [Linee di codice per metodo],
    [\u{2A7D}30],
    [\u{2A7D}20],
    [MM5],
    [Attributi per classe],
    [\u{2A7D}4],
    [\u{2A7D}3],
    [MP1],
    [Versioni dei browser supportate],
    [\u{2A7D}75%],
    [100%],
  ), 
  caption: [Codifica - Metriche e indici di qualità.]
) <tabella-MetricheCodifica>

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
    [Indice di Gulpease],
    [\u{2A7E}40], 
    [\u{2A7E}70], 
    [MD2],
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
==== Pianificazione
La Pianificazione organizza obiettivi, risorse e tempistiche per guidare il successo di un progetto.
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    [MPI1], 
    [Variazione del costo preventivato per uno sprint],
    [\u{2A7D}5%], 
    [\u{2A7D}0%],
    [MPI2],
    [Variazione delle tempistiche di una baseline],
    [\u{2A7D}10%], 
    [\u{2A7D}0%],
    [MPI3],
    [Percentuale di attività (issue) completate in uno sprint],
    [\u{2A7E}90%], 
    [100%],

  ), 
  caption: [Tabella con codice, nome, descrizione, valori soglia accettabili e ottimali delle metriche riguardanti la pianificazione.]
) <tabella-MetrichePianificazione>

==== Miglioramento
Il processo di miglioramento mira a identificare le aree che possono essere ottimizzate o migliorate.
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    [MMI1], 
    [Percentuale di metriche che non hanno raggiunto il valore accettabile],
    [\u{2A7D}5%], 
    [0%],
    [MMI2], 
    [Percentuale di metriche che hanno raggiunto il valore ottimale],
    [\u{2A7E}30%], 
    [100%],

  ), 
  caption: [Tabella con codice, nome, descrizione, valori soglia accettabili e ottimali delle metriche riguardanti il miglioramento.]
) <tabella-MetricheMiglioramento>