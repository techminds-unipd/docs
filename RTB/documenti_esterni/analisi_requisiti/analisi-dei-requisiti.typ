#import "/template/template.typ": documento,team

#show: documento.with(
  title: "Analisi dei requisiti",
  sommario: "Documento di Analisi dei requisiti.",
  changelog: (
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