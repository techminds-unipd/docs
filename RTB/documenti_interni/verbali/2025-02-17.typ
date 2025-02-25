#import "/template/template.typ": verbale, team

#show: verbale.with(
    title: "Verbale interno del 17/02/2025",
    sommario: "Verbale che riassume la riunione del 17/02/2025.",
    autore: team.C,
    verificatore: team.S,
    durata_luogo: ("8:00", "10:00", "chiamata Discord"),
    partecipanti: (team.A, team.S, team.T, team.M, team.G, team.C, team.L),
    ordine_giorno: ("Sprint plan",),
    riassunto: [Ci siamo riuniti per celebrare lo sprint plan dello sprint 6, che avrà la durata di una settimana.
        Questo sprint sarà breve perchè il suo obiettivo è quello di apportare le correzioni suggerite dal prof. Cardin per l'analisi dei requisiti.
        Abbiamo creato tutte le issue relative all'analisi, sotto segue una lista esaustiva di ciò.
    ],
    decisioni: (
        ([Analisi dei requisiti],
            [#link("https://github.com/techminds-unipd/docs/issues/342")[Issue \#342]: Aggiungere nuova tabella Tracciamento],
            [#link("https://github.com/techminds-unipd/docs/issues/341")[Issue \#341]: Rendere atomici i requisiti funzionali],
            [#link("https://github.com/techminds-unipd/docs/issues/340")[Issue \#340]: Aggiungere nuovi requisiti funzionali],
            [#link("https://github.com/techminds-unipd/docs/issues/339")[Issue \#339]: Correzione requisiti qualità e vincolo],
            [#link("https://github.com/techminds-unipd/docs/issues/338")[Issue \#338]: Correzione salvataggio workflow],
            [#link("https://github.com/techminds-unipd/docs/issues/337")[Issue \#337]: Correzione visualizzazione blocchi configurati],
            [#link("https://github.com/techminds-unipd/docs/issues/336")[Issue \#336]: Correzione visualizzazione, creazione e risultato workflow],
            [#link("https://github.com/techminds-unipd/docs/issues/335")[Issue \#335]: Correzione esecuzione del workflow],
            [#link("https://github.com/techminds-unipd/docs/issues/334")[Issue \#334]: Risoluzione struttura UC],
            [#link("https://github.com/techminds-unipd/docs/issues/333")[Issue \#333]: Aggiungere numeri di versione e ultima visita nei link],
        ),
        ([Piano di Progetto],
            [#link("https://github.com/techminds-unipd/docs/issues/343")[Issue \#343]: Pianificazione sprint 6],
            [#link("https://github.com/techminds-unipd/docs/issues/330")[Issue \#330]: Aggiungere issue non inizialmente pianificate in sprint 5],
            [#link("https://github.com/techminds-unipd/docs/issues/325")[Issue \#325]: Documentare preventivo a finire in struttura sprint],
            [#link("https://github.com/techminds-unipd/docs/issues/324")[Issue \#324]: Ridondanza diagramma di Gantt],
        ),
        ([Altro],
            [#link("https://github.com/techminds-unipd/docs/issues/313")[Issue \#313]: Mettere il numero di versione sui documenti nel sito web],
        ),
    ),
    firma: false
)
