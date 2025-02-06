#import "/template/template.typ": documento, team

#show: documento.with(
  title: "Piano di qualifica",
  sommario: "Il documento espone le metriche di verifica attuate per garantire qualità.",
  changelog: (
    "0.6.0", "06/02/2025", "Aggiunto grafico metriche AC, ETC, EAC", team.G, team.T,
    "0.5.4", "05/02/2025", "Modifica metriche qualità di processo", team.S, team.M,
    "0.5.3", "05/02/2025", "Modifica tabella metriche pianificazione e miglioramento", team.A, team.T,
    "0.5.2", "05/02/2025", "Fix caption tabelle", team.G, team.T,
    "0.5.1", "04/02/2025", "Modifica identificativi metriche", team.C, team.M,
    "0.5.0", "04/02/2025", "Aggiunta qualità processi primari", team.L, team.G,
    "0.4.0", "01/02/2025", "Aggiunta qualità processi organizzativi", team.A, team.C,
    "0.3.0", "28/01/2025", "Aggiunta caratteristiche di qualità per il prodotto", team.A, team.G,
    "0.2.0", "28/01/2025", "Sottosezione processi di supporto in metriche per la qualità", team.M, team.C,
    "0.1.4", "22/01/2025", "Refactoring voci sezione 2 dell'indice", team.M, team.G,
    "0.1.3", "08/01/2025", "Fix colori tabelle e riferimento pdp", team.L, team.M,
    "0.1.2", "20/12/2024", "Fix conformità indice di Gulpease", team.C, team.A,
    "0.1.1", "20/11/2024", "Segnati termini presenti nel glossario", team.T, team.A,
    "0.1.0", "12/11/2024", "Prima versione", team.A, team.M,
  )
)
//#glossario[processo]

#include "include/introduzione.typ"
#include "include/metriche-qualita.typ"
#include "include/testing.typ"
#include "include/miglioramenti.typ"
#include "include/controllo-metriche.typ"