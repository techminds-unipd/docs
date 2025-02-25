#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale interno del 13/01/2025",
  sommario: "Verbale che riassume la riunione del 13/01/2025.",
  autore: team.S,
  verificatore: team.G,
  durata_luogo: ("09:30", "12:00", "chiamata Discord"),
  partecipanti: (team.A, team.S, team.T, team.M, team.G, team.C, team.L),
  ordine_giorno: ("Sprint retrospective", "Sprint plan"),
  riassunto: [Ci siamo riuniti per celebrare la sprint retrospective dello sprint 3, successivamente abbiamo celebrato lo sprint plan dello sprint 4.
             Abbiamo visionato i documenti prodotti nello sprint 3 e il PoC, in modo da allinearci sui vari progressi.
             Successivamente abbiamo visionato la Project Board di Github per verificare quali task dovevano essere completati entro fine sprint. Solo un task non è stato completato, quindi abbiamo deciso di eliminarlo per crearne altri più specifici e di dimensione minore, in modo da facilitare la divisione del compito.

             Durante la riunione abbiamo deciso di chiedere un incontro con il professor Cardin per chiarire alcuni dubbi riguardanti i casi d'uso. Inoltre abbiamo chiesto un incontro anche con l'azienda proponente per mostrare il documento di analisi dei requisiti e avere un riscontro sul PoC.

             In seguito abbiamo discusso per decidere una possibile data per la prima revisione RTB, basandoci sul lavoro ancora da svolgere e sul periodo caratterizzato dagli esami, la data approssimativa scelta è stata il 10/02/2025.

             Successivamente abbiamo celebrato lo sprint plan dello sprint 4, che avrà la durata di tre settimane. Lo sprint sarà più lungo del solito a causa della sessione d'esami.
             Abbiamo deciso di focalizzare il lavoro di questo sprint sulla scrittura della documentazione, in particolare sul documento piano di qualifica.
             Infine abbiamo creato tutte le issue relative alla documentazione, sotto segue una lista esaustiva di ciò.

  ],
  decisioni: (
    ([Analisi dei requisiti],
        [#link("https://github.com/techminds-unipd/docs/issues/189")[Issue \#189]: UC eliminazione workflow],
        [#link("https://github.com/techminds-unipd/docs/issues/190")[Issue \#190]: Tabella requisiti qualitativi],
        [#link("https://github.com/techminds-unipd/docs/issues/191")[Issue \#191]: Tabella requisiti di vincolo],
        [#link("https://github.com/techminds-unipd/docs/issues/200")[Issue \#200]: Aggiungere campo descrizione UC]
    ),
    ([Piano di Progetto],
        [#link("https://github.com/techminds-unipd/docs/issues/187")[Issue \#187]: Redigere consuntivo sprint 3],
        [#link("https://github.com/techminds-unipd/docs/issues/188")[Issue \#188]: Redigere preventivo sprint 4]
    ),
    ([Piano di Qualifica],
        [#link("https://github.com/techminds-unipd/docs/issues/192")[Issue \#192]: Redigere sezione qualità di prodotto],
        [#link("https://github.com/techminds-unipd/docs/issues/193")[Issue \#193]: Redigere sezione qualità di processo],
        [#link("https://github.com/techminds-unipd/docs/issues/194")[Issue \#194]: Redigere sezione qualità per obiettivo (processi primari)],
        [#link("https://github.com/techminds-unipd/docs/issues/195")[Issue \#195]: Redigere sezione qualità per obiettivo (processi di supporto)],
        [#link("https://github.com/techminds-unipd/docs/issues/196")[Issue \#196]: Redigere sezione qualità per obiettivo (processi organizzativi)]
    ),
    ([Norme di progetto],
        [#link("https://github.com/techminds-unipd/docs/issues/197")[Issue \#197]: Redigere sezione gestione operativa],
        [#link("https://github.com/techminds-unipd/docs/issues/198")[Issue \#198]: Redigere sezione accertamento della qualità]
    )
  ),
  firma: false
)