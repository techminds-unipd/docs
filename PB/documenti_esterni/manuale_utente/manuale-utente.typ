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
// // #glossario[requisiti]

#show: documento.with(
  title: "Manuale utente",
  sommario: "Il documento riporta le istruzioni per utilizzare l'MVP.",
  changelog: (
    "0.1.0", "23/03/2024", "Definizione struttura", team.T, team.C
  )
)

#include "include/introduzione.typ"
#include "include/requisiti.typ"
#include "include/istruzioni-uso.typ"
