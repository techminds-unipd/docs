#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection

=== Sprint 3
- Durata: 23/12/2024 - 10/01/2025

==== Pianificazione
In questo terzo sprint continueremo a concentrarci principalmente sulla scrittura dei casi d'uso nell'analisi dei requisiti e sul PoC, senza tralasciare i task arretrati. La durata questa voltà sarà di tre settimane, che secondo le nostre previsioni dovrebbe essere adatta al periodo delle feste natalizie, periodo in cui vi sarà una minore disponibilità dei componenti del gruppo.

- Ruoli:
  - responsabile: #team.A\;
  - amministratore: #team.S\;
  - analista: #team.C\;
  - programmatore: #team.T, #team.G\;
  - verificatore: #team.L, #team.M.

- Issue:
    - PoC
        - #link("https://github.com/techminds-unipd/PoC/issues/3")[Issue \#3] #footnote(link("https://github.com/techminds-unipd/PoC/issues/3")): Inizio implementazione agenti nel backend (non completata durante lo sprint 2);
        - #link("https://github.com/techminds-unipd/PoC/issues/8")[Issue \#8] #footnote(link("https://github.com/techminds-unipd/PoC/issues/8")): Gestione collegamento servizi Google.
    
    - Analisi dei requisiti
        - #link("https://github.com/techminds-unipd/docs/issues/149")[Issue \#149] #footnote(link("https://github.com/techminds-unipd/docs/issues/149")): UC blocco calendar;
        - #link("https://github.com/techminds-unipd/docs/issues/150")[Issue \#150] #footnote(link("https://github.com/techminds-unipd/docs/issues/150")): UC blocco pastebin;
        - #link("https://github.com/techminds-unipd/docs/issues/151")[Issue \#151] #footnote(link("https://github.com/techminds-unipd/docs/issues/151")): UC approfondimento esecuzione workflow;
        - #link("https://github.com/techminds-unipd/docs/issues/152")[Issue \#152] #footnote(link("https://github.com/techminds-unipd/docs/issues/152")): UC creazione workflow;
        - #link("https://github.com/techminds-unipd/docs/issues/153")[Issue \#153] #footnote(link("https://github.com/techminds-unipd/docs/issues/153")): UC modifica workflow;
        - #link("https://github.com/techminds-unipd/docs/issues/154")[Issue \#154] #footnote(link("https://github.com/techminds-unipd/docs/issues/154")): Fix UC visualizzazione blocchi configurati e avviso servizi collegati.
    

    - Piano di progetto
        - #link("https://github.com/techminds-unipd/docs/issues/155")[Issue \#155] #footnote(link("https://github.com/techminds-unipd/docs/issues/155")): Preventivo sprint 3;
        - #link("https://github.com/techminds-unipd/docs/issues/156")[Issue \#156] #footnote(link("https://github.com/techminds-unipd/docs/issues/156")): Consuntivo sprint 2.

    - Piano di qualifica
        - #link("https://github.com/techminds-unipd/docs/issues/109")[Issue \#109] #footnote(link("https://github.com/techminds-unipd/docs/issues/109")): Fix piano di qualifica (non completata durante lo sprint 2);
        - #link("https://github.com/techminds-unipd/docs/issues/111")[Issue \#111] #footnote(link("https://github.com/techminds-unipd/docs/issues/111")): Redigere nuove sezioni piano di qualifica (non completata durante lo sprint 2).

    - Norme di progetto
       - #link("https://github.com/techminds-unipd/docs/issues/157")[Issue \#157] #footnote(link("https://github.com/techminds-unipd/docs/issues/157")): Redigere sezione 2.2 norme di progetto;
       - #link("https://github.com/techminds-unipd/docs/issues/158")[Issue \#158] #footnote(link("https://github.com/techminds-unipd/docs/issues/158")): Redigere sezione 3.4, 3.5;
       - #link("https://github.com/techminds-unipd/docs/issues/159")[Issue \#159] #footnote(link("https://github.com/techminds-unipd/docs/issues/159")): Aggiornamento norme di progetto.
    
    - Varie
      - #link("https://github.com/techminds-unipd/docs/issues/72")[Issue \#72] #footnote(link("https://github.com/techminds-unipd/docs/issues/72")): Aggiungere termini al glossario (lasciata in sospeso dallo sprint 1);
      - #link("https://github.com/techminds-unipd/docs/issues/160")[Issue \#160] #footnote(link("https://github.com/techminds-unipd/docs/issues/160")): Fix script python.

