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
    "0.6.0", "25/03/2024", "Documentata pagina AboutUs", team.C, team.A,
    "0.5.0", "25/03/2024", "Documentata pagina SignUp", team.C, team.M,
    "0.4.0", "25/03/2024", "Documentata pagina Dashboard", team.C, team.A,
    "0.3.0", "25/03/2025", "Documentata pagina Services", team.S, team.C,
    "0.2.0", "25/03/2025", "Documentata pagina SignIn", team.S, team.A,
    "0.1.0", "23/03/2025", "Definizione struttura", team.T, team.C
  )
)

#include "include/introduzione.typ"
#include "include/requisiti.typ"
#include "include/istruzioni-uso.typ"
