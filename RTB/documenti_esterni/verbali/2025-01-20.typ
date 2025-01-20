#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale esterno del 20/01/2025",
  sommario: "Presentazione analisi dei requisiti e PoC.",
  changelog: (
    "1.0.0", "20/01/2025", "Prima versione", team.S, team.G
  ),
  durata_luogo: ("08:30", "09:00", "incontro su piattaforma Microsoft Teams"),
  partecipanti: (text(weight: "bold", "Massaro Michele") + " (Var Group)", (text(weight: "bold", "Battistella Francesco") + " (Var Group)"), team.T, team.L, team.M, team.C, team.G, team.A, team.S),
  ordine_giorno: ("Breve presentazione analisi dei requisiti", "Presentazione PoC"),
  riassunto: [
    Dopo aver completato il PoC e quasi terminato l'analisi dei requisiti, abbiamo deciso di incontrarci con l'azienda per presentare il lavoro svolto.
    Abbiamo mostrato i requisiti raccolti e analizzati, e abbiamo discusso su alcuni possibili requisiti di vincolo. \ Successivamente è stato mostrato il PoC realizzato, il quale è stato approvato dall'azienda.
  ],
  decisioni: (
  ),
  firma: true
)