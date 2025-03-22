#import "/template/template.typ": documento, team

#show: documento.with(
  title: "Piano di qualifica",
  sommario: "Il documento riporta le attività di verifica e validazione, affidandosi a delle metriche per garantire la qualità del prodotto.",
  changelog: (
    "1.7.0", "21/03/2025", "Descritti test di integrazione backend", team.S, "",
    "1.6.0", "21/03/2025", "Aggiornamento cruscotto", team.M, team.L,
    "1.5.0", "10/03/2025", "Aggiornamento cruscotto", team.M, team.C,
    "1.4.2", "06/03/2025", "Modifica metriche qualità di prodotto", team.S, team.A,
    "1.4.1", "04/03/2025", "Correzione uso del termine \"fase\"", team.L, team.C,
    "1.4.0", "03/03/2025", "Aggiunta test di accettazione", team.C, team.A,
    "1.3.0", "03/03/2025", "Aggiunta miglioramento", team.C, team.A,
    "1.2.0", "28/02/2025", "Aggiunta test di sistema e tracciamento", team.C, team.A,
    "1.1.0", "27/02/2025", "Eliminazione ridondanza metriche in qualità per obiettivo", team.L, team.C,
    "1.0.1", "24/02/2025", "Aggiornamento dati con nuovo preventivo a finire", team.T, team.A,
    "1.0.0", "10/02/2025", "Revisione documento", team.C, team.T,
    "0.13.0", "08/02/2025", "Aggiunte metriche accettabili e ottimali", team.G, team.T,
    "0.12.0", "07/02/2025", "Aggiunte metriche CPI, SPI", team.G, team.M,
    "0.11.0", "06/02/2025", "Aggiunte metriche EV, PV, CV, SV", team.G, team.T,
    "0.10.0", "06/02/2025", "Aggiunto miglioramento tecnologie", team.C, team.T,
    "0.9.0", "06/02/2025", "Aggiunto grafico indice di gulpease", team.C, team.M,
    "0.8.0", "06/02/2025", "Aggiunto grafico metrica rischi non previsti", team.S, team.T,
    "0.7.0", "06/02/2025", "Aggiunto grafico metrica caption", team.C, team.M,
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
//#glossario[ai]
//#glossario[glossario]

#include "include/introduzione.typ"
#include "include/metriche-qualita.typ"
#include "include/testing.typ"
#include "include/miglioramenti.typ"
#include "include/controllo-metriche.typ"
