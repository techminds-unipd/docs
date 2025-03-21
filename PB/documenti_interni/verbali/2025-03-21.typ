#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale interno del 21/03/2025",
  sommario: "Verbale che riassume la riunione del 21/03/2025.",
  autore: team.M,
  verificatore: team.C,
  durata_luogo: ("9:00", "11:00", "chiamata Discord"),
  partecipanti: (team.A, team.L, team.T, team.M, team.G, team.C),
  ordine_giorno: ("Sprint retrospective",
                  "Preparazione per l'incontro con il proponente",
  ),
  riassunto: [Il gruppo si è riunito per celebrare la retrospettiva dello sprint 8 e per la preparazione per l'incontro con il proponente. \ Durante la retrospettiva il team ha condiviso i progressi svolti durante lo sprint 7, in particolare riguardo l'avanzamento della progettazione e della codifica. \ La retrospettiva è terminata con la rendicontazione delle ore produttive consumute da ogni membro del team, che non hanno subito grandi scostamenti da quanto preventivato. \ Infine è stato aggiornato il preventivo a finire in vista del prossimo sprint entro il quale il team prevede di portare a termine il progetto.
  ],
  decisioni: (
    ([Piano di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/495")[Issue \#495]#footnote(link("https://github.com/techminds-unipd/docs/issues/495")): Consuntivo sprint 8 e aggiornamento preventivo a finire],
    ),
  ),
  firma: false
)