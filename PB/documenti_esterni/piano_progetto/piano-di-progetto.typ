#import "/template/template.typ": documento,team
//#glossario[user story]
//#glossario[requisiti]
//#glossario[push]

#set outline(depth: 3)
#show: documento.with(
  title: "Piano di progetto",
  sommario: "Documento che descrive il piano di progetto del gruppo Tech Minds.",
  changelog: (
    "1.2.0", "24/02/2025", "Aggiunta consuntivo sprint 6", team.T, team.C,
    "1.1.0", "17/02/2025", "Aggiunta preventivo sprint 6", team.C, team.G,
    "1.0.0", "14/02/2025", "Aggiunta sezione issue non inizialmente preventivate", team.A,team.G,
    "0.18.0", "14/02/2025", "Aggiunta descrizione sezione Preventivo a Finire", team.G, team.T,
    "0.17.0", "14/02/2025", "Aggiunta consuntivo di periodo RTB", team.L, team.M,
    "0.16.0", "14/02/2025", "Aggiunta consuntivo sprint 5", team.L, team.T,
    "0.15.1", "11/02/2025", "Correzione piccoli errori stilistici e ortografici", team.G, team.M,
    "0.15.0", "10/02/2025", "Aggiunta pianificazione sprint 5", team.L, team.M,
    "0.14.0", "07/02/2025", "Aggiunto preventivo candidatura", team.C, team.T,
    "0.13.1", "07/02/2025", "Aggiunte milestone della RTB in Pianificazione", team.A, team.M,
    "0.13.0", "07/02/2025", "Aggiunta consuntivo sprint 4", team.L, team.T,
    "0.12.0", "06/02/2025", "Aggiunta descrizione testuale della struttura di uno sprint", team.A, team.M,
    "0.11.0", "13/01/2025", "Aggiunta preventivo sprint 4", team.S, team.G,
    "0.10.0", "13/01/2025", "Aggiunta consuntivo sprint 3 e diagramma di Gantt", team.S, team.C,
    "0.9.1", "05/01/2025", "Fix preventivo sprint 3", team.L, team.M,
    "0.9.0", "02/01/2025", "Aggiunta preventivo sprint 3", team.A, team.M,
    "0.8.0", "29/12/2024", "Aggiunta consuntivo sprint 2 e diagramma di Gantt", team.A, team.L,
    "0.7.1", "20/12/2024", "Fix conformità indice di Gulpease", team.C, team.G,
    "0.7.0", "19/12/2024", "Aggiunta sezione Pianificazione", team.G, team.S,
    "0.6.0", "18/12/2024", "Refactoring generale della struttura del documento", team.G, team.L,
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
