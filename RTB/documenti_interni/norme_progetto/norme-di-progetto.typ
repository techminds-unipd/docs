#import "/template/template.typ": documento, team

#show: documento.with(
  title: "Norme di progetto",
  sommario: "Documento che descrive le norme di progetto del gruppo Tech Minds.",
  changelog: (
    "0.3.0", "12/12/2024", "Redazione sezione processi primari di fornitura",team.C, team.S,
    "0.2.1", "20/11/2024", "Evidenziata solo la prima occorrenza dei termini del glossario",team.T, team.C,
    "0.2.0", "19/11/2024", "Specifica tipografica elenchi nei verbali. Specifica tipografica termini nel glossario",team.T, team.A,
    "0.1.0", "13/11/2024", "Struttura iniziale e redazione di introduzione, documentazione e gestione di configurazione", team.M, team.C,    
  )
)
#include "include/introduzione.typ"
#include "include/processi-primari.typ"
#include "include/processi-di-supporto.typ"
#include "include/processi-organizzativi.typ"