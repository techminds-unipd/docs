#import "/template/template.typ": documento, team

#show: documento.with(
  title: "Norme di progetto",
  sommario: "",
  changelog: (
    "0.1.0", "12/11/2024", "Struttura iniziale e introduzione", team.T, "...."
  )
)

#include "include/introduzione.typ"
#include "include/processi-primari.typ"
#include "include/processi-di-supporto.typ"
#include "include/processi-organizzativi.typ"