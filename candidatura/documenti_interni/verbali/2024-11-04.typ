#import "/template/template.typ": verbale
#import "/template/template.typ": team

#show: verbale.with(
  title: "Verbale interno del 04/11/2024",
  sommario: "Cambiamenti a seguito della valutazione del preventivo.",
  changelog: (
    "1.0", "05/11/2024", "Prima versione", team.A, team.S
  ),
  durata_luogo: ("16:00", "17:30", "chiamata Discord"),
  partecipanti: (team.T, team.L, team.M, team.C, team.G, team.A, team.S),
  ordine_giorno: ("Revisione candidatura;", "Assegnazione issue."),
  riassunto: [Si è discusso sulla bocciata candidatura e su come migliorarla. È stata stilata una lista di issue da svolgere, dividendole per importanza e assegnandole a uno o più membri del team.],
  decisioni: (
    ([Distribuzione Tempo / Ruoli], [#link("https://github.com/techminds-unipd/docs/issues/15")[Issue \#15]: Fix documento "dichiarazione degli impegni"]),
    ([Organizzazione Repo], [#link("https://github.com/techminds-unipd/docs/issues/20")[Issue \#20]: Struttura README.md], [#link("https://github.com/techminds-unipd/docs/issues/19")[Issue \#19]: Github Pages]),
    ([Versionamento], [#link("https://github.com/techminds-unipd/docs/issues/18")[Issue \#18]: Github Workflow integration]),
    ([Verbali], [#link("https://github.com/techminds-unipd/docs/issues/17")[Issue \#17]: Fix errori tipografici], [#link("https://github.com/techminds-unipd/docs/issues/16")[Issue \#16]: Add "decisioni prese"],
    [#link("https://github.com/techminds-unipd/docs/issues/14")[Issue \#14]: Fix changelog])
  ),
  firma: ""
)