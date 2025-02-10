#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection

=== Sprint 5
- Durata: 05/02/2025 - 14/02/2025

==== Pianificazione
Nel quinto sprint intendiamo focalizzarci sulla realizzazione del cruscotto per le metriche già individuate durante gli sprint precedenti e sul miglioramento di alcuni dettagli. Prevediamo inoltre di effettuare una revisione di tutti i documenti prodotti fino a questo momento per correggere eventuali errori. Durante questo sprint intendiamo candidarci per la revisione RTB.

- Ruoli:
  - responsabile: #team.L\;
  - amministratore: #team.G, #team.C, #team.A\;
  - analista: #team.S\;
  - verificatore: #team.T, #team.M.

- Issue:
  - Analisi dei Requisiti
    - #link("https://github.com/techminds-unipd/docs/issues/229")[Issue \#229]: Refactoring Analisi dei Requisiti.

  - Piano di Progetto
    - #link("https://github.com/techminds-unipd/docs/issues/232")[Issue \#232]: Scrivere consuntivo sprint 4;
    - #link("https://github.com/techminds-unipd/docs/issues/233")[Issue \#233]: Scrivere pianificazione sprint 5;
    - #link("https://github.com/techminds-unipd/docs/issues/139")[Issue \#139]: Documentare la struttura dei periodi in PdP;
    - #link("https://github.com/techminds-unipd/docs/issues/240")[Issue \#240]: Documentare in PdP le milestone.

  - Piano di Qualifica
    - #link("https://github.com/techminds-unipd/docs/issues/226")[Issue \#226]: Modificare identificativi metriche in PdQ e NdP;
    - #link("https://github.com/techminds-unipd/docs/issues/227")[Issue \#227]: Refactoring dati metriche in PdQ;
    - #link("https://github.com/techminds-unipd/docs/issues/231")[Issue \#231]: Scrivere descrizione metriche con TODO;
    - #link("https://github.com/techminds-unipd/docs/issues/236")[Issue \#236]: Aggiornamento cruscotto;
    - #link("https://github.com/techminds-unipd/docs/issues/237")[Issue \#237]: Metriche pianificazione e miglioramento;
    - #link("https://github.com/techminds-unipd/docs/issues/238")[Issue \#238]: Uniformare la caption delle tabelle in PdQ;
    - #link("https://github.com/techminds-unipd/docs/issues/239")[Issue \#239]: Macrosezione miglioramenti in PdQ.

  - Norme di Progetto
    - #link("https://github.com/techminds-unipd/docs/issues/226")[Issue \#226]: Modificare identificativi metriche in PdQ e NdP;
    - #link("https://github.com/techminds-unipd/docs/issues/230")[Issue \#230]: Nascondere sezioni non scritte in NdP.
  - Altro
    - #link("https://github.com/techminds-unipd/docs/issues/234")[Issue \#234]: Scrivere lettera di presentazione per RTB
    - #link("https://github.com/techminds-unipd/docs/issues/235")[Issue \#235]: Uniformare date in tutti i documenti

==== Diagramma di Gantt //TODO
Questo diagramma mostra come sono avvenute le attività nell'arco temporale dello sprint.
Il diagramma conteggia solamente i giorni produttivi, tralasciando quindi le festività e i fine settimana.
#linebreak()I colori sono significativi:
#list(
    indent: 10pt,
[il #underline("grigio", stroke: 1pt + gray, evade: false) indica l'arco di tempo preventivato;],
[il #underline("rosso", stroke: 1pt + red, evade: false) indica l'arco di tempo effettivo;],
[il #underline("nero", stroke: 1pt + black, evade: false) indica il range complessivo di un gruppo di task.]
)

#figure(
timeliney.timeline(
  show-grid: true,
  {
    import timeliney: *
    headerline(([*Febbraio 2025*], 8))
    headerline(
      group(..range(3).map(n => strong(str(n + 5)))),
      group(..range(5).map(n => strong(str(n + 10))))
    )

    taskgroup(title: [*Analisi dei requisiti*],{
      task("Refactoring Analisi dei Requisiti", (from: 0, to: 1, style: (stroke: 8pt + gray)))
    })

    taskgroup(title: [*Piano di Progetto*], {
      task("Scrivere consuntivo sprint 4", (from: 1, to: 4, style: (stroke: 8pt + gray)))
      task("Scrivere pianificazione sprint 5", (from: 2, to: 5, style: (stroke: 8pt + gray)))
      task("Documentare la struttura dei periodi in PdP", (from: 1, to: 3, style: (stroke: 8pt + gray)))
      task("Documentare in PdP le milestone", (from: 2, to: 5, style: (stroke: 8pt + gray)))
    })

    taskgroup(title: [*Piano di Qualifica*], {
      task(align(center, [Modificare identificativi metriche #linebreak() in PdQ e PdP]), (from: 0, to: 2, style: (stroke: 8pt + gray)))
      task("Refactoring dati metriche in PdQ", (from: 0, to: 2, style: (stroke: 8pt + gray)))
      task("Scrivere descrizione metriche con TODO", (from: 1, to: 4, style: (stroke: 8pt + gray)))
      task("Aggiornamento cruscotto", (from: 1, to: 8, style: (stroke: 8pt + gray)))
      task("Metriche pianificazione e miglioramento", (from: 1, to: 3, style: (stroke: 8pt + gray)))
      task("Uniformare le caption delle tabelle in PdQ", (from: 0, to: 2, style: (stroke: 8pt + gray)))
      task("Macrosezione miglioramenti in PdQ", (from: 2, to: 4, style: (stroke: 8pt + gray)))
    })

    taskgroup(title: [*Norme di Progetto*], {
      task(align(center, [Modificare identificativi metriche #linebreak() in PdQ e PdP]), (from: 0, to: 2, style: (stroke: 8pt + gray)))
      task("Nascondere sezioni non scritte in NdP", (from: 0, to: 3, style: (stroke: 8pt + gray)))
    })

    taskgroup(title: [*Altro*], {
      task(align(center, [Scrivere lettera di presentazione #linebreak() per RTB]), (from: 3, to: 6, style: (stroke: 8pt + gray)))
      task("Uniformare dati in tutti i documenti", (from: 0, to: 2, style: (stroke: 8pt + gray)))
    })
  }
),
caption: [Diagramma Gantt sprint 5.]
)<diagramma-gantt-sprint5>

// ==== Conclusioni //TODO

// ==== Retrospettiva //TODO

==== Costi

===== Preventivo

#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 5)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo

#tabellaSprint(5, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint5> \

#pieChartSprint(5, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint5> \

// #if consuntivo != none [

//     #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo

//     ===== Consuntivo
//     I numeri tra parentesi indicano le variazioni rispetto al preventivo.

//     #tabellaSprint(5, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
//     <tabella-ConsuntivoSprint5> \
//     #pieChartSprint(5, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
//     <grafico-ConsuntivoSprint5> \
// ]
