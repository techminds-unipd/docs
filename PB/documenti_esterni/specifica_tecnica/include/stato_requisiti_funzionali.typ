#import "../../analisi_requisiti/include/definizione_requisiti.typ": getFR, getFRByNumber
#show figure: set block(breakable: true)

= Stato requisiti funzionali
Viene riportata la tabella definita nell'#link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf")[analisi dei requisiti]#footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf")) che descrive i requisiti funzionali del sistema. In aggiunta viene riportata una colonna che definisce lo stato di avanzamento di ciascun requisito.

#let requisiti = getFR(getLen: false)
#let codice_requisiti_da_soddisfare = ("FOR1")
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
    ..getFR(getLen: false).map(x => {if (x.at(0) in codice_requisiti_da_soddisfare) {(x.at(0), x.at(1), "Non soddisfatto")} else {{(x.at(0), x.at(1), "Soddisfatto")}}}).flatten()
    
  ),
  caption: [Tabella stato requisiti funzionali.]
) <tabella-StatoRequisitiFunzionali>
#set par(justify: true)

