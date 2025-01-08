#import "/template/template.typ": glossario
= Miglioramenti

== Tecnologie
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
  caption: [problemi e soluzione per miglioramenti tecnologici.]
) <tabella-MT>

== Organizzazione e impegni personali

== Ruoli
