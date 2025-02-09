#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale interno del 07/02/2025",
  sommario: "Verbale che riassume la riunione del 07/02/2025.",
  changelog: (
    "1.0.0", "07/02/2025", "Prima versione", team.A, team.M,
  ),
  durata_luogo: ("15:30", "18:30", "chiamata Discord"),
  partecipanti: (team.A, team.S, team.T, team.M, team.G, team.C),
  ordine_giorno: ("Candidatura per la revisione RTB", "Preventivo a finire", "Data di consegna"),
  riassunto: [
    Durante la riunione abbiamo discusso della candidatura per la revisione RTB, in particolare abbiamo deciso di candidarci per la revisione.
    Abbiamo quindi preparato:
    - la lettera di presentazione per la candidatura;
    - la mail al prof. Cardin;
    - le slides di presentazione.
    Durante la preparazione di tali documenti, è stata notata una distribuzione delle ore/ruolo mal gestita da cui ne è scaturita la decisione di attuare un cambiamento, attraverso la redazione del Preventivo a Finire.
    In particolare sono state aggiunte delle ore al ruolo di Amministratore a discapito delle ore dedicate ai ruoli di Analista e di Responsabile.
    Tali scelte sono dovute dal fatto che il ruolo di amministratore si è rivelato più oneroso del previsto, visto che a seguito dello sprint attuale si prevede che tali ore sarebbero terminate.
    Si veda #link("https://techminds-unipd.github.io/docs/RTB/documenti_esterni/lettera-di-presentazione-RTB.pdf")[Lettera di presentazione RTB] per ulteriori dettagli.

    Visto il ritardo nella candidatura e la necessità di mantenere degli standard di qualità, abbiamo deciso di spostare la data di consegna del progetto dal 28 marzo al 4 aprile.
    
  ],
  decisioni: (
    ([Piano di qualifica],
      [#link("https://github.com/techminds-unipd/docs/issues/287")[Issue \#287]: Test di sistema],
    ),
     ([Piano di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/281")[Issue \#281]: Aggiornamento PdP],
    ),
    ([Glossario],
      [#link("https://github.com/techminds-unipd/docs/issues/285")[Issue \#285]: Aggiornamento Glossario],
    ),
  ),
  firma: false
)