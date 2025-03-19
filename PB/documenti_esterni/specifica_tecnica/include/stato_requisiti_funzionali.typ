#import "../../analisi_requisiti/include/definizione_requisiti.typ": getFR, getFRByNumber

= Stato requisiti funzionali
Viene riportata la tabella definita nell'#link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf")[analisi dei requisiti]#footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf")) che descrive i requisiti funzionali del sistema. In aggiunta viene riportata una colonna che definisce lo stato di avanzamento di ciascun requisito.

#let requisiti = getFR(getLen: false)

#set par(justify: false)
#figure(
  table(
    columns: (auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Descrizione metrica*], [*Stato*]
    ),
    [#requisiti.at(0).at(0)], [#requisiti.at(0).at(1)], [Soddisfatto],
    [#requisiti.at(1).at(0)], [#requisiti.at(1).at(1)], [Soddisfatto],
    [#requisiti.at(2).at(0)], [#requisiti.at(2).at(1)], [Soddisfatto],
    [#requisiti.at(3).at(0)], [#requisiti.at(3).at(1)], [Soddisfatto],
    [#requisiti.at(4).at(0)], [#requisiti.at(4).at(1)], [Soddisfatto],
    [#requisiti.at(5).at(0)], [#requisiti.at(5).at(1)], [Soddisfatto],
    [#requisiti.at(6).at(0)], [#requisiti.at(6).at(1)], [Soddisfatto],
    [#requisiti.at(7).at(0)], [#requisiti.at(7).at(1)], [Soddisfatto],
    [#requisiti.at(8).at(0)], [#requisiti.at(8).at(1)], [Soddisfatto],
    [#requisiti.at(9).at(0)], [#requisiti.at(9).at(1)], [Soddisfatto],
    [#requisiti.at(10).at(0)], [#requisiti.at(10).at(1)], [Soddisfatto],
    [#requisiti.at(11).at(0)], [#requisiti.at(11).at(1)], [Soddisfatto],
    [#requisiti.at(12).at(0)], [#requisiti.at(12).at(1)], [Soddisfatto],
    [#requisiti.at(13).at(0)], [#requisiti.at(13).at(1)], [Soddisfatto],
    [#requisiti.at(14).at(0)], [#requisiti.at(14).at(1)], [Soddisfatto],
    [#requisiti.at(15).at(0)], [#requisiti.at(15).at(1)], [Soddisfatto],
    [#requisiti.at(16).at(0)], [#requisiti.at(16).at(1)], [Soddisfatto],
    [#requisiti.at(17).at(0)], [#requisiti.at(17).at(1)], [Soddisfatto],
    [#requisiti.at(18).at(0)], [#requisiti.at(18).at(1)], [Soddisfatto],
    [#requisiti.at(19).at(0)], [#requisiti.at(19).at(1)], [Soddisfatto],
    [#requisiti.at(20).at(0)], [#requisiti.at(20).at(1)], [Soddisfatto],
    [#requisiti.at(21).at(0)], [#requisiti.at(21).at(1)], [Soddisfatto],
    [#requisiti.at(22).at(0)], [#requisiti.at(22).at(1)], [Soddisfatto],
    [#requisiti.at(23).at(0)], [#requisiti.at(23).at(1)], [Soddisfatto],
    [#requisiti.at(24).at(0)], [#requisiti.at(24).at(1)], [Soddisfatto],
    [#requisiti.at(25).at(0)], [#requisiti.at(25).at(1)], [Soddisfatto],
    [#requisiti.at(26).at(0)], [#requisiti.at(26).at(1)], [Soddisfatto],
    [#requisiti.at(27).at(0)], [#requisiti.at(27).at(1)], [Soddisfatto],
    [#requisiti.at(28).at(0)], [#requisiti.at(28).at(1)], [Soddisfatto],
    [#requisiti.at(29).at(0)], [#requisiti.at(29).at(1)], [Soddisfatto],
    [#requisiti.at(30).at(0)], [#requisiti.at(30).at(1)], [Soddisfatto],
    [#requisiti.at(31).at(0)], [#requisiti.at(31).at(1)], [Soddisfatto],
    [#requisiti.at(32).at(0)], [#requisiti.at(32).at(1)], [Soddisfatto],
    [#requisiti.at(33).at(0)], [#requisiti.at(33).at(1)], [Soddisfatto],
    
  ),
  caption: [Tabella stato requisiti funzionali.]
) <tabella-StatoRequisitiFunzionali>
#set par(justify: true)

