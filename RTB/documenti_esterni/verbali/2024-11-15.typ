#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale esterno del 15/11/2024",
  sommario: "Primo allineamento con l'azienda",
  changelog: (
    "1.0.0", "15/11/2024", "Prima versione", team.M, "..."
  ),
  durata_luogo: ("12:00", "12:40", "Incontro su piattaforma Microsoft Teams"),
  partecipanti: (team.T, team.L, team.M, team.C, team.G, team.A),
  ordine_giorno: ("Discussione sulla modalità degli sprint", "Definizione primo sprint", "Prima discussione sulle tecnologie utilizzabili"),
  riassunto: [Abbiamo discusso con il proponente le modalità che stiamo utlizzando per la gestione del repository. Inoltre sono state definite le task da svolgere nel primo sprint che partirà il giorno 18/11/2024. L'azienda ha reso disponibile un canale di comunicazione Slack, attraverso la quale è stato fornito del materiale riguardante le tecnologie utilizzabili, che dovrà essere studiato dal team. Questo nuovo canale di comunicazione permetterà comunicazioni più rapide e tempestive tra il nostro team e il proponente.],
  decisioni: (
    ([Processi organizzativi], [#link("https://github.com/techminds-unipd/docs/issues/60")[Issue \#60]: Autoformazione tecnologie proposte dall'azienda]),
    ([Documenti], [#link("https://github.com/techminds-unipd/docs/issues/62")[Issue \#62]: Redazione "Analisi dei requisiti"])

  ),
  firma: true
)