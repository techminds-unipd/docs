#import "/template/template.typ":glossario

== Qualità di prodotto

=== Caratteristica di qualità
Di seguito vengono descritte le metriche e le caratteristiche fondamentali che definiscono la qualità di un prodotto software. Le sezioni principali includono una dettagliata analisi delle qualità di prodotto, con particolare attenzione a funzionalità, affidabilità, manutenibilità, efficienza, usabilità, accessibilità e portabilità.

==== Funzionalità 
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
   
    [MF1],
    [Percentuale di requisiti obbligatori soddisfatti],
    [Valuta la percentuale di requisiti essenziali stabiliti durante l'analisi che sono stati effettivamente rispettati nello sviluppo.],
    [100%],
    [100%],
    [MF2],
    [Percentuale di requisiti desiderabili soddisfatti],
    [Misura quanti dei requisiti che migliorano l'esperienza utente o aggiungono valore extra al prodotto sono stati implementati.],
    [⩾0%],
    [100%],
    [MF3],
    [Percentuale di requisiti opzionali soddisfatti],
    [Indica quanti requisiti di priorità bassa o non essenziali sono stati inclusi nel prodotto finale.],
    [⩾0%],
    [100%]
  ), 
  caption: [Tabella con codice, nome, descrizione, valori soglia accettabili e ottimali delle metriche rigurdanti le funzionalità.]
) <tabella-MF>

==== Affidabilità
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
    [MAF1], 
    [Errori ortografici],
    [Quantifica la presenza di errori di ortografia nei contenuti testuali.],
    [4], 
    [0], 
    [MAF2], 
    [#glossario[Indice di Gulpease]],
    [Determina quanto un testo sia facile da leggere in base alla complessità delle frasi e delle parole utilizzate.],
    [⩾40], 
    [⩾70],
  ), 
  caption: [Tabella con codice, nome, descrizione, valori soglia accettabili e ottimali delle metriche rigurdanti l'affidabilità.]
) <tabella-MAF>
==== Manutenibilità
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

    [MM1],
    [Accoppiamento tra classi],
    [Misura quanto sono dipendenti e connesse tra loro le classi in un sistema software.],
    [⩽9],
    [⩽6],
    [MM2],
    [Complessità ciclomatica per metodo],
    [Indica il livello di complessità di un metodo in funzione dei possibili percorsi esecutivi.],
    [⩽7],
    [⩽5],
    [MM3],
    [Parametri per metodo],
    [Numero massimo di parametri accettabili in un singolo metodo.],[⩽6],[⩽5],
[MM4],
[Linee di codice per metodo],
[Quantifica il numero massimo di righe di codice consentite in un singolo metodo.],
[⩽30],[⩽20],
[MM5],
[Attributi per classe],
[Numero massimo consentito di attributi definiti per ogni classe.],
[⩽4],[⩽3],
[MM6],
[Profondità della gerarchie],
[Misura il numero di livelli che separano una superclasse dalle sue sottoclassi.],
[⩽5],[⩽3]

  ), 
  caption: [Tabella con codice, nome, descrizione, valori soglia accettabili e ottimali delle metriche rigurdanti la manutenibilità.]
) <tabella-MM>
==== Efficienza
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
    [ME1],
    [Tempo medio di esecuzione di un workflow],
    [Calcola il tempo medio richiesto per completare un workflow.],
    [⩽20 secondi (tempo timout)], 
    [⩽10 secondi],
    [ME2],
    [Tempo medio di esecuzione tra blocchi],
    [Misura il tempo medio per eseguire operazioni definite tra due blocchi di workflow.],
    [⩽5 secondi], 
    [⩽3 secondi],
  ), 
  caption: [Tabella con codice, nome, descrizione, valori soglia accettabili e ottimali delle metriche rigurdanti l'efficienza.]
) <tabella-ME>
==== Usabilità
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

    [MU1],
    [Click per utilizzare una funzionalità],
    [Metrica che misura il numero di click minimo necessari per poter utilizzare una funzionalità.],
    [⩽7 click],
    [⩽5 click],
  ), 
  caption: [Tabella con codice, nome, descrizione, valori soglia accettabili e ottimali delle metriche rigurdanti l'usabilità.]
) <tabella-MU>

==== Accessibilità
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

    [MAC1],
    [Caption in tabelle e figure],
    [Indica quante figure e tabelle hanno un titolo descrittivo associato.],
    [100%],
    [100%],
    [MAC2],
    [Livello WCAG],
    [Valuta il livello di conformità agli standard WCAG per l'accessibilità.],
    [A],
    [AA]
  ), 
  caption: [Tabella con codice, nome, descrizione, valori soglia accettabili e ottimali delle metriche rigurdanti l'accessibilità.]
) <tabella-MAC>

==== Portabilità
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

    [MP1],
    [Versioni dei browser supportate],
    [Calcola la percentuale di versioni di browser compatibili rispetto al totale disponibile sul mercato.],
    [⩾75%],
    [100%],
  ), 
  caption: [Tabella con codice, nome, descrizione, valori soglia accettabili e ottimali delle metriche rigurdanti la portabilità.]
) <tabella-MP>
