#import "/template/template.typ": documento,team

#show: documento.with(
  title: "Analisi dei requisiti",
  sommario: "Documento di Analisi dei requisiti.",
  changelog: (
    "0.2.0", "04/12/2024", "Descritto primo use case (Login)", team.G, team.C,
    "0.1.1", "20/11/2024", "Segnati termini presenti nel glossario", team.T, team.C,
    "0.1.0", "12/11/2024", "Prima versione", team.G, team.A
  )
)

#include "include/introduzione.typ"
#include "include/descrizione.typ"
#include "include/use_cases.typ"
#include "include/requisiti.typ"