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
             Abbiamo concordato che ai fini del progetto il login non è un requisito necessario, visto che l'applicazione potrebbe venire eseguita in locale sulla macchina dell'utilizzatore e salvare tutti i workflow creati direttamente in locale.
             Gli altri requisiti riguardanti i workflow sono risultati validi ma dobbiamo ancora lavorare su alcuni use case relativi ai blocchi di automazione scelti (mail, drive e calendario).

             Successivamente abbiamo deciso quali funzionalità dovrà implementare il PoC. Abbiamo concordato che sarà sufficiente realizzare una webapp che permetta di creare dei semplici workflow (semplici nel senso che non siano troppo densi a livello di archi/nodi) con un drag&drop. Tali workflow dovranno essere eseguiti tramite un agente.

             Riguardo ai prossimi incontri con l'azienda, si fisserà l'incontro per il Design Thinking a gennaio e, sempre nello stesso mese, si inizierà ad avere degli incontri più frequenti (ogni due settimane circa) per allinearci sul lavoro svolto ed evitare di perdere i contatti.
  ],
  decisioni: (
    ([Analisi dei requisiti],
        [#link("https://github.com/techminds-unipd/docs/issues/122")[Issue \#122]: Fix da UC13 a UC15],
        [#link("https://github.com/techminds-unipd/docs/issues/121")[Issue \#121]: Fix da UC10 a UC12],
        [#link("https://github.com/techminds-unipd/docs/issues/120")[Issue \#120]: Fix da UC6 a UC9],
        [#link("https://github.com/techminds-unipd/docs/issues/119")[Issue \#119]: Fix da UC4 a UC5],
        [#link("https://github.com/techminds-unipd/docs/issues/118")[Issue \#118]: Fix da UC1 a UC3]
    ),
    ([Pianificazione incontri],
        [Incontri periodici ogni due settimane],
        [Incontro per il Design Thinking]
    )

  ),
  firma: true
)