#import "/template/template.typ":glossario
#import "./definizione-metriche.typ": getMPRODByCharcteristic

#show figure: set block(breakable: true)

== Qualità di prodotto

=== Caratteristica di qualità
Di seguito vengono descritte le metriche e le caratteristiche fondamentali che definiscono la qualità di un prodotto software.
Le sezioni principali includono una dettagliata analisi delle qualità di prodotto, con particolare attenzione a:
- Funzionalità;
- Manutenibilità;
- Efficienza;
- Usabilità;
- Portabilità.
==== Funzionalità
Misura se e quanto il prodotto software soddisfa i requisiti essenziali, desiderabili e opzionali, garantendo che le funzionalità principali siano completamente implementate.
#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPRODByCharcteristic("funzionalità").map((x) => (x.slice(0, 2), x.slice(3,5))).flatten()
  ), 
  caption: [Funzionalità - Metriche e indici di qualità.]
) <tabella-MF>
#set par(justify: true)

==== Manutenibilità
Indica quanto è semplice aggiornare, correggere e migliorare il software.
#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPRODByCharcteristic("manutenibilità").map((x) => (x.slice(0, 2), x.slice(3,5))).flatten()
  ), 
  caption: [Manutenibilità - Metriche e indici di qualità.]
) <tabella-MM>
#set par(justify: true)

==== Efficienza
Misura delle prestazioni del software in termini di utilizzo delle risorse (es. tempo di esecuzione) rispetto a soglie accettabili e ottimali.
#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPRODByCharcteristic("efficienza").map((x) => (x.slice(0, 2), x.slice(3,5))).flatten()
  ), 
  caption: [Efficienza - Metriche e indici di qualità.]
) <tabella-ME>
#set par(justify: true)

==== Usabilità
Valuta quanto è facile per gli utenti interagire con il prodotto software.
#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*],  [*Valore accettabile*], [*Valore 
      #linebreak()
      ottimale*]
    ),
    ..getMPRODByCharcteristic("usabilità").map((x) => (x.slice(0, 2), x.slice(3,5))).flatten()
  ), 
  caption: [Usabilità - Metriche e indici di qualità.]
) <tabella-MU>
#set par(justify: true)

==== Portabilità
Analizza la capacità del software di funzionare su diverse piattaforme e ambienti.
#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    ..getMPRODByCharcteristic("portabilità").map((x) => (x.slice(0, 2), x.slice(3,5))).flatten()
  ), 
  caption: [Portabilità - Metriche e indici di qualità.]
) <tabella-MP>
#set par(justify: true)
