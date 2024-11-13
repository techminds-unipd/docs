#import "/template/template.typ": documento,team

#show: documento.with(
  title: "Piano di progetto",
  sommario: "Documento che descrive il piano di progetto del gruppo Tech Minds.",
  changelog: (
    "0.1.0", "12/11/2024", "Struttura iniziale e introduzione", team.M, "...."
  )
)

#include "include/introduzione.typ"
#include "include/analisi-dei-requisiti.typ"
#include "include/pianificazione.typ"
#include "include/periodi.typ"
#include "include/costi.typ"
