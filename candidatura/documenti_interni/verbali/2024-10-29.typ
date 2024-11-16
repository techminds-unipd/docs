#import "/template/template.typ": verbale
#import "/template/template.typ": team

#show: verbale.with(
  title: "Verbale interno del 29/10/2024",
  sommario: "Questo verbale riassume l’incontro del 29/10/2024.",
  changelog: (
    "1.1", "05/11/2024", "Modifica posizione e struttura changelog ", team.G, team.C,
    "1.0", "29/10/2024", "Prima versione", team.T, team.G + linebreak() + team.C
  ),
  durata_luogo: ("15:00", "17:00", "chiamata Discord"),
  partecipanti: (team.T, team.L, team.M, team.C, team.G, team.A),
  ordine_giorno: ("Finalizzazione stesura del documento di revisione dei capitolati;", "Scrivere la lettera di presentazione della candidatura."),
  riassunto: [Per prima cosa è stato revisionato collettivamente il documento di valutazione dei capitolati. Successivamente è stata scritta su Overleaf la lettera di candidatura. Non sono state evidenziate particolari criticità. #linebreak() Programmata la consegna della candidatura il giorno 31 ottobre.],
  decisioni: (),
  firma: false
)