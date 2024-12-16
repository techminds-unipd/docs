#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection
//#import "/template/template.typ": ,textCellColorConsuntivo,calcolaBilancio,

=== Sprint 1
- Durata: 18/11/2024 - 06/12/2024\
==== Pianificazione
Data la scarsa conoscenza del dominio, il primo sprint avrà una durata maggiore rispetto a quelli successivi e verrà dedicato allo studio delle tecnologie necessarie per lo sviluppo del progetto. In accordo con il proponente, abbiamo deciso quindi di dare maggior priorità all'autoformazione sulle nuove tecnologie. Sono anche stati concordati dei corsi di formazione in presenza con l'azienda, nelle date 26/11/2024 e 28/11/2024, e un ulteriore corso a distanza il giorno 03/12/2024. Il tempo rimanente verrà poi dedicato alla stesura di una parte del documento di analisi dei requisiti. Inoltre andremo ad aggiornare il piano di progetto, in particolare la sezione “Analisi dei rischi”, e il documento riguardante le norme di progetto.\

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

==== Diagramma di Gantt
Questo diagramma mostra come sono avvenute le attività nell'arco temporale dello sprint.
Il diagramma conteggia solamente i giorni produttivi, tralasciando quindi le festività e i fine settimana.
#linebreak()I colori sono significativi:
#list(
    indent: 10pt,
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
    task("Fix use case", (from: 14, to: 15, style: (stroke: 2pt + gray)))
    })

    task("Aggiornamento NdP", (from: 1, to: 3, style: (stroke: 2pt + gray)))
    task("Sostituire termini glossario", (from: 1, to: 4, style: (stroke: 2pt + gray)))
    task("Inizio analisi dei rischi", (from: 4, to: 5, style: (stroke: 2pt + gray)))
    task("Redazione sprint 1 in PdP", (from: 7, to: 11, style: (stroke: 2pt + gray)))
    task("Miglioramenti grafici documentazione", (from: 10, to: 11, style: (stroke: 2pt + gray)))
    task("Rifinitura pagina HTML", (from: 14, to: 15, style: (stroke: 2pt + gray)))
  }
),
caption: [Diagramma Gantt sprint 1.]
)<diagramma-gantt-sprint1>

==== Conclusioni
Sono stati completati quasi tutti i task presenti nello sprint backlog tranne due task relativi alle tecnologie, ovvero Typescript #link("https://github.com/techminds-unipd/docs/issues/65")[\#65] e MongoDB #link("https://github.com/techminds-unipd/docs/issues/67")[\#67], entrambi sotto-task del task #link("https://github.com/techminds-unipd/docs/issues/60")[\#60].
#linebreak()Nel complesso in questo primo sprint si è sottostimato lo studio delle tecnologie.

==== Retrospettiva
L'analisi delle difficoltà incontrate durante questo sprint ha portato alle seguenti decisioni:
#list(
    indent: 10pt,
    [è possibile rompere le convenzioni interne quando potrebbe agevolare o velocizzare i lavori. Ad esempio, sarà permesso creare un branch per l'analisi dei requisiti da usare come padre per i branch di feature dell'analisi, rompendo la convenzione del GitHub Flow che obbliga ad avere tutti i branch che derivano dal main;],
    [per approfondire i casi d'uso si userà ad esempio il frontend come attore e il backend come sistema, in modo da non andare in conflitto con la definizione di attore (nel caso in cui il sistema non fosse circoscritto/limitato al backend, l'attore frontend risulterebbe parte di esso e quindi non più attore);],
    [nei sotto-casi d'uso, ovvero quelli inclusi in altri con la clausola UML #sym.angle.l.double include #sym.angle.r.double, l'attore principale sarà lo stesso del caso d'uso "padre";],
    [nelle estensioni di un caso d'uso e nei sotto-casi d'uso non si ripetono le azioni avvenute nello use case da cui derivano, ma piuttosto si indicano con un link all'azione;],
    [verrà creata una checklist con i vari controlli da svolgere nei documenti per agevolare le attività dei verificatori, dal momento che la verifica è risultata essere molto onerosa per le tante convenzioni interne adottate;],
    [si cercherà di automatizzare il controllo dei termini del glossario presenti nei vari documenti, visto che verificare che i termini siano correttamente indicati richiede una quantità di tempo molto onerosa.]
)

==== Costi

===== Preventivo

#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 1)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo

#tabellaSprint(1, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint1> \

#pieChartSprint(1, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint1> \


#if consuntivo != none [

    #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo

    ===== Consuntivo
    I numeri tra parentesi indicano le variazioni rispetto al preventivo.

    #tabellaSprint(1, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
    <tabella-ConsuntivoSprint1> \
    #pieChartSprint(1, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
    <grafico-ConsuntivoSprint1> \
]
