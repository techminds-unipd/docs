#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection

=== Sprint 6
- Durata: 17/02/2025 - 21/02/2025

==== Pianificazione
Questo sesto sprint ha l'obiettivo primario di correggere il documento di analisi dei requisiti a seguito di quanto riportato dal professor Cardin nella valutazione RTB. La durata sarà di una settimana in quanto ritenuta sufficiente per portare a termine quanto di seguito preventivato.

- Ruoli:
  - responsabile: #team.C\;
  - amministratore: #team.A\;
  - analista: #team.T, #team.M, #team.L\;
  - verificatore: #team.G, #team.S.

- Issue:
  - Analisi dei requisiti
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

  - Piano di progetto
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
      task("Aggiungere nuova tabella Tracciamento", (from: 3, to: 4, style: (stroke: 8pt + gray)), (from: 3, to: 4, style: (stroke: 2pt + red)))
      task("Rendere atomici i requisiti funzionali", (from: 2, to: 4, style: (stroke: 8pt + gray)), (from: 1, to: 4, style: (stroke: 2pt + red)))
      task("Aggiungere nuovi requisiti funzionali", (from: 1, to: 5, style: (stroke: 8pt + gray)), (from: 1, to: 4, style: (stroke: 2pt + red)))
      task("Correzione requisiti qualità e vincolo", (from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task("Correzione salvataggio workflow", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task("Correzione visualizzazione blocchi configurati", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 2, style: (stroke: 2pt + red)))
      task(align(center, [Correzione visualizzazione, creazione #linebreak() e risultato workflow]), (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task("Correzione esecuzione del workflow", (from: 0, to: 3, style: (stroke: 8pt + gray)), (from: 2, to: 3, style: (stroke: 2pt + red)))
      task("Risoluzione struttura UC", (from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task(align(center, [Aggiungere numeri di versione #linebreak() e ultima visita nei link]), (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Piano di progetto*], {
      task("Pianificazione sprint 6", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task(align(center, [Aggiungere issue non inizialmente #linebreak() pianificate in sprint 5]), (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task(align(center, [Documentare preventivo a finire #linebreak()in struttura sprint]), (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task("Ridondanza diagramma di Gantt", (from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Altro*], {
      task(align(center, [Mettere il numero di versione sui #linebreak() documenti nel sito web]), (from: 4, to: 5, style: (stroke: 8pt + gray)), (from: 4, to: 5, style: (stroke: 2pt + red)))
    })
  }
),
caption: [Diagramma Gantt sprint 6.]
)<diagramma-gantt-sprint6>

==== Conclusioni
Il team è riuscito a completare tutte le attività, spesso con largo anticipo.
Durante il terzo giorno dello sprint ci siamo riuniti per svolgere la riunione RTB col prof. Vardanega, che ha avuto esito positivo.


==== Retrospettiva
Durante questo sprint il team ha lavorato bene ed è riuscito a concludere i compiti assegnati in un tempo minore di quanto preventivato. Questo è dovuto al fatto che gran parte delle issue riguardava la correzione dell'analisi dei requisiti, su cui il team ha fatto molta pratica negli sprint precedenti. Altri punti che hanno contributito sono la suddivisione efficace dei compiti e che la lista delle correzioni da effettuare, fosse molto dettagliata. \
Dopo aver ricevuto la valutazione dell'RTB da parte del docente abbiamo deciso di attuare i seguenti miglioramenti:
- Rendere il contenuto più procedurale che narrativo in norme di progetto;
- Aggiungere una sezione dedicata ai rischi nei prossimi sprint in piano di progetto;
- Includere il preventivo a finire in ogni sprint nel piano di progetto;
- Approfondire la discussione degli andamenti delle metriche nel piano di qualifica;
- Togliere il changelog nei verbali;
- Impegnarci a contattare l'azienda più spesso.

===== Preventivo

#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 6)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo

#tabellaSprint(6, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint4> \

#pieChartSprint(6, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint4> \

#if consuntivo != none [

    #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo

    ===== Consuntivo
    I numeri tra parentesi indicano le variazioni rispetto al preventivo.

    #tabellaSprint(6, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
    <tabella-ConsuntivoSprint6> \
    #pieChartSprint(6, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
    <grafico-ConsuntivoSprint6> \
]

==== Aggiornamento preventivo a finire
Durante la retrospettiva dello sprint 6 abbiamo concordato che l'attuale preventivo a finire, modificato nello sprint precedente, non ha bisogno di modifiche.
Questo PaF viene riportato nella sottostante @tabella-paf-sprint-6.
#figure(
    table(
        columns: (1fr,)*5,
        align: center+horizon,
            fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        table.header([*Ruolo*],[*Costo orario*],[*Stima oraria*],[*Percentuale*],[*Stima costo*]),
        [Responsabile], [30 #sym.euro], [40], [6%], [1.200 #sym.euro],
        [Amministratore], [20 #sym.euro], [100], [15%], [2.000 #sym.euro],
        [Analista], [25 #sym.euro], [55], [8%], [1.375 #sym.euro],
        [Progettista], [25 #sym.euro], [100], [15%], [2.500 #sym.euro],
        [Programmatore], [15 #sym.euro], [190], [29%], [2.850 #sym.euro],
        [Verificatore], [15 #sym.euro], [180], [27%], [2.700 #sym.euro],
        table.cell([*Costo Totale*], colspan: 4, fill: white), table.cell([*12.625 #sym.euro*], fill: white)
    ),
    caption: "Preventivo a finire sprint 6."
)<tabella-paf-sprint-6>