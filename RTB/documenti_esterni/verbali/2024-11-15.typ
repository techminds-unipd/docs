#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale esterno del 15/11/2024",
  sommario: "Primo allineamento con l'azienda",
  changelog: (
    "1.0", "15/11/2024", "Prima versione", team.M, "..."
  ),
  durata_luogo: ("12:00", "12:40", "Incontro su piattaforma Microsoft Teams"),
  partecipanti: (team.T, team.L, team.M, team.C, team.G, team.A),
  ordine_giorno: ("Discussione sulla modalità degli sprint", "Definizione primo sprint", "Prima discussione sulle tecnologie utilizzabili"),
  riassunto: [Abbiamo discusso con il proponente le modalità che stiamo utlizzando per la gestione del repository. Inoltre sono state definite le task da svolgere nel primo sprint che partirà il giorno 18/11/2024. L'azienda ha fornito una serie di materiale da studiare attraverso un canale di comunicazione Slack, quest'ultimo sarà a disposizione per comunicazioni più rapide tra il team e il proponente.],
  decisioni: (
    ([Processi organizzativi], [#link("https://github.com/techminds-unipd/docs/issues/45")[Issue \#]: auto-formazione dei membri del team]),
    ([Documenti], [#link("https://github.com/techminds-unipd/docs/issues/46")[Issue \#46]: Svolgere "Analisi dei requisiti"])

  ),
  firma: true
)