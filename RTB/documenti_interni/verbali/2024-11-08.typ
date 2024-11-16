#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale interno del 08/11/2024",
  sommario: "Verbale che riassume la riunione del 08/11/2024.",
  changelog: (
    "1.0.0", "08/11/2024", "Prima versione", team.S, team.M + linebreak() + team.G 
  ),
  durata_luogo: ("11:30", "12:30", "Chiamata Discord"),
  partecipanti: (team.A, team.S, team.T, team.M, team.G, team.C),
  ordine_giorno: ("Valutazione Typst","Assegnazione ruoli","Diario di bordo"),
  riassunto: [Il gruppo ha valutato e approvato il passaggio da LaTeX a Typst per la documentazione, ha discusso e assegnato i ruoli per il primo sprint, previsto per l'11/11/2024, e ha esaminato l'utilizzo della funzionalità #link("https://github.com/orgs/techminds-unipd/projects/1/views/4")[Roadmap] di GitHub Projects. Inoltre sono stati distribuiti i compiti riguardanti modifiche alla pagina di documentazione, la creazione del diario di bordo e la preparazione di un documento per il futuro rendiconto delle ore.],
  decisioni: (
    ([Documentazione], [#link("https://github.com/techminds-unipd/docs/issues/32")[Issue \#32]: Template per verbali in Typst]),
    ([Versionamento], [#link("https://github.com/techminds-unipd/docs/issues/33")[Issue \#33]: GitHub workflow compilazione Typst]),
    ([Organizzazione Repo], [#link("https://github.com/techminds-unipd/docs/issues/34")[Issue \#34]: Aggiornamento GitHub Pages])
  ),
  firma: false
)