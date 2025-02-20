#import "/template/template.typ": glossario
#import "definizione_requisiti.typ": getFR, getQR, getCR
#show figure: set block(breakable: true)
= Requisiti

== Requisiti funzionali

- FMR (Functional Mandatory Requirement): irrinunciabili per qualcuno degli #glossario[stakeholder] ;
- FDR (Functional Desirable Requirement): non strettamente necessari ma a valore aggiunto riconoscibile;
- FOR (Functional Optional Requirement): relativamente utili oppure contrattabili anche in fasi avanzate nel progetto.

#set par(justify: false)
#figure(
    table(
        columns: (1fr, 5fr, 2fr),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }}, 
        inset: 10pt,
        table.header([*Codice*], [*Descrizione*], [*Fonti*]),
        align: horizon + center,
        ..getFR(getLen: false).flatten(),
    ),
    caption: [Tabella dei requisiti funzionali.],
)<tabella-dei-requisiti>

== Requisiti di qualità
I requisiti di #glossario[qualità] rappresentano come il sistema deve essere per soddisfare i requisiti dello stakeholder.\
Si dividono in:
- QMR (Qualitative Mandatory Requirement): irrinunciabili per qualcuno degli stakeholder;
- QDR (Qualitative Desirable Requirement): non strettamente necessari ma a valore aggiunto riconoscibile;
- QOR (Qualitative Optional Requirement): relativamente utili oppure contrattabili anche in fasi avanzate nel progetto.
#set par(justify: false)
#figure(
    table(
        columns: (1fr, 4fr, 2fr),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }}, 
        inset: 10pt, 
        table.header([*Codice*], [*Descrizione*], [*Fonti*] ),
        align: horizon + center,
        ..getQR(getLen: false).flatten(),
    ),
    caption: [Tabella dei requisiti di qualità.]
)<tabella-requisiti-di-qualita>
== Requisiti di vincolo
I requisiti di vincolo rappresentano delle restrizioni o dei limiti che il sistema deve rispettare.
- CMR (Constraint Mandatory Requirement): irrinunciabili per qualcuno degli stakeholder;
- CDR (Constraint Desirable Requirement): non strettamente necessari ma a valore aggiunto riconoscibile;
- COR (Constraint Optional Requirement): relativamente utili oppure contrattabili anche in fasi avanzate nel progetto.
#set par(justify: false)
#figure(
    table(
        columns: (1fr, 5fr, 2fr),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }}, 
        inset: 10pt, 
        table.header([*Codice*], [*Descrizione*], [*Fonti*]),
        align: horizon + center,
        ..getCR(getLen: false).flatten(),
    ),
    caption: [Tabella dei requisiti di vincolo.]
)<tabella-requisiti-di-vincolo>


== Tracciamento
=== Requisito - Fonte
#figure(
    table(
        columns: (auto, auto),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }}, 
        inset: 10pt, 
        table.header([*Requisito*], [*Fonte*]),
        align: horizon + center,
        ..getFR(getLen: false).map(x => (x.at(0),x.at(2))).flatten(),
        ..getQR(getLen: false).map(x => (x.at(0),x.at(2))).flatten(),
        ..getCR(getLen: false).map(x => (x.at(0),x.at(2))).flatten(),
    ),
    caption: [Tabella tracciamento requisito-fonte.]
)<tabella-tracciamento-requisito-fonte>


#let numReqFunzionali = getFR(getLen: true)
#let numReqQualita = getQR(getLen: true)
#let numReqVincolo = getCR(getLen: true)
#let numReqTotali = numReqFunzionali.sum() + numReqQualita.sum() + numReqVincolo.sum()
== Riepilogo
#set par(justify: false)
#figure(
    table(
        columns: (auto, auto, auto, auto, auto),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        inset: 10pt,
        table.header([*Tipologia*], [*Obbligatorio*], [*Desiderabile*], [*Opzionale*], [*Complessivo*]),
        align: horizon + center,
        [Funzionale], [#numReqFunzionali.at(0)], [#numReqFunzionali.at(1)], [#numReqFunzionali.at(2)],[#numReqFunzionali.sum()],
        [Di qualità], [#numReqQualita.at(0)], [#numReqQualita.at(1)], [#numReqQualita.at(2)], [#numReqQualita.sum()],
        [Di vincolo], [#numReqVincolo.at(0)], [#numReqVincolo.at(1)], [#numReqVincolo.at(2)], [#numReqVincolo.sum()],
        [*Totale*], [*#numReqFunzionali.zip(numReqQualita, numReqVincolo).at(0).sum()*],
        [*#numReqFunzionali.zip(numReqQualita, numReqVincolo).at(1).sum()*],
        [*#numReqFunzionali.zip(numReqQualita, numReqVincolo).at(2).sum()*],
        [*#numReqTotali*],
    ),
    caption: [Tabella di riepilogo dei requisiti.]
)<tabella-riepilogo>
