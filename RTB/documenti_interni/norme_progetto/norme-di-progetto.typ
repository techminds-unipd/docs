#import "/template/template.typ": documento, team

#show: documento.with(
  title: "Norme di progetto",
  sommario: "Documento che descrive le norme di progetto del gruppo Tech Minds.",
  changelog: (
    "0.1.0", "13/11/2024", "Struttura iniziale e redazione di introduzione, documentazione e gestione di configurazione", team.M, "...."
  )
)
#include "include/introduzione.typ"
#include "include/processi-primari.typ"
#include "include/processi-di-supporto.typ"
#include "include/processi-organizzativi.typ"