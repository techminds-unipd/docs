#import "/template/template.typ": documento,team

#set outline(depth: 3)
#show: documento.with(
  title: "Piano di progetto",
  sommario: "Documento che descrive il piano di progetto del gruppo Tech Minds.",
  changelog: (
    "0.5.0", "13/12/2024", "Aggiunta pianificazione sprint 2", team.G, team.S,
    "0.4.0", "10/12/2024", "Aggiunta retrospettiva, tabella consuntivo e Gantt dello Sprint 1", team.G, team.L,
    "0.3.0", "02/12/2024", "Aggiunta documentazione per Sprint 1 nella sezione Periodi e Costi", team.M, team.A,
    "0.2.0", "25/11/2024", "Aggiunta sezione analisi dei rischi", team.M, team.C,
    "0.1.1", "20/11/2024", "Segnati i termini presenti nel glossario", team.T, team.A,
    "0.1.0", "12/11/2024", "Struttura iniziale e introduzione", team.M, team.A
  )
)

#include "include/introduzione.typ"
#include "include/analisi-dei-rischi.typ"
#include "include/pianificazione.typ"
#include "include/periodi.typ"
#include "include/costi.typ"
