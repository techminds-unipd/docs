#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale esterno del 21/03/2025",
  sommario: "Riunione periodica con l'azienda proponente.",
  autore: team.M,
  verificatore: team.S,
  durata_luogo: ("11:30", "12:00", "incontro su piattaforma Microsoft Teams"),
  partecipanti: 
    (text(weight: "bold", "Samuele De Simone") + " (Var Group)", 
    (text(weight: "bold", "Francesco Battistella") + " (Var Group)"), 
    (text(weight: "bold", "Michele Massaro") + " (Var Group)"), 
    team.T,
    team.M, 
    team.C, 
    team.G, 
    team.A,
    team.L
  ),
  ordine_giorno: (
    "Aggiornamento dei progressi del progetto",
    "Chiarimenti sui test di integrazione"
  ),
  riassunto: [
    Riunione con il proponente, coincidente con la fine dell'ottavo sprint. Lo scopo di questo incontro è stato mostrare ciò che è stato prodotto finora. Di seguito verranno riassunte le discussioni su ciascun punto previsto dall'ordine del giorno:
    1. L'azienda è stata aggiornata riguardo la terminazione della codifica del backend e dell'agente AI. Sono stati inoltre spiegati i limiti della soluzione proposta per l'agente AI, in particolare  il modello di LLM utilizzato è poco performante, dato che si tratta di un modello con pochi parametri;
    2. I test di integrazione del backend sono stati considerati soddisfacenti laddove il backend deve integrarsi con l'agente AI: è stato chiarito che questi test verranno eseguiti facendo un mock dell'agente AI. L'azienda ha inoltre messo a disposizione una propria risorsa interna per chiarire alcuni dubbi sorti durante la codifica dei test di integrazione del frontend.
  ],
  decisioni: (),
  firma: true
)