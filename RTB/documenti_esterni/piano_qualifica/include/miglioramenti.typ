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
    [#glossario[LaTeX] ha una sintassi a volte troppo complessa e non permette di fare scripting per i template.],
    [RT1],
    [Passaggio a #glossario[Typst] per la scrittura, modifica e verifica della
    documentazione.]
  ), 
  caption: [Miglioramento per il rischio RT1.]
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
    [Mancanza di conoscenza delle tecnologie da utilizzare nel progetto.],
    [RP4],
    [Il primo #glossario[sprint] è stato dedicato all'auto-formazione sulle tecnologie da utilizzare nel progetto, promuovendo auto-formazione e collaborazione tra i membri. Inoltre il proponente ha offerto tre corsi di formazione per dare una base solida per l'utilizzo delle tecnologie.]
  ), 
  caption: [Miglioramento per il rischio RP4.]
)
