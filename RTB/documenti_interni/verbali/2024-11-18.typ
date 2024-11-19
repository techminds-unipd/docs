#import "/template/template.typ": verbale, team
#import "/template/template.typ": glossario
#show: verbale.with(
  title: "Verbale interno del 18/11/2024",
  sommario: "Primo sprint planning.",
  changelog: (
    "1.0.0", "18/11/2024", "Prima versione", team.T, "..."
  ),
  durata_luogo: ("14:45", "16:15", "chiamata Discord"),
  partecipanti: (team.T, team.L, team.M, team.C, team.G, team.A, team.S),
  ordine_giorno: ("Gestione delle parole del " + glossario[glossario], 
                  "Organizzazione dello studio delle tecnologie",
                  "Continuazione dei documenti ("+glossario[piano di progetto]+", "+glossario[analisi dei requisiti]+", "+glossario[norme di progetto]+", se necessario glossario e "+glossario[piano di qualifica]+")",
                  "Aggiunta "+glossario("labels")+" su "+glossario[Github],
                  "Assegnazione di un grado di importanza alle varie "+glossario[issues]+", data di inizio e di fine",
                  "Varie ed eventuali"
                  ),
  riassunto: [Il team si è riunito per celebrare la prima sessione di #glossario[sprint planning]. A partire dall'ordine del giorno sono state aperte le issues indicate nella sezione sottostante. 
  Si segnala che non è stato possibile tracciare la creazione delle labels per classificare le issues a causa di una limitazione di Github. 
  \ In merito alla formattazione dei #glossario[verbali], è stato concordato che le liste e gli elenchi possono terminare senza l’uso del punto e virgola.
  Per l’autoformazione, abbiamo scelto di procedere in modo asincrono, con l'eventuale implementazione degli esempi presenti nella documentazione. In caso di dubbi, sarà possibile consultare i membri del gruppo già formati sull’argomento. \ Infine, per quanto riguarda quali termini verranno segnati come presenti nel glossario, abbiamo deciso di evidenziare solo la prima occorrenza nel documento.],
  decisioni: (
    ([Documentazione], 
      [#link("https://github.com/techminds-unipd/docs/issues/62")[Issue \#62]: Redazione diagrammi dei #glossario[casi d'uso]],
      [#link("https://github.com/techminds-unipd/docs/issues/68")[Issue \#68]: Redazione sprint 1 in piano di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/69")[Issue \#69]: Inizio analisi dei rischi in piano di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/56")[Issue \#56]: Uniformare il riferimento alla funzione #raw("glossario[]")],
      [#link("https://github.com/techminds-unipd/docs/issues/70")[Issue \#70]: Aggiornamento regole tipografiche nelle norme di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/57")[Issue \#57]: Miglioramenti grafici documentazione],
    ),
    ([Autoformazione],
      [#link("https://github.com/techminds-unipd/docs/issues/60")[Issue \#60]: Autoformazione sulle tecnologie proposte dall'azienda],
      [#link("https://github.com/techminds-unipd/docs/issues/64")[Issue \#64]: React],
      [#link("https://github.com/techminds-unipd/docs/issues/65")[Issue \#65]: Typescript],
      [#link("https://github.com/techminds-unipd/docs/issues/66")[Issue \#66]: Node.js],
      [#link("https://github.com/techminds-unipd/docs/issues/67")[Issue \#67]: MongoDB],
    )

  ),
  firma: false
)