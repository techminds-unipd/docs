#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale esterno del 11/12/2024",
  sommario: "Allineamento con l'azienda.",
  changelog: (
    "1.0.0", "11/12/2024", "Prima versione", team.G, ""
  ),
  durata_luogo: ("14:30", "15:30", "incontro su piattaforma Microsoft Teams"),
  partecipanti: (text(weight: "bold", "Massaro Michele") + " (Var Group)", (text(weight: "bold", "Battistella Francesco") + " (Var Group)"), team.T, team.L, team.M, team.C, team.G, team.A),
  ordine_giorno: ("Discussione sull'analisi dei requisiti", "Discussione PoC", "Prossimi incontri per Design Thinking e allineamento periodico"),
  riassunto: [Dopo la fine dello sprint 1 abbiamo deciso di incontrarci con l'azienda per visionare il lavoro svolto (principalmente nell'analisi dei requisiti).
             Abbiamo mostrato l'attuale analisi dei requisiti, anche se con degli errori presenti all'interno, accordandoci su quali requisiti bisogna avere come obbligatori e quali possono essere tralasciati e messi come opzionali.
             Abbiamo concordato che ai fini del progetto il login non è un requisito necessario, visto che l'applicazione potrebbe eseguire in locale sulla macchina dell'utilizzatore e salvando così tutti i workflow creati direttamente in locale.
             Gli altri requisiti riguardanti i workflow sono risultati validi ma dobbiamo ancora lavorare su alcuni use case relativi ai blocchi di automazione scelti (mail, drive e calendario).

             Successivamente abbiamo deciso quali funzionalità dovrà implementare il PoC. Abbiamo concordato che basta creare una webapp che permetta di creare dei semplici workflow (semplici nel senso che non siano troppo densi a livello di archi/nodi) con un drag&drop e che permetta successivamente di eseguirli attraverso un agente.

             Riguardo ai prossimi incontri, si cercherà di fissare l'incontro per il Design Thinking a Gennaio e sempre nello stesso mese inizieremo ad evere degli incontri più frequenti (ogni due settimane circa) per allinearci sul lavoro svolto ed evitare di perderci.
  ],
  decisioni: (
    ([Analisi dei requisiti],
        [#link("https://github.com/techminds-unipd/docs/issues/122")[Issue \#122]: Fix da UC13 a UC15],
        [#link("https://github.com/techminds-unipd/docs/issues/121")[Issue \#121]: Fix da UC10 a UC12],
        [#link("https://github.com/techminds-unipd/docs/issues/120")[Issue \#120]: Fix da UC6 a UC9],
        [#link("https://github.com/techminds-unipd/docs/issues/119")[Issue \#119]: Fix da UC4 a UC5],
        [#link("https://github.com/techminds-unipd/docs/issues/118")[Issue \#118]: Fix da UC1 a UC3]
    ),

  ),
  firma: true
)