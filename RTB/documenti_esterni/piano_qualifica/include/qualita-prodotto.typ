
#import "/template/template.typ":glossario

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
- Portabilità;
==== Funzionalità
Misura di quanto il prodotto software soddisfa i requisiti essenziali, desiderabili e opzionali, garantendo che le funzionalità principali siano completamente implementate.
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
   
    [MFUN1],
    [Percentuale di requisiti obbligatori soddisfatti],
    [Metrica che valuta
quanto del lavoro svolto
durante lo sviluppo corrisponda ai requisiti essenziali o obbligatori
definiti in fase di analisi
dei requisit],
    [100%],
    [100%],
    [MFUN2],
    [Percentuale di requisiti desiderabili soddisfatti],
    [Metrica usata per valutare quanti di quei
requisiti, che se integrati arricchirebbero
l’esperienza dell’utente
o fornirebbero vantaggi
aggiuntivi non strettamente necessari, sono
stati implementati o
soddisfatti nel prodotto],
    [\u{2A7E}0%],
    [100%],
    [MFUN3],
    [Percentuale di requisiti opzionali soddisfatti],
    [Metrica per valutare
quanti dei requisiti aggiuntivi, non essenziali o
di bassa priorità, sono
stati implementati o
soddisfatti nel prodotto],
    [\u{2A7E}0%],
    [100%]
  ), 
  caption: [Funzionalità - Metriche e indici di qualità.]
) <tabella-MF>

==== Affidabilità
Misura della stabilità e leggibilità del software.
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
    [MAFF1], 
    [#glossario[Indice di Gulpease]],
    [Misura la leggibilità di
un testo in base alla
lunghezza delle parole
e delle frasi],
    [40], 
    [70],
  ), 
  caption: [Affidabilità - Metriche e indici di qualità.]
) <tabella-MAF>
==== Manutenibilità
Indica quanto è semplice aggiornare, correggere o migliorare il software.
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

    [MMAN1],
    [Accoppiamento tra
classi
],
    [Misura della dipendenza
e dell’interconnessione
tra le classi all’interno di
un sistema software],
    [\u{2A7D}9],
    [\u{2A7D}6],
    [MMAN2],
    [Complessità ciclomatica
per metodo],
    [Rappresenta la complessità di un metodo in
base ai percorsi possibili.],
    [\u{2A7D}7],
    [\u{2A7D}5],
    [MMAN3],
    [Parametri per metodo],
    [Numero massimo di
parametri per metodo.],[\u{2A7D}6],[\u{2A7D}5],
[MMAN4],
[Linee di codice per
metodo],
[Numero massimo di linee di codice per metodo.],
[\u{2A7D}30],[\u{2A7D}20],
[MMAN5],
[Attributi per classe],
[Numero massimo di attributi per classe.],
[\u{2A7D}4],[\u{2A7D}3],
[MMAN6],
[Profondità della gerarchie],
[Metrica che misura il
numero di livelli tra una
classe base (superclasse) e le sue sottoclassi (classi derivate)],
[\u{2A7D}5],[\u{2A7D}3]

  ), 
  caption: [Manutenibilità - Metriche e indici di qualità.]
) <tabella-MM>

==== Efficienza
Misura delle prestazioni del software in termini di utilizzo delle risorse (es. tempo di esecuzione) rispetto a soglie accettabili e ottimali.
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
    [MEFF1],
    [Tempo medio di esecuizone di un workflow],
    [Misura il tempo medio di esecuzione di un workflow],
    [\u{2A7D}20 secondi (tempo timeout)], 
    [\u{2A7D}10 secondi],
  ), 
  caption: [Efficienza - Metriche e indici di qualità.]
) <tabella-ME>
==== Usabilità
Valuta quanto è facile per gli utenti interagire con il prodotto software.
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

    [MUSA1],
    [Click per utilizzare una funzionalità],
    [Metrica che misura il numero di click minimo necessari per poter utilizzare una funzionalità.],
    [⩽7 click],
    [⩽5 click],
  ), 
  caption: [Usabilità - Metriche e indici di qualità.]
) <tabella-MU>


==== Accessibilità
Capacità del prodotto di essere utilizzabile dalla più vasta gamma di utenti possibile.
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

    [MACC1],
    [Caption in tabelle e figure],
    [Indica quante figure e tabelle hanno un titolo descrittivo associato.],
    [100%],
    [100%],
    [MACC2],
    [Livello WCAG],
    [Valuta il livello di conformità agli standard WCAG per l'accessibilità.],
    [A],
    [AA]
  ), 
  caption: [Accessibilità - Metriche e indici di qualità.]
) <tabella-MAC>

==== Portabilità
Analizza la capacità del software di funzionare su diverse piattaforme e ambienti.
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

    [MPOR1],
    [Versioni dei browser supportate],
    [Calcola la percentuale di versioni di browser compatibili rispetto al totale disponibile sul mercato.],
    [⩾75%],
    [100%],
  ), 
  caption: [Portabilità - Metriche e indici di qualità.]
) <tabella-MP>
