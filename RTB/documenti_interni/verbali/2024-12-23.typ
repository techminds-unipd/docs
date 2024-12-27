
#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale interno del 23/12/2024",
  sommario: "Verbale che riassume la riunione del 23/12/2024.",
  changelog: (
    "1.0.0", "23/12/2024", "Prima versione", team.A,".-.-."
  ),
  durata_luogo: ("9:00", "12:15", "chiamata Discord"),
  partecipanti: (team.A, team.S, team.T, team.M, team.G, team.C, team.L),
  ordine_giorno: ("Sprint retrospective", "Sprint plan"),
  riassunto: [Ci siamo riuniti per celebrare la sprint retrospective dello sprint 2, successivamente abbiamo celebrato lo sprint plan dello sprint 3.
             Abbiamo visionato i documenti prodotti nello sprint 2, in modo da allinearci sui vari progressi.
             Successivamente abbiamo visionato la Project Board di Github per verificare quali task dovevano essere completati entro fine sprint. Complessivamente sono stati completati la maggior parte dei task.
             #linebreak()#linebreak()La sprint retrospective ha prodotto i seguenti risultati:

             - abbiamo eliminato il campo "Estimate" dalle issue, in quanto non è stato utilizzato;
             - abbiamo deciso di inserire il campo "Giorni previsti" per ogni issue, in modo da avere una stima più precisa dei tempi di completamento;
             - il campo "priority" delle issue non sarà più descritto dai valori P0,P1 e P2 ma dai valori "alta", "media" e "bassa";
            - alcuni ruoli sono stati considerati scarni di lavoro, abbiamo quindi deciso che i componenti del gruppo possono dedicare una parte delle proprie ore lavoro nel contribuire ad un ruolo che non è il proprio, dando comunque priorità al ruolo deciso nello sprint planning;
            - lo studio delle tecnologie è stato completato da tutti i componenti del gruppo.#linebreak()#linebreak()
             Successivamente abbiamo celebrato lo sprint plan dello sprint 3, che avrà la durata di tre settimane, vista la minore disponibilità dei componenti del gruppo a causa delle festività natalizie.
             Abbiamo deciso di focalizzare il lavoro di questo sprint sul PoC e sull'analisi dei requisiti.
             Infine abbiamo creato tutte le issue relative alla documentazione e non solo, sotto segue una lista esaustiva di ciò.

  ],
  decisioni: (
    ([PoC],   
        [#link("https://github.com/techminds-unipd/PoC/issues/3")[Issue \#3]: Inizio implementazione agenti nel backend (non completata durante lo sprint 2)],
        [#link("https://github.com/techminds-unipd/PoC/issues/8")[Issue \#8]: Gestione collegamento servizi Google]
    ),
    
    ([Analisi dei requisiti],
        [#link("https://github.com/techminds-unipd/docs/issues/149")[Issue \#149]: UC blocco Calendar],
        [#link("https://github.com/techminds-unipd/docs/issues/150")[Issue \#150]: UC blocco Docs],
        [#link("https://github.com/techminds-unipd/docs/issues/151")[Issue \#151]: UC approfondimento esecuzione workflow],
        [#link("https://github.com/techminds-unipd/docs/issues/152")[Issue \#152]: UC creazione workflow],
        [#link("https://github.com/techminds-unipd/docs/issues/153")[Issue \#153]: UC modifica workflow],
        [#link("https://github.com/techminds-unipd/docs/issues/154")[Issue \#154]: Fix UC Visualizzazione blocchi configurati e avviso servizi collegati]   
    ),

    ([Piano di Progetto],
        [#link("https://github.com/techminds-unipd/docs/issues/155")[Issue \#155]: Preventivo sprint 3],
        [#link("https://github.com/techminds-unipd/docs/issues/156")[Issue \#156]: Consuntivo sprint 2]
    ),

    ([Piano di Qualifica],
        [#link("https://github.com/techminds-unipd/docs/issues/109")[Issue \#109]: Fix piano di qualifica (non completata durante lo sprint 2)],
        [#link("https://github.com/techminds-unipd/docs/issues/111")[Issue \#111]: Redigere nuove sezioni piano di qualifica (non completata durante lo sprint 2)],
    ),

    ([Norme di progetto],
       [#link("https://github.com/techminds-unipd/docs/issues/157")[Issue \#157]: Redigere sezione 2.2 ndp],
       [#link("https://github.com/techminds-unipd/docs/issues/158")[Issue \#158]: Redigere sezione 3.4, 3.5],
       [#link("https://github.com/techminds-unipd/docs/issues/159")[Issue \#159]: Aggiornamento ndp],
    ),
    
    ([Varie],
      [#link("https://github.com/techminds-unipd/docs/issues/72")[Issue \#72]: Aggiungere termini al glossario],
      [#link("https://github.com/techminds-unipd/docs/issues/160")[Issue \#160]: Fix script python]
  )
  ),
  firma: false
)
