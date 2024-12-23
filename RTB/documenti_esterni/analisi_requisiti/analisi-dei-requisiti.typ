#import "/template/template.typ": documento,team
//#glossario[verifica]
//#glossario[llm]

#show: documento.with(
  title: "Analisi dei requisiti",
  sommario: "Documento di Analisi dei requisiti.",
  changelog: (
    "0.2.16", "20/12/2024", "Aggiunta use case del logout", team.A, team.L,
    "0.2.15", "20/12/2024", "Aggiunta use case per visualizzazione funzionalità del blocco Gmail", team.M, team.S,
    "0.2.14", "18/12/2024", "Refactoring di alcuni use case", team.M, team.L,
    "0.2.13", "18/12/2024", "Aggiunta use case per visualizzazione blocchi configurati (e correlati)", team.M, team.S,
    "0.2.12", "17/12/2024", "Aggiunta sezione obiettivi e attori casi d'uso", team.A, team.L,
    "0.2.11", "17/12/2024", "Fix use case per l'esecuzione dei workflow", team.A, team.S,
    "0.2.10", "17/12/2024", "Fix use case per la creazione e il salvataggio dei workflow", team.M, team.L,
    "0.2.9", "16/12/2024", "Fix use case per la registrazione", team.M, team.S,
    "0.2.8", "13/12/2024", "Fix use case per il login", team.A, team.L,
    "0.2.7", "13/12/2024", "Fix use case riguardanti l'account Google nei workflow", team.M, team.S,
    "0.2.6", "06/12/2024", "Fix use case Login", team.C, team.A,
    "0.2.5", "06/12/2024", "Completati use cases creazione e salvataggio workflow", team.G, team.A,
    "0.2.4", "06/12/2024", "Completati use cases esecuzione workflow", team.S, team.C,
    "0.2.3", "05/12/2024", "Completati use cases relativi alla gestione dei servizi Google", team.L, team.A,
    "0.2.2", "04/12/2024", "Completato use case della registrazione", team.S, team.C,
    "0.2.1", "04/12/2024", "Completato use case del Login con le varie estensioni e generalizzazioni", team.G, team.A,
    "0.2.0", "04/12/2024", "Descritto primo use case (Login)", team.G, team.C,
    "0.1.1", "20/11/2024", "Segnati termini presenti nel glossario", team.T, team.C,
    "0.1.0", "12/11/2024", "Prima versione", team.G, team.A
  )
)

#include "include/introduzione.typ"
#include "include/descrizione.typ"
#include "include/use_cases.typ"
#include "include/requisiti.typ"