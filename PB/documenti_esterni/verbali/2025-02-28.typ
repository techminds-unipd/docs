#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale esterno del 28/02/2025",
  sommario: "Riunione di allineamnento con l'azienda.",
  autore: team.T,
  verificatore: "qualcunoo",
  durata_luogo: ("11:30", "12:00", "incontro su piattaforma Microsoft Teams"),
  partecipanti: 
    (text(weight: "bold", "Samuele De Simone") + " (Var Group)", 
    (text(weight: "bold", "Battistella Francesco") + " (Var Group)"), 
    team.T, 
    team.L, 
    team.M, 
    team.C, 
    team.G, 
    team.A,
    team.S
  ),
  ordine_giorno: (
    "Informarsi su come documentare i componenti React",
    "Discutere delle limitazioni tecniche del PoC",
    "Discutere dei test di accettazione",
    "Programmare riunioni periodiche",
    "Varie ed eventuali"
  ),
  riassunto: [
    Il team ha deciso di programmare una riunione con l'azienda per discutere dello stato di avanzamento del progetto e di alcuni dubbi sorti a monte della progettazione. \
    Di seguito viene riportato un breve riassunto per ogni punto trattato nell'ordine del giorno:
    1. Per la documentazione dei componenti React è stato concordato che è sufficiente fornire una descrizione testuale di ogni componente;
    2. L'agente esegue workflow composto da blocchi con un solo input e output (da documentare in Analisi dei Requisiti). Nel caso in cui lo sviluppo finisca prima della data prevista di consegna (4 aprile) si può valutare di introdurre anche l'esecuzione in parallelo;
    3. I test di accettazione verranno scritti dal gruppo basandosi su ciò che è scritto nel capitolato e validati assieme al proponente;
    4. Sono state programmate 3 riunioni periodiche, una per ogni fine sprint fino alla data prevista di consegna. Queste date sono 7 Marzo, 21 Marzo e 4 Aprile.
  ],
  decisioni: (
    ([Norme di progetto], [#link("https://github.com/techminds-unipd/docs/issues/401")[Issue \#401]#footnote(link("https://github.com/techminds-unipd/docs/issues/401")): Documentare le riunioni periodiche]),
    ([Analisi dei requisiti], [#link("https://github.com/techminds-unipd/docs/issues/404")[Issue \#404]#footnote(link("https://github.com/techminds-unipd/docs/issues/404")): Aggiungere requisito sequenzialità workflow]),
    ([Piano di qualifica], [#link("https://github.com/techminds-unipd/docs/issues/402")[Issue \#402]#footnote(link("https://github.com/techminds-unipd/docs/issues/402")): Documentare il miglioramento nel piano di qualifica])
  ),
  firma: true
)