#import "/template/template.typ": documento,team
//#glossario[verifica]
//#glossario[llm]
//#glossario[label]
//#glossario[push]
//#glossario[tracciamento]
// #glossario[workflow]
// #glossario[ai]
// #glossario[glossario]
// #glossario[arco]
// #glossario[agente]

#show: documento.with(
  title: "Manuale utente",
  sommario: "Istruzioni per l'uso del MVP.",
  changelog: (
    "0.1.0", "23/03/2024", "Definizione struttura", team.C, ""
  )
)

#include "include/introduzione.typ"
#include "include/requisiti.typ"
#include "include/istruzioni-uso.typ"
