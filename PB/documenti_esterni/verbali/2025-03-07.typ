#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale esterno del 07/03/2025",
  sommario: "Riunione periodica con l'azienda proponente.",
  autore: team.T,
  verificatore: team.C,
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
    team.S
  ),
  ordine_giorno: (
    "Confronto sui test di accettazione individuati",
    "Mostrare la progettazione ad alto livello della webapp",
    "Mostrare l'implementazione iniziale del backend"
  ),
  riassunto: [
    Prima riunione periodica, coincidente con la fine del settimo sprint. Lo scopo di questo incontro è mostrare ciò che è stato prodotto finora, ponendo maggiore attenzione sui test di accettazione. Di seguito verranno riassunte le discussioni su ciascun punto previsto dall'ordine del giorno:
    1. I test di accettazione derivati dal contenuto del capitolato e dalle riunioni precedenti sono stati considerati soddisfacenti. È stato chiarito che questi test verranno eseguiti durante una riunione apposita verso la fine del progetto;
    2. La progettazione della webapp su Figma è stata valutata positivamente;
    3. È stato mostrato l'inizio della codifica del backend su NestJs, in particolare la parte relativa al login. Quanto fatto finora è stato giudicato positivamente. Ci è stato suggerito di usare il metodo orFail() per gestire parte del login con le eccezioni invece dei valori di tipo null.
  ],
  decisioni: (),
  firma: true
)