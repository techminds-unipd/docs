#import "/template/template.typ": documento,team
//#glossario[verifica]
//#glossario[llm]
//#glossario[label]

#show: documento.with(
  title: "Analisi dei requisiti",
  sommario: "Documento di Analisi dei requisiti.",
  changelog: (
    "0.23.0", "05/02/2025", "Aggiunta tabella riepilogo + fix codice tabella requisiti", team.G, team.M,
    "0.22.0", "23/01/2025", "Fix UC19 e aggiunta UC29", team.S, team.C,
    "0.21.0", "23/01/2025", "Aggiunto use case eliminazione workflow", team.T, team.G,
    "0.20.0", "20/01/2025", "Aggiunti requisiti di vincolo", team.T, team.C,
    "0.19.2", "20/01/2025", "Refactoring UC14", team.S, team.G,
    "0.19.1", "19/01/2025", "Refactoring UC13", team.S, team.C,
    "0.19.0", "18/01/2025", "Aggiunti requisiti di qualità", team.T, team.C,
    "0.18.1", "16/01/2025", "Aggiunto campo descrizione nella struttura dei casi d'uso e su UC3, UC4.", team.T, team.G,
    "0.18.0", "12/01/2025", "Aggiornamento tabella requisiti funzionali", team.A, team.M,
    "0.17.0", "08/01/2025", "Aggiunto use case di approfondimento dell'esecuzione del workflow", team.A, team.L,
    "0.16.0", "07/01/2025", "Aggiunto use case per visualizzazione funzionalità del blocco Calendar", team.C, team.L,
    "0.15.0", "07/01/2025", "Aggiunto use case per visualizzazione funzionalità del blocco Pastebin", team.C, team.L,
    "0.14.0", "05/01/2025", "Aggiunto use case visualizzazione workflow", team.C, team.M,
    "0.13.1", "05/01/2025", "Fix use case per la modifica di un workflow", team.C, team.M,
    "0.13.0", "29/12/2024", "Aggiunti use case per la modifica di un workflow", team.C, team.M,
    "0.12.0", "29/12/2024", "Aggiunto use case esecuzione workflow da parte dell'agente", team.C, team.L,
    "0.11.1", "23/12/2024", "Fix use case creazione workflow", team.C, team.M,
    "0.11.0", "20/12/2024", "Aggiunto use case del logout", team.A, team.L,
    "0.10.0", "20/12/2024", "Aggiunto use case per visualizzazione funzionalità del blocco Gmail", team.M, team.S,
    "0.9.1", "18/12/2024", "Refactoring di alcuni use case", team.M, team.L,
    "0.9.0", "18/12/2024", "Aggiunto use case per visualizzazione blocchi configurati (e correlati)", team.M, team.S,
    "0.8.0", "17/12/2024", "Aggiunta sezione obiettivi e attori casi d'uso", team.A, team.L,
    "0.7.6", "17/12/2024", "Fix use case per l'esecuzione dei workflow", team.A, team.S,
    "0.7.5", "17/12/2024", "Fix use case per la creazione e il salvataggio dei workflow", team.M, team.L,
    "0.7.4", "16/12/2024", "Fix use case per la registrazione", team.M, team.S,
    "0.7.3", "13/12/2024", "Fix use case per il login", team.A, team.L,
    "0.7.2", "13/12/2024", "Fix use case riguardanti l'account Google nei workflow", team.M, team.S,
    "0.7.1", "06/12/2024", "Fix use case Login", team.C, team.A,
    "0.7.0", "06/12/2024", "Completati use case creazione e salvataggio workflow", team.G, team.A,
    "0.6.0", "06/12/2024", "Completati use case esecuzione workflow", team.S, team.C,
    "0.5.0", "05/12/2024", "Completati use case relativi alla gestione dei servizi Google", team.L, team.A,
    "0.4.0", "04/12/2024", "Completato use case della registrazione", team.S, team.C,
    "0.3.0", "04/12/2024", "Completato use case del Login con le varie estensioni e generalizzazioni", team.G, team.A,
    "0.2.0", "04/12/2024", "Descritto primo use case (Login)", team.G, team.C,
    "0.1.1", "20/11/2024", "Segnati termini presenti nel glossario", team.T, team.C,
    "0.1.0", "12/11/2024", "Prima versione", team.G, team.A
  )
)

#include "include/introduzione.typ"
#include "include/descrizione.typ"
#include "include/use_cases.typ"
#include "include/requisiti.typ"