#import "/template/template.typ": verbale, team

#show: verbale.with(
  title: "Verbale interno del 09/12/2024",
  sommario: "Verbale che riassume la riunione del 09/12/2024.",
  autore: team.G,
  verificatore: team.S,
  durata_luogo: ("14:00", "18:30", "chiamata Discord"),
  partecipanti: (team.A, team.S, team.T, team.M, team.G, team.C, team.L),
  ordine_giorno: ("Sprint retrospective", "Sprint plan"),
  riassunto: [Ci siamo riuniti per celebrare la sprint retrospective dello sprint 1, successivamente abbiamo celebrato lo sprint plan dello sprint 2.
             Abbiamo visionato i documenti prodotti nello sprint 1, in modo da allinearci sui vari progressi.
             Successivamente abbiamo visionato la Project Board di Github per verificare quali task dovevano essere completati entro fine sprint. Complessivamente sono stati completati la maggior parte dei task tranne alcuni di autoformazione.
             #linebreak()#linebreak()La sprint retrospective ha prodotto i seguenti risultati:
             - è possibile rompere le convenzioni interne quando potrebbe agevolare o velocizzare i lavori. Ad esempio, sarà permesso creare un branch di feature per l'analisi dei requisiti da usare come branch padre per i branch di feature dell'analisi, rompendo la convenzione del GitHub Flow;
             - per approfondire i casi d'uso si potranno usare attori che non siano l'utente umano. Ad esempio, si potrà creare un caso d'uso che abbia il frontend come attore e il backend come sistema. Ciò non crea conflitti con la definizione di attore dato che, nel caso d'uso, il sistema viene circoscritto al backend;
             - nei sotto-casi d'uso, ovvero quelli inclusi in altri con la clausola UML \<\<include\>\>, l'attore principale sarà lo stesso del caso d'uso padre;
             - nelle estensioni di un caso d'uso e nei sotto-casi d'uso non vanno ripetute le azioni avvenute nello use case da cui derivano, ma piuttosto vanno indicate con un link all'azione;
             - la verifica risulta molto onerosa dato che ci sono tante convenzioni interne per la scrittura dei documenti, quindi verrà creata una checklist per agevolare i verificatori.

             Durante la riunione sono sorti ulteriori dubbi sui casi d'uso, quindi abbiamo inviato una mail al docente Cardin per fissare un incontro per chiarirli.#linebreak()
             Inoltre, vista la poca comunicazione recente con il proponente, abbiamo chiesto sul gruppo Slack di poter fissare qualche incontro (magari anche periodico) per visionare i documenti scritti finora.

             Successivamente abbiamo celebrato lo sprint plan dello sprint 2, che avrà la durata di due settimane.
             Abbiamo deciso di focalizzare il lavoro di questo sprint sul PoC e sull'analisi dei requisiti.
             Abbiamo creato una nuova repository chiamata PoC, a cui sono state assegnate le issue relative ad essa.
             Infine abbiamo creato tutte le issue relative alla documentazione e non solo, sotto segue una lista esaustiva di ciò.

  ],
  decisioni: (
    ([PoC],
        [#link("https://github.com/techminds-unipd/PoC/issues/1")[Issue \#1]: Inizio implementazione frontend workflow],
        [#link("https://github.com/techminds-unipd/PoC/issues/2")[Issue \#2]: Inizio implementazione backend],
        [#link("https://github.com/techminds-unipd/PoC/issues/3")[Issue \#3]: Inizio implementazione agenti nel backend]
    ),
    ([Autoformazione], [#link("https://github.com/techminds-unipd/docs/issues/65")[Issue \#65]: Typescript (non completata durante lo sprint 1)]),
    ([Analisi dei requisiti],
        [#link("https://github.com/techminds-unipd/docs/issues/89")[Issue \#89]: User Story 6],
        [#link("https://github.com/techminds-unipd/docs/issues/104")[Issue \#104]: Fix generale use case],
        [#link("https://github.com/techminds-unipd/docs/issues/105")[Issue \#105]: Scrivere nuove sezioni in analisi dei requisiti]
    ),
    ([Piano di Progetto],
        [#link("https://github.com/techminds-unipd/docs/issues/83")[Issue \#83]: Sistemare il paragrafo spiegazioni],
        [#link("https://github.com/techminds-unipd/docs/issues/106")[Issue \#106]: Aggiornare piano di progetto (sezione sprint 1)],
        [#link("https://github.com/techminds-unipd/docs/issues/110")[Issue \#110]: Aggiungere info sprint 2]
    ),
    ([Piano di Qualifica],
        [#link("https://github.com/techminds-unipd/docs/issues/109")[Issue \#109]: Fix piano di qualifica],
        [#link("https://github.com/techminds-unipd/docs/issues/111")[Issue \#111]: Redigere nuove sezioni piano di qualifica],
        [#link("https://github.com/techminds-unipd/docs/issues/112")[Issue \#112]: Redigere "Pianificazione" in piano di progetto]
    ),
    ([Norme di progetto],
        [#link("https://github.com/techminds-unipd/docs/issues/113")[Issue \#113]: Redigere "Processi organizzativi" in norme di progetto],
        [#link("https://github.com/techminds-unipd/docs/issues/114")[Issue \#114]: Redigere "Processi primari" in norme di progetto]
    ),
    ([Automazione],
        [#link("https://github.com/techminds-unipd/docs/issues/107")[Issue \#107]: Creazione script check_glossario.py],
        [#link("https://github.com/techminds-unipd/docs/issues/108")[Issue \#108]: Creazione script indice_gulpease.py]
    ),
    ([Varie], [#link("https://github.com/techminds-unipd/docs/issues/115")[Issue \#115]: Creazione checklist per i verificatori]),

  ),
  firma: false
)