#import "/template/template.typ": glossario
#import "./definizione-metriche.typ": getMPRO

== Qualità di processo
#{
set par(justify: false)
show figure: set block(breakable: true)
figure(
  table(
    columns: (0.65fr, 1.1fr, 2fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*],[*Valore
       #linebreak()
       accettabile*], [*Valore #linebreak()ottimale*]
    ),
    ..getMPRO(1),
    ..getMPRO(2),
    ..getMPRO(3),
    ..getMPRO(4),
    ..getMPRO(5),
    ..getMPRO(6),
    ..getMPRO(7),
    ..getMPRO(8),
    ..getMPRO(9),
    ..getMPRO(10),
    ..getMPRO(11),
    ..getMPRO(12),
    ..getMPRO(13),
    ..getMPRO(14),
    ..getMPRO(15),
  ), 
  caption: [Qualità di processo - Metriche e indici di qualità.]
)} <tabella-qualita-processo>

#set par(justify: true)
