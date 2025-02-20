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

#let fonte-requisito = getFR(getLen: false).map(x => (x.at(2),x.at(0))) + getQR(getLen: false).map(x => (x.at(2),x.at(0))) + getCR(getLen: false).map(x => (x.at(2),x.at(0)))

#let formatted-fonte-requisito = fonte-requisito.map(x => {
    let item = x.at(0)
    if item.has("text") {
        return (item.text.split(",").map(z => (z.trim(), x.at(1))))
    }
    else if item.has("children") {
        let refs = item.children.filter(x => x.has("target"))
        return refs.map(y => (y, x.at(1)))
    }
    else if item.has("target"){
        return x
    }
}).flatten().chunks(2)

#let unique-requisiti = formatted-fonte-requisito.map(x => x.at(0)).flatten().dedup()
#let fonte-requisito = ()
#for item in unique-requisiti {
    fonte-requisito.push((item, formatted-fonte-requisito.filter(x => x.at(0) == item).map(x => x.at(1)).join(", ")))
}
#fonte-requisito.insert(2, fonte-requisito.pop())
#fonte-requisito.insert(3, fonte-requisito.pop())


=== Fonte - Requisito
#figure(
    table(
        columns: (5cm, 5.5cm),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }}, 
        inset: 10pt, 
        table.header([*Fonte*], [*Requisito*]),
        align: horizon + center,
        ..fonte-requisito.flatten()
    ),
    caption: [Tabella tracciamento fonte-requisito.]
)<tabella-tracciamento-fonte-requisito>

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
