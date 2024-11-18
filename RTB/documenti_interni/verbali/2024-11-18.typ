#import "/template/template.typ": verbale, team
#import "/template/template.typ": glossario
#show: verbale.with(
  title: "Verbale interno del 18/11/2024",
  sommario: "Primo sprint planning",
  changelog: (
    "1.0.0", "18/11/2024", "Prima versione", team.T, "..."
  ),
  durata_luogo: ("14:45", "16:00", "chiamata Discord"),
  partecipanti: (team.T, team.L, team.M, team.C, team.G, team.A, team.S),
  ordine_giorno: ("Gestione delle parole del glossario", 
                  "Organizzazione dello studio delle tecnologie",
                  "Continuazione dei documenti (piano di progetto, analisi dei requisiti, norme di progetto, se necessario glossario e piano di qualifica)",
                  "Aggiunta label su github",
                  "Assegnazione di un grado di importanza alle varie issues, data di inizio e di fine",
                  "Varie ed eventuali"
                  ),
  riassunto: [Il team si è riunito per celebrare la prima sessione di sprint planning. A partire dall'ordine del giorno sono state aperte le issue indicate nella sezione sottostante. 
  È da segnalare che non è stato possibile tracciare la creazione delle #glossario[lables] per classificare le #glossario[issues] perché #glossario[Github] non lo permette. 
  \ Infine abbiamo deciso di comune accordo che le liste possono non terminare con punto e virgola.],
  decisioni: (
    ([Documentazione], 
      [#link("https://github.com/techminds-unipd/docs/issues/62")[Issue \#62]: Redazione diagrammi dei casi d'uso],
      [#link("https://github.com/techminds-unipd/docs/issues/68")[Issue \#68]: Redazione sprint 1 in piano di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/69")[Issue \#69]: Inizio analisi dei rischi in piano di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/56")[Issue \#56]: Uniformare il riferimento alla funzione #raw("glossario[]")],
      [#link("https://github.com/techminds-unipd/docs/issues/70")[Issue \#70]: Aggiornamento regole tipografiche nelle norme di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/57")[Issue \#57]: Miglioramenti grafici documentazione],

    ),
    ([Autoformazione],
      [#link("https://github.com/techminds-unipd/docs/issues/60")[Issue \#60]: Autoformazione sulle tecnologie proposte dall'azienda],
    )

  ),
  firma: false
)