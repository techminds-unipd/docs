#import "/template/template.typ": glossario
= Miglioramenti
I miglioramenti rappresentano una componente fondamentale per la raggiunta degli obiettivi di qualità posti dal gruppo. Essere in grado di rilevare i problemi, trovarne le cause e di conseguenza adottare le soluzioni per evitare che i problemi si ripresentino, è parte centrale dell'approccio a questo progetto. In questa sezione vengono elencati i problemi che si sono verificati, la soluzione adottata e il codice del rischio associato. 

#figure(
  table(
    columns: (auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white}},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Problema*], [*Codice rischio*], [*Soluzione*],
    ),
    [Mancanza di conoscenza delle tecnologie da utilizzare nel progetto.],
    [RP4],
    [Il primo #glossario[sprint] è stato dedicato all'auto-formazione sulle tecnologie da utilizzare nel progetto, promuovendo auto-formazione e collaborazione tra i membri. Inoltre il proponente ha offerto tre corsi di formazione per dare una base solida per l'utilizzo delle tecnologie.]
  ), 
  caption: [Miglioramento per il rischio RP4 nello sprint 1.]
)

#figure(
  table(
    columns: (auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white}},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Problema*], [*Codice rischio*], [*Soluzione*],
    ),
    [#glossario[LaTeX] ha una sintassi a volte troppo complessa e non permette di fare scripting per i template.],
    [RT1],
    [Passaggio a #glossario[Typst] per la scrittura, modifica e verifica della
    documentazione.]
  ), 
  caption: [Miglioramento per il rischio RT1 nello sprint 1.]
) <tabella-MT>

#figure(
  table(
    columns: (auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white}},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Problema*], [*Codice rischio*], [*Soluzione*],
    ),
    [Comunicazioni con l'azienda poco frequenti.],
    [ROE1],
    [Organizzazione di incontri regolari e programmati ad ogni fine sprint. Questo permette di chiarire eventuali dubbi o problemi e di allinearsi con il proponente sullo stato di avanzamento del progetto.]
  ), 
  caption: [Miglioramento per il rischio ROE1 nello sprint 6.]
)

#figure(
  table(
    columns: (auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white}},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Problema*], [*Codice rischio*], [*Soluzione*],
    ),
    [Mancanza di conoscenza delle tecnologie da utilizzare per l'implementazione dei test durante lo sprint 8.],
    [RP4],
    [Collaborazione tra i membri del team che si sono documentati tempestivamente sulla tecnologia utilizzata. Implementazione dei primi test in gruppo.]
  ), 
  caption: [Miglioramento per il rischio RP4 nello sprint 8.]
)