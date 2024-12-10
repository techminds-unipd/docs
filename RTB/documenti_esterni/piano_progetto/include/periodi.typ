#import "/template/template.typ": glossario,team
#import "@preview/timeliney:0.1.0"

= Periodi
In questa sezione verranno elencati i periodi di lavoro suddivisi per le milestone più rilevanti del progetto didattico. Ogni periodo è composto da più sprint dato che abbiamo deciso di utilizzare una metodologia di lavoro agile, prendendo come riferimento il modello SCRUM. 
== RTB
In seguito all'assegnazione del capitolato, abbiamo constatato che fosse prematuro cominciare il primo sprint senza avere avuto un primo contatto con il proponente. In attesa quindi dell'incontro con l'azienda VarGroup, la prima settimana dall'11/11/2024 al 17/11/2024 è stata dedicata alla stesura della struttura dei documenti e alla definizione dei ruoli per il primo sprint. Questo periodo "pre-sprint" ci ha permesso di iniziare a prendere confidenza con i vari ruoli svolgendo un allenamento propedeutico al vero e proprio sprint.
=== Sprint 1
- Durata: 18/11/2024 - 06/12/2024\
- Pianificazione: 
Data la scarsa conoscenza del dominio, il primo sprint avrà una durata maggiore a quelli successivi e verrà dedicato allo studio delle tecnologie necessarie per lo sviluppo del progetto. In accordo con il proponente, abbiamo deciso quindi di dare maggior priorità all'autoformazione sulle nuove tecnologie. Sono anche stati concordati dei corsi di formazione in presenza con l'azienda, nelle date 26/11/2024 e 28/11/2024, ed un ulteriore corso a distanza il giorno 03/12/2024. Il tempo rimanente verrà poi dedicato alla stesura di una parte del documento di analisi dei requisiti. Inoltre andremo ad aggiornare il piano di progetto, in particolare la sezione “Analisi dei rischi”, ed il documento riguardante le norme di progetto.\

- Ruoli:
  - responsabile: #team.M\;
  - amministratore: #team.T\;
  - analista: #team.G, #team.L, #team.S\;
  - verificatore: #team.A, #team.C.

- Issues:
  - #link("https://github.com/techminds-unipd/docs/issues/56")[Issue \#56]: Sostituire termini del glossario nei documenti;
  - #link("https://github.com/techminds-unipd/docs/issues/57")[Issue \#57]: Miglioramenti grafici documentazione;
  - #link("https://github.com/techminds-unipd/docs/issues/60")[Issue \#60]: Autoformazione tecnologie proposte dall'azienda;
    - #link("https://github.com/techminds-unipd/docs/issues/64")[Issue \#64]: React;
    - #link("https://github.com/techminds-unipd/docs/issues/65")[Issue \#65]: Typescript;
    - #link("https://github.com/techminds-unipd/docs/issues/66")[Issue \#66]: Node.js;
    - #link("https://github.com/techminds-unipd/docs/issues/67")[Issue \#67]: MongoDB;
  - #link("https://github.com/techminds-unipd/docs/issues/62")[Issue \#62]: Redazione diagrammi dei casi d'uso;
  - #link("https://github.com/techminds-unipd/docs/issues/68")[Issue \#68]: Redazione sprint 1 in piano di progetto;
  - #link("https://github.com/techminds-unipd/docs/issues/69")[Issue \#69]: Inizio analisi dei rischi in piano di progetto;
  - #link("https://github.com/techminds-unipd/docs/issues/70")[Issue \#70]: Aggiornamento norme di progetto.

- Diagramma di Gantt:
Questo digramma mostra come sono avvenute le attività nell'arco temporate dello sprint.
Il diagramma conteggia solamente i giorni produttivi, tralasciando quindi le festività e i fine settimana.
#linebreak()I colori sono significativi:
#list(
    indent: 10pt,
    marker: [‣],
