#import "/template/template.typ":glossario
#import "./definizione-metriche.typ": getMFUN, getMAFF, getMMAN, getMEFF, getMUSA, getMACC, getMPOR

== Qualità di prodotto

=== Caratteristica di qualità
Di seguito vengono descritte le metriche e le caratteristiche fondamentali che definiscono la qualità di un prodotto software.
Le sezioni principali includono una dettagliata analisi delle qualità di prodotto, con particolare attenzione a:
- Funzionalità;
- Affidabilità;
- Manutenibilità;
- Efficienza;
- Usabilità;
- Accessibilità;
- Portabilità.
==== Funzionalità
Misura se e quanto il prodotto software soddisfa i requisiti essenziali, desiderabili e opzionali, garantendo che le funzionalità principali siano completamente implementate.
#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*],[*Valore
       #linebreak()
       accettabile*], [*Valore #linebreak()ottimale*]
    ),
    ..getMFUN(1),
    ..getMFUN(2),
    ..getMFUN(3),
  ), 
  caption: [Funzionalità - Metriche e indici di qualità.]
) <tabella-MF>
#set par(justify: true)

==== Affidabilità
Misura della stabilità e leggibilità del software.
#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore 
      #linebreak()
      accettabile*], [*Valore 
      #linebreak()
      ottimale*]
    ),
    ..getMAFF(1),
  ), 
  caption: [Affidabilità - Metriche e indici di qualità.]
) <tabella-MAF>
#set par(justify: true)

==== Manutenibilità
Indica quanto è semplice aggiornare, correggere e migliorare il software.
#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore 
      #linebreak()
      accettabile*], [*Valore 
      #linebreak()
      ottimale*]
    ),
    ..getMMAN(1),
    ..getMMAN(2),
    ..getMMAN(3),
    ..getMMAN(4),
    ..getMMAN(5),
    ..getMMAN(6),
  ), 
  caption: [Manutenibilità - Metriche e indici di qualità.]
) <tabella-MM>
#set par(justify: true)

==== Efficienza
Misura delle prestazioni del software in termini di utilizzo delle risorse (es. tempo di esecuzione) rispetto a soglie accettabili e ottimali.
#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore 
      #linebreak()
      accettabile*], [*Valore 
      #linebreak()
      ottimale*]
    ),
    ..getMEFF(1),
  ), 
  caption: [Efficienza - Metriche e indici di qualità.]
) <tabella-ME>
#set par(justify: true)

==== Usabilità
Valuta quanto è facile per gli utenti interagire con il prodotto software.
#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore 
      #linebreak()
      accettabile*], [*Valore 
      #linebreak()
      ottimale*]
    ),

    ..getMUSA(1),
  ), 
  caption: [Usabilità - Metriche e indici di qualità.]
) <tabella-MU>
#set par(justify: true)


==== Accessibilità
Capacità del prodotto di essere utilizzabile dalla più vasta gamma di utenti possibile.
#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore 
      #linebreak()
      accettabile*], [*Valore 
      #linebreak()
      ottimale*]
    ),

    ..getMACC(1),
  ), 
  caption: [Accessibilità - Metriche e indici di qualità.]
) <tabella-MAC>
#set par(justify: true)

==== Portabilità
Analizza la capacità del software di funzionare su diverse piattaforme e ambienti.
#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*], [*Valore 
      #linebreak()
      accettabile*], [*Valore 
      #linebreak()
      ottimale*]
    ),
    ..getMPOR(1),
  ), 
  caption: [Portabilità - Metriche e indici di qualità.]
) <tabella-MP>
#set par(justify: true)
