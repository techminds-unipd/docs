#import "/template/template.typ": documento, team

#show: documento.with(
  title: "Piano di qualifica",
  sommario: "Il documento esponde le metriche di verifica attuate per garantire qualità.",
  changelog: (
    "0.1.0", "12/11/2024", "Prima versione", team.A, team.M
  )
)

#include "include/introduzione.typ"
#include "include/qualita-prodotto.typ"
#include "include/qualita-processo.typ"
#include "include/testing.typ"
#include "include/miglioramenti.typ"
#include "include/controllo-metriche.typ"