[il #underline("grigio", stroke: 1pt + gray, evade: false) indica l'arco di tempo preventivato;],
[il #underline("verde", stroke: 1pt + green, evade: false) indica il tempo risparmiato rispetto al preventivato;],
[il #underline("rosso", stroke: 1pt + red, evade: false) indica il tempo sforato rispetto al preventivato;],
[il #underline("nero", stroke: 1pt + black, evade: false) indica il range complessivo di un gruppo di task.]
)

#figure(
timeliney.timeline(
  show-grid: true,
  {
    import timeliney: *

    headerline(group(([*Novembre 2024*], 10)), group(([*Dicembre 2024*], 5)))
    headerline(
      group(..range(5).map(n => strong(str(n + 18)))),
      group(..range(5).map(n => strong(str(n + 18+7)))),
      group(..range(5).map(n => strong(str(n + 2)))),
    )

    taskgroup(title: [*Autoformazione*], {
      task("React", (from: 0, to: 10, style: (stroke: 2pt + gray)), (from: 10, to: 15, style: (stroke: 2pt + red)))
      task("Node.js", (from: 0, to: 10, style: (stroke: 2pt + gray)), (from: 10, to: 15, style: (stroke: 2pt + red)))
      task("Typescript", (from: 0, to: 10, style: (stroke: 2pt + gray)), (from: 10, to: 15, style: (stroke: 2pt + red)))
      task("MongoDB", (from: 0, to: 10, style: (stroke: 2pt + gray)), (from: 10, to: 15, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Analisi dei requisiti*], {
      task("Redazione diagrammi UC", (from: 9, to: 14, style: (stroke: 2pt + gray)), (from: 14, to: 15, style: (stroke: 2pt + red)))
      task("User Story 1", (from: 10, to: 12, style: (stroke: 2pt + gray)), (from: 12, to: 13, style: (stroke: 2pt + red)))
      task("User Story 2", (from: 10, to: 13, style: (stroke: 2pt + gray)))
      task("User Story 3", (from: 10, to: 14, style: (stroke: 2pt + gray)))
      task("User Story 4", (from: 12, to: 15, style: (stroke: 2pt + gray)))
      task("User Story 5", (from: 12, to: 14, style: (stroke: 2pt + gray)), (from: 14, to: 15, style: (stroke: 2pt + red)))
    })

    task("Aggiornamento NdP", (from: 1, to: 3, style: (stroke: 2pt + gray)))
    task("Sostituire termini glossario", (from: 1, to: 4, style: (stroke: 2pt + gray)))
    task("Inizio analisi dei rischi", (from: 4, to: 5, style: (stroke: 2pt + gray)))
    task("Redazione sprint 1 PdP", (from: 7, to: 11, style: (stroke: 2pt + gray)))
    task("Miglioramenti grafici documentazione", (from: 10, to: 11, style: (stroke: 2pt + gray)))
    task("Rifinitura pagina HTML", (from: 14, to: 15, style: (stroke: 2pt + gray)))
    task("Fix use case", (from: 14, to: 15, style: (stroke: 2pt + gray)))
  }
),
caption: [Diagramma Gantt sprint 1.]
)

- Review:
Sono stati completati quasi tutti i task presenti nello sprint backlog tranne due task relativi alle tecnologie, ovvero Typescript #link("https://github.com/techminds-unipd/docs/issues/65")[\#65] e MongoDB #link("https://github.com/techminds-unipd/docs/issues/67")[\#67], entrambi sotto-task del task #link("https://github.com/techminds-unipd/docs/issues/60")[\#60].
#linebreak()Nel complesso in questo primo sprint si è sottostimato un po' lo studio delle tecnologie.

- Retrospettiva:
Viste le varie difficoltà nella scrittura dei casi d'uso (e non solo) sono state prese le seguenti decisioni:
#list(
    indent: 10pt,
    marker: [‣],
    [è possibile rompere le convenzioni interne quando potrebbe agevolare o velocizzare i lavori. Ad esempio sarà permesso creare un branch di feature per l'analisi dei requisiti da usare come branch padre per i branch di feature dell'analisi, rompendo la convenzione del GitHub Flow;],
    [per approfondire i casi d'uso si userà ad esempio il frontend come attore e il backend come sistema, in modo da non andare in conflitto con la definizione di attore (se il sistema non fosse solo il backend, in questo caso l'attore risulterebbe parte del sistema);],
    [nei sotto-casi d'uso, ovvero quelli inclusi in altri con la clausola UML \<\<include\>\>, l'attore principale sarà lo stesso del caso d'uso padre;],
    [nelle estensioni di un caso d'uso e nei sotto-casi d'uso non si ripetono le azioni avvenute nello use case da cui derivano, ma piuttosto vanno indicate con un link all'azione;],
    [la verifica risulta molto onerosa dato che ci sono tante convenzioni interne per la scrittura dei documenti, quindi verrà creata una checklist per agevolare i verificatori.]
)

=== Sprint 2

== PB

=== Sprint 1

=== Sprint 2