#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection

=== Sprint 6
- Durata: 17/02/2025 - 21/02/2025

==== Pianificazione
Questo sesto sprint ha l'obiettivo primario di correggere il documento di Analisi dei Requisiti a seguito di quanto riportato dal professor Cardin nella valutazione RTB. La durata sarà di una settimana in quanto ritenuta sufficiente per portare a termine quanto di seguito preventivato.

- Ruoli:
  - responsabile: #team.C\;
  - amministratore: #team.A\;
  - analista: #team.T, #team.M, #team.L\;
  - verificatore: #team.G, #team.S.

- Issue:
  - Analisi dei Requisiti
    - #link("https://github.com/techminds-unipd/docs/issues/342")[Issue \#342] #footnote(link("https://github.com/techminds-unipd/docs/issues/342")): Aggiungere nuova tabella Tracciamento;
    - #link("https://github.com/techminds-unipd/docs/issues/341")[Issue \#341] #footnote(link("https://github.com/techminds-unipd/docs/issues/341")): Rendere atomici i requisiti funzionali;
    - #link("https://github.com/techminds-unipd/docs/issues/340")[Issue \#340] #footnote(link("https://github.com/techminds-unipd/docs/issues/340")): Aggiungere nuovi requisiti funzionali;
    - #link("https://github.com/techminds-unipd/docs/issues/339")[Issue \#339] #footnote(link("https://github.com/techminds-unipd/docs/issues/339")): Correzione requisiti qualità e vincolo;
    - #link("https://github.com/techminds-unipd/docs/issues/338")[Issue \#338] #footnote(link("https://github.com/techminds-unipd/docs/issues/338")): Correzione salvataggio workflow;
    - #link("https://github.com/techminds-unipd/docs/issues/337")[Issue \#337] #footnote(link("https://github.com/techminds-unipd/docs/issues/337")): Correzione visualizzazione blocchi configurati;
    - #link("https://github.com/techminds-unipd/docs/issues/336")[Issue \#336] #footnote(link("https://github.com/techminds-unipd/docs/issues/336")): Correzione visualizzazione, creazione e risultato workflow;
    - #link("https://github.com/techminds-unipd/docs/issues/335")[Issue \#335] #footnote(link("https://github.com/techminds-unipd/docs/issues/335")): Correzione esecuzione del workflow;
    - #link("https://github.com/techminds-unipd/docs/issues/334")[Issue \#334] #footnote(link("https://github.com/techminds-unipd/docs/issues/334")): Risoluzione struttura UC;
    - #link("https://github.com/techminds-unipd/docs/issues/333")[Issue \#333] #footnote(link("https://github.com/techminds-unipd/docs/issues/333")): Aggiungere numeri di versione e ultima visita nei link.

  - Piano di Progetto
    - #link("https://github.com/techminds-unipd/docs/issues/343")[Issue \#343] #footnote(link("https://github.com/techminds-unipd/docs/issues/343")): Pianificazione sprint 6;
    - #link("https://github.com/techminds-unipd/docs/issues/330")[Issue \#330] #footnote(link("https://github.com/techminds-unipd/docs/issues/330")): Aggiungere issue non inizialmente pianificate in sprint 5;
    - #link("https://github.com/techminds-unipd/docs/issues/325")[Issue \#325] #footnote(link("https://github.com/techminds-unipd/docs/issues/325")): Documentare preventivo a finire in struttura sprint;
    - #link("https://github.com/techminds-unipd/docs/issues/324")[Issue \#324] #footnote(link("https://github.com/techminds-unipd/docs/issues/324")): Ridondanza diagramma di Gantt.

  - Altro
    - #link("https://github.com/techminds-unipd/docs/issues/313")[Issue \#313] #footnote(link("https://github.com/techminds-unipd/docs/issues/313")): Mettere il numero di versione sui documenti nel sito web.

==== Diagramma di Gantt

#figure(
timeliney.timeline(
  show-grid: true,
  {
    import timeliney: *
    headerline(([*Febbraio 2025*], 5))
    headerline(
      group(..range(5).map(n => strong(str(n + 17))))
    )

    taskgroup(title: [*Analisi dei requisiti*],{
      task("Aggiungere nuova tabella Tracciamento", (from: 3, to: 4, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
      task("Rendere atomici i requisiti funzionali", (from: 2, to: 4, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
      task("Aggiungere nuovi requisiti funzionali", (from: 1, to: 5, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
      task("Correzione requisiti qualità e vincolo", (from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
      task("Correzione salvataggio workflow", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
      task("Correzione visualizzazione blocchi configurati", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
      task("Correzione visualizzazione, creazione e risultato workflow", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
      task("Correzione esecuzione del workflow", (from: 0, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
      task("Risoluzione struttura UC", (from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
      task("Aggiungere numeri di versione e ultima visita nei link", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Piano di Progetto*], {
      task("Pianificazione sprint 6", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
      task("Aggiungere issue non inizialmente pianificate in sprint 5", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
      task("Documentare preventivo a finire in struttura sprint", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
      task("Ridondanza diagramma di Gantt", (from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 1, to: 1, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Altro*], {
      task("Mettere il numero di versione sui documenti nel sito web", (from: 4, to: 5, style: (stroke: 8pt + gray)), (from: 4, to: 4, style: (stroke: 2pt + red)))
    })
  }
),
caption: [Diagramma Gantt sprint 6.]
)<diagramma-gantt-sprint6>

//==== Conclusioni


//==== Retrospettiva

===== Preventivo

#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 6)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo

#tabellaSprint(6, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint4> \

#pieChartSprint(6, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint4> \

/*#if consuntivo != none [

    #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo

    ===== Consuntivo
    I numeri tra parentesi indicano le variazioni rispetto al preventivo.

    #tabellaSprint(4, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
    <tabella-ConsuntivoSprint4> \
    #pieChartSprint(4, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
    <grafico-ConsuntivoSprint4> \
]*/
