#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale interno del 24/02/2025",
  sommario: "Verbale che riassume la riunione del 24/02/2025.",
  autore: team.T,
  verificatore: "q",
  durata_luogo: ("9:30", "12:15", "chiamata Discord"),
  partecipanti: (team.A, team.S, team.T, team.M, team.G, team.C, team.L),
  ordine_giorno: ("Discussione valutazione prof. Vardanega",
                  "Sprint retrospective",
                  "Sprint planning",
  ),
  riassunto: [Il gruppo si è riunito per celebrare la retrospettiva dello sprint 6 e la pianificazione dello sprint 7. \ Per prima cosa abbiamo discusso delle criticità rilevate nella valutazione dell'RTB data dal professore, suddividendole in issue atomiche. Poi è stato creato #link("https://github.com/techminds-unipd/mvp")[il repository dell'MVP]#footnote(link("https://github.com/techminds-unipd/mvp")), dando inizio alla seconda fase del progetto (PB).
  Nella repository della documentazione è stato deciso di creare una cartella PB contenente la documentazione prodotta finora e i futuri miglioramenti. Su GitHub sono state chiuse le milestone relative all'RTB e sono state create quelle relative alla PB.
  Infine ogni membro ha scritto le proprie ore consumate nello sprint 6 e quelle che prevede di effettuare nello sprint 7.
  ],
  decisioni: (
    ([Piano di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/360")[Issue \#360]: Redazione consuntivo sprint 6],
      [#link("https://github.com/techminds-unipd/docs/issues/361")[Issue \#361]: Redazione preventivo sprint 7],
      [#link("https://github.com/techminds-unipd/docs/issues/374")[Issue \#374]: Documentare nuove milestone],
      [#link("https://github.com/techminds-unipd/docs/issues/376")[Issue \#376]: Creare funzione ore_persona],
    ),
    ([Nome di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/362")[Issue \#362]: Inserire sezione "Strumenti e tecnologie"],
      [#link("https://github.com/techminds-unipd/docs/issues/363")[Issue \#363]: Uniformare nomi attività allo standard],
      [#link("https://github.com/techminds-unipd/docs/issues/365")[Issue \#365]: Definizione metriche in norme di progetto],
      [#link("https://github.com/techminds-unipd/docs/issues/375")[Issue \#375]: Gestione della configurazione MVP in norme di progetto],
    ),
    ([Piano di qualifica],
      [#link("https://github.com/techminds-unipd/docs/issues/331")[Issue \#331]: Redigere test di accettazione],
      [#link("https://github.com/techminds-unipd/docs/issues/364")[Issue \#364]: Ridondanza piano di qualifica],
      [#link("https://github.com/techminds-unipd/docs/issues/366")[Issue \#366]: Sistemare test di sistema],      
    ),
    ([Specifica tecnica],
      [#link("https://github.com/techminds-unipd/docs/issues/369")[Issue \#369]: Definire struttura generale specifica tecnica],
      [#link("https://github.com/techminds-unipd/docs/issues/370")[Issue \#370]: Redigere l'introduzione specifica tecnica],
      [#link("https://github.com/techminds-unipd/docs/issues/372")[Issue \#372]: Progettazione logica],
    ),
    ([MVP],
      [#link("https://github.com/techminds-unipd/mvp/issues/1")[Issue \#1]: Struttura generale delle componenti],
      [#link("https://github.com/techminds-unipd/mvp/issues/2")[Issue \#2]: Setup container],
      
    ),
    ([Altro],
      [#link("https://github.com/techminds-unipd/docs/issues/367")[Issue \#367]: Togliere changelog dal template dei verbali],
      [#link("https://github.com/techminds-unipd/docs/issues/368")[Issue \#368]: Controllare l'uso della parola \"fase\"],
      [#link("https://github.com/techminds-unipd/docs/issues/371")[Issue \#371]: Creare funzioni \"sezione_glossario\" e \"sezione_scopo_prodotto\"],
      [#link("https://github.com/techminds-unipd/docs/issues/373")[Issue \#373]: Aggiornamento sito web],
    )
  ),
  firma: false
)