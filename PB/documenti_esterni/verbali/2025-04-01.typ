#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale esterno del 01/04/2025",
  sommario: "Riunione finale con l'azienda proponente.",
  autore: team.C,
  verificatore: team.T,
  durata_luogo: ("9:30", "10:00", "incontro su piattaforma Microsoft Teams"),
  partecipanti: 
    (text(weight: "bold", "Samuele De Simone") + " (Var Group)", 
    (text(weight: "bold", "Francesco Battistella") + " (Var Group)"), 
    (text(weight: "bold", "Michele Massaro") + " (Var Group)"), 
    team.T,
    team.M, 
    team.C, 
    team.G, 
    team.A,
    team.L,
    team.S
  ),
  ordine_giorno: (
    "Revisione prodotto finale",
    "Test di accettazione"
  ),
  riassunto: [
    Riunione finale con il proponente, anticipata da venerdì 04/04/2025 a martedì 01/04/2025. Lo scopo di questo incontro è stato mostrare il prodotto finale e verificare che ogni test di accettazione fosse soddisfatto. Congiuntamente alla discussione sul superamento dei test di accettazione, il proponente ha avuto la possibilità di visionare il prodotto finale (Agent Flow), reputandolo un lavoro buono rispetto alle attese. Sono stati poi superati tutti i test di accettazione definiti nel #link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/piano_qualifica/piano-di-qualifica.pdf")[piano di qualifica]#footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/piano_qualifica/piano-di-qualifica.pdf")) [versione 1.11.0].
  ],
  decisioni: (
    ([Piano di qualifica], [#link("https://github.com/techminds-unipd/docs/issues/566")[Issue \#566]#footnote(link("https://github.com/techminds-unipd/docs/issues/566")): Superamento test di accettazione]),),
  firma: true
)