#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale interno del 04/02/2025",
  sommario: "Verbale che riassume la riunione del 04/02/2025.",
  changelog: (
    "1.0.0", "06/02/2025", "Prima versione", team.L, team.T
  ),
  durata_luogo: ("15:15", "18:30", "chiamata Discord"),
  partecipanti: (team.A, team.S, team.T, team.M, team.G, team.C, team.L),
  ordine_giorno: ("Sprint 4 retrospective", "Sprint 5 planning"),
  riassunto: [Ci siamo riuniti per celebrare prima la sprint retrospective dello sprint 4 e successivamente lo    sprint planning dello sprint 5.#linebreak()
    Abbiamo visionato i documenti prodotti durante lo sprint 4, in particolare l'Analisi dei Requisiti e il Piano di Qualifica.
    In seguito abbiamo guardato la Project Board di Github per verificare quali task non fossimo riusciti a completare entro la fine dello sprint. L'unico task non completato era stato svolto come parte di un altro task ed è quindi stato chiuso come non pianificato.

    Ognuno ha poi provveduto a compilare il consuntivo dello ore di lavoro dello sprint 4.

    Successivamente abbiamo celebrato lo sprint planning dello sprint 5. Tale sprint durerà una settimana e mezzo, dal 05/02/2025 al 14/02/2025.
    Abbiamo deciso di concentrare il lavoro di questo sprint sulla realizzazione del cruscotto per le metriche già individuate durante gli sprint precedenti e sulla sistemazione di alcuni dettagli in vista dell'RTB.
    Infine abbiamo creato tutte le issue relative alla documentazione, sotto segue una lista esaustiva di ciò.

  ],
  decisioni: (
    ([Analisi dei Requisiti],
      [#link("https://github.com/techminds-unipd/docs/issues/229")[Issue \#229]: Refactoring Analisi dei Requisiti],
    ),
    ([Piano di Progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/232")[Issue \#232]: Scrivere consuntivo sprint 4],
      [#link("https://github.com/techminds-unipd/docs/issues/233")[Issue \#233]: Scrivere pianificazione sprint 5],
      [#link("https://github.com/techminds-unipd/docs/issues/139")[Issue \#139]: Documentare la struttura dei periodi in PdP],
      [#link("https://github.com/techminds-unipd/docs/issues/240")[Issue \#240]: Documentare in PdP le milestone],
    ),
    ([Piano di Qualifica],
      [#link("https://github.com/techminds-unipd/docs/issues/226")[Issue \#226]: Modificare identificativi metriche in PdQ e NdP],
      [#link("https://github.com/techminds-unipd/docs/issues/227")[Issue \#227]: Refactoring dati metriche in PdQ],
      [#link("https://github.com/techminds-unipd/docs/issues/231")[Issue \#231]: Scrivere descrizione metriche con TODO],
      [#link("https://github.com/techminds-unipd/docs/issues/236")[Issue \#236]: Aggiornamento cruscotto],
      [#link("https://github.com/techminds-unipd/docs/issues/237")[Issue \#237]: Metriche pianificazione e miglioramento],
      [#link("https://github.com/techminds-unipd/docs/issues/238")[Issue \#238]: Uniformare la caption delle tabelle in PdQ],
      [#link("https://github.com/techminds-unipd/docs/issues/239")[Issue \#239]: Macrosezione miglioramenti in PdQ],
    ),
    ([Norme di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/226")[Issue \#226]: Modificare identificativi metriche in PdQ e NdP],
      [#link("https://github.com/techminds-unipd/docs/issues/230")[Issue \#230]: Nascondere sezioni non scritte in NdP],
    ),
    ([Altro],
      [#link("https://github.com/techminds-unipd/docs/issues/234")[Issue \#234]: Scrivere lettera di presentazione per RTB],
      [#link("https://github.com/techminds-unipd/docs/issues/235")[Issue \#235]: Uniformare date in tutti i documenti]
    )
  ),
  firma: false
)