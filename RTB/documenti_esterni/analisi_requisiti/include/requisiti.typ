#import "/template/template.typ": glossario
#import "definizione_requisiti.typ": getFR, getCR
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
        [QMR1],[Documentare nella specifica tecnica le criticità e i limiti delle soluzioni individuate.],[Capitolato],
        //[QMR2], [Dotarsi di un design modulare per agevolare la creazione di nuovi blocchi.],[],[Capitolato],
        [QMR2],[Documentare nel #glossario[piano di qualifica] i bug presenti.],[Capitolato],
        [QMR3],[Fornire il codice sorgente del prodotto attraverso un sistema di versionamento.],[Capitolato],
        [QMR4],[Documentare nel piano di qualifica la copertura dei #glossario[test di unità] (almeno il 70% del codice prodotto).],[Capitolato],
        //Questo è un link ricorsivo
        [QMR5],[Documentare nell'#glossario[analisi dei requisiti] i casi d'uso.],[Capitolato],
        [QMR6],[Documentare nella specifica tecnica le classi attraverso #glossario[diagrammi UML].],[Capitolato],
        //[QMR7],[Rispettare quanto scritto nel documento "Norme di progetto" durante lo sviluppo del prodotto e della documentazione.],[],[Norme di progetto],
        [QMR7],[La documentazione deve rispettare le metriche descritte nel piano di qualifica.],[Piano di qualifica §2.2],
        [QDR1],[Le #glossario[API] devono essere documentate attraverso #glossario[Swagger].],[Formazione col proponente],
        [QDR2],[Il codice #glossario[TypeScript] deve essere formattato secondo le regole #glossario[ESLint] descritte nelle norme di progetto.],[Decisione interna, Formazione col proponente]
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
        /*
        [CDR1], [Il prodotto deve essere sviluppato in container #glossario[Docker], facilitando così il rilascio su vari ambienti cloud (ad esempio #glossario[AWS]).], [Capitolato, Riunione col proponente],
        [CMR1],[Le parti del sistema devono comunicare tra di loro attraverso #glossario[API] che usano il protocollo HTTP contenenti oggetti in formato JSON.],[Decisione interna],
        [CMR2], [Il prodotto deve funzionare correttamente su Firefox 128 ESR o versioni successive.], [Decisione interna],
        [CMR3], [Il prodotto deve funzionare correttamente sull'ultima versione stable di Chromium.], [Decisione interna],
        */
    ),
    caption: [Tabella dei requisiti di vincolo.]
)<tabella-requisiti-di-vincolo>

== Riepilogo
#set par(justify: false)
#figure(
    table(
        columns: (auto, auto, auto, auto, auto),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        inset: 10pt,
        table.header([*Tipologia*], [*Obbligatorio*], [*Desiderabile*], [*Opzionale*], [*Complessivo*]),
        align: horizon + center,
        [Funzionale], [], [], [],[],
        [Di qualità], [], [], [], [],
        [Di vincolo], [], [], [], [],
        [*Totale*], [*26*], [*3*], [*1*], [*30*],
    ),
    caption: [Tabella di riepilogo dei requisiti.]
)<tabella-riepilogo>
