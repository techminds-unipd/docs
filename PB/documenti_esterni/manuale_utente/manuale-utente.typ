#import "/template/template.typ": documento, team

#show: documento.with(
  title: "Manuale utente",
  sommario: "Il documento riporta le istruzioni per utilizzare l'MVP.",
  changelog: (
    "0.1.0", "17/03/2025", "Prima versione", team.T, "",
  )
)

#include "include/introduzione.typ"
#include "include/requisiti.typ"
#include "include/istruzioni.typ"