#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale interno del 14/02/2025",
  sommario: "Verbale che riassume la riunione del 14/02/2025.",
  changelog: (
    "1.0.0", "14/02/2025", "Prima versione", team.A, team.M,
  ),
  durata_luogo: ("15:00", "16:30", "chiamata Discord"),
  partecipanti: (team.A, team.S, team.T, team.M, team.G, team.C, team.L),
  ordine_giorno: ("Retrospettiva sprint 5", "Consuntivo di periodo RTB"),
  riassunto: [
    Ci siamo riuniti per celebrare la sprint retrospective dello sprint 5, successivamente abbiamo redatto il consuntivo di periodo RTB. Dalla retrospettiva dello sprint 5 è emerso che il team ha lavorato bene, riuscendo a completare tutti i task assegnati con largo anticipo. Le issue dello sprint sono state sovrastimate e di conseguenza ne sono state create di nuove per continuare il lavoro. Infine abbiamo deciso che nel piano di progetto documenteremo le nuove issue create in seguito alla pianificazione iniziale.

    Successivamente abbiamo deciso di redigere il consuntivo di periodo RTB.
    
  ],
  decisioni: (
    ([Piano di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/327")[Issue \#327]: Redazione consuntivo sprint 5],
      [#link("https://github.com/techminds-unipd/docs/issues/326")[Issue \#326]: Redazione consuntivo di periodo RTB],
      [#link("https://github.com/techminds-unipd/docs/issues/325")[Issue \#325]: Documentare preventivo a finire in struttura sprint],
      [#link("https://github.com/techminds-unipd/docs/issues/324")[Issue \#324]: Ridondanza diagramma di Gantt],
    ),
  ),
  firma: false
)