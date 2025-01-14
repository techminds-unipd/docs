#import "/template/template.typ": documento, team
//#glossario[responsabile]
//#glossario[scrum]
//#glossario[Diagrammi UML]
//#glossario[tracciamento]
// //#glossario[label]

#show: documento.with(
  title: "Norme di progetto",
  sommario: "Documento che descrive le norme di progetto del gruppo Tech Minds.",
  changelog: (
    "0.6.2", "08/01/2025", "Modifica sezione verifica e validazione (processi di supporto)", team.S, team.L,
    "0.6.1", "06/01/2025", "Modifica sezione processi di supporto", team.S, team.M,
    "0.6.0", "06/01/2025", "Redazione sezione verifica e validazione (processi di supporto)", team.S, team.L,
    "0.5.0", "30/12/2024", "Redazione sezione processi primari di sviluppo", team.S, team.M,
    "0.4.0", "18/12/2024", "Redazione sezione processi organizzativi",team.C, team.L,
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