==== Diagramma di Gantt
#figure(
timeliney.timeline(
  show-grid: true,
  {
    import timeliney: *

    headerline(group(([*Dicembre 2024*], 6)), group(([*Gennaio 2025*], 6)))
    headerline(
      group(..range(2).map(n => strong(str(n + 23)))),
      group(..range(4).map(n => strong(str(n + 27)))),
      group(..range(2).map(n => strong(str(n + 2)))),
      group(..range(4).map(n => strong(str(n + 7))))
    )

    taskgroup(title: [*PoC*], {
      task("Implementazione agenti nel backend", (from: 0, to: 12, style: (stroke: 8pt + gray)), (from: 0, to: 12, style: (stroke: 2pt + red)))
      task("Collegamento servizi Google", (from: 0, to: 12, style: (stroke: 8pt + gray)), (from: 0, to: 7, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Analisi dei requisiti*], {
      task("UC blocco calendar", (from: 8, to: 10, style: (stroke: 8pt + gray)), (from: 8, to: 9, style: (stroke: 2pt + red)))
      task("UC blocco pastebin", (from: 8, to: 10, style: (stroke: 8pt + gray)), (from: 8, to: 9, style: (stroke: 2pt + red)))
      task("UC approfondimento esecuzione workflow", (from: 2, to: 8, style: (stroke: 8pt + gray)), (from: 2, to: 10, style: (stroke: 2pt + red)))
      task("UC creazione workflow", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 3, style: (stroke: 2pt + red)))
      task("UC modifica workflow", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 5, style: (stroke: 2pt + red)))
      task("Fix UC visualizzazione blocchi", (from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Piano di progetto*], {
      task("Preventivo sprint 3", (from: 3, to: 7, style: (stroke: 8pt + gray)), (from: 3, to: 7, style: (stroke: 2pt + red)))
      task("Consuntivo sprint 2", (from: 3, to: 6, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Piano di qualifica*], {
      task("Fix piano di qualifica", (from: 9, to: 12, style: (stroke: 8pt + gray)), (from: 9, to: 10, style: (stroke: 2pt + red)))
      task("Redigere nuove sezioni piano di qualifica", (from: 0, to: 6, style: (stroke: 8pt + gray)), (from: 0, to: 0, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Norme di progetto*], {
      task("Redigere sezione 2.2 norme di progetto", (from: 2, to: 6, style: (stroke: 8pt + gray)), (from: 2, to: 6, style: (stroke: 2pt + red)))
      task("Redigere sezione 3.4, 3.5", (from: 5, to: 10, style: (stroke: 8pt + gray)), (from: 5, to: 9, style: (stroke: 2pt + red)))
      task("Aggiornamento norme di progetto", (from: 7, to: 11, style: (stroke: 8pt + gray)), (from: 7, to: 9, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Varie*], {
    task("Aggiungere termini al glossario", (from: 8, to: 12, style: (stroke: 8pt + gray)), (from: 11, to: 12, style: (stroke: 2pt + red)))
    task("Fix script python", (from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 2, style: (stroke: 2pt + red)))
    })
  }
),
caption: [Diagramma Gantt sprint 3.]
)<diagramma-gantt-sprint3>

==== Conclusioni
Sono stati completati tutti i task tranne #link("https://github.com/techminds-unipd/docs/issues/111")[\#111 Redazione sezioni piano di qualifica] #footnote(link("https://github.com/techminds-unipd/docs/issues/111")), poiché abbiamo sottovalutato la sua ampiezza e i membri a cui era assegnata avevano già un carico di lavoro non banale. Abbiamo deciso di eliminare questa issue e creare issue più specifiche e di dimensione minore, in modo da facilitare la divisione del compito.

==== Restrospettiva
Non ci sono state particolari difficoltà durante questo periodo, quindi non è stato deciso alcun cambiamento al way of working.

==== Preventivo

#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 3)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo

#tabellaSprint(3, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint3> \

#pieChartSprint(3, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint3> \

#if consuntivo != none [

    #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo

    ==== Consuntivo
    I numeri tra parentesi indicano le variazioni rispetto al preventivo.

    #tabellaSprint(3, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
    <tabella-ConsuntivoSprint3> \
    #pieChartSprint(3, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
    <grafico-ConsuntivoSprint3> \
]

