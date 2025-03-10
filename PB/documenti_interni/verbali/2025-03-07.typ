#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale interno del 07/03/2025",
  sommario: "Verbale che riassume la riunione del 07/03/2025.",
  autore: team.C,
  verificatore: team.A,
  durata_luogo: ("9:30", "11:15", "chiamata Discord"),
  partecipanti: (team.A, team.S, team.T, team.M, team.G, team.C),
  ordine_giorno: ("Sprint retrospective",
                  "Preparazione per l'incontro con il proponente",
  ),
  riassunto: [Il gruppo si è riunito per celebrare la retrospettiva dello sprint 7 e per la preparazione per l'incontro con il proponente. \ Durante la retrospettiva il team ha condiviso i progressi svolti durante lo sprint 6, in particolare l'aggiornamento dei documenti a seguito dell'attuazione dei miglioramenti rilevati dalla valutazione RTB. Per la progettazione sono stati visionati in modo congiunto gli avanzamenti svolti; in tale ambito sono poi state condivise le domande da porre al professor Cardin nell'incontro programmato per lunedì 10/03/2025. \ La retrospettiva è terminata con la rendicontazione delle ore produttive consumate da ogni membro e con l'aggiornamento del preventivo a finire data la quantità di ore produttive consumate per il ruolo di amministratore durante lo sprint precedente. \ Infine sono state preparate le risorse da condividere con il proponente, ovvero i test di accettazione redatti durante lo sprint 6, i wireframe realizzati per la webapp e i primi test di unità implementati durante la codifica.
  ],
  decisioni: (
    ([Piano di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/429")[Issue \#429]#footnote(link("https://github.com/techminds-unipd/docs/issues/429")): Consuntivo sprint 7 e aggiornamento preventivo a finire],
    ),
  ),
  firma: false
)