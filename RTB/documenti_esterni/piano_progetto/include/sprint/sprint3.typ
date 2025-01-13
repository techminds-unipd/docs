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
        - #link("https://github.com/techminds-unipd/PoC/issues/3")[Issue \#3]: Inizio implementazione agenti nel backend (non completata durante lo sprint 2);
        - #link("https://github.com/techminds-unipd/PoC/issues/8")[Issue \#8]: Gestione collegamento servizi Google.
    
    - Analisi dei Requisiti
        - #link("https://github.com/techminds-unipd/docs/issues/149")[Issue \#149]: UC blocco Calendar;
        - #link("https://github.com/techminds-unipd/docs/issues/150")[Issue \#150]: UC blocco Docs;
        - #link("https://github.com/techminds-unipd/docs/issues/151")[Issue \#151]: UC approfondimento esecuzione workflow;
        - #link("https://github.com/techminds-unipd/docs/issues/152")[Issue \#152]: UC creazione workflow;
        - #link("https://github.com/techminds-unipd/docs/issues/153")[Issue \#153]: UC modifica workflow;
        - #link("https://github.com/techminds-unipd/docs/issues/154")[Issue \#154]: Fix UC Visualizzazione blocchi configurati e avviso servizi collegati.
    

    - Piano di Progetto
        - #link("https://github.com/techminds-unipd/docs/issues/155")[Issue \#155]: Preventivo sprint 3;
        - #link("https://github.com/techminds-unipd/docs/issues/156")[Issue \#156]: Consuntivo sprint 2.

    - Piano di Qualifica
        - #link("https://github.com/techminds-unipd/docs/issues/109")[Issue \#109]: Fix piano di qualifica (non completata durante lo sprint 2);
        - #link("https://github.com/techminds-unipd/docs/issues/111")[Issue \#111]: Redigere nuove sezioni piano di qualifica (non completata durante lo sprint 2).

    - Norme di Progetto
       - #link("https://github.com/techminds-unipd/docs/issues/157")[Issue \#157]: Redigere sezione 2.2 norme di progetto;
       - #link("https://github.com/techminds-unipd/docs/issues/158")[Issue \#158]: Redigere sezione 3.4, 3.5;
       - #link("https://github.com/techminds-unipd/docs/issues/159")[Issue \#159]: Aggiornamento norme di progetto.
    
    - Varie
      - #link("https://github.com/techminds-unipd/docs/issues/72")[Issue \#72]: Aggiungere termini al glossario (lasciata in sospeso dallo sprint 1);
      - #link("https://github.com/techminds-unipd/docs/issues/160")[Issue \#160]: Fix script python.

==== Diagramma di Gantt
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

    headerline(group(([*Dicembre 2024*], 6)), group(([*Gennaio 2024*], 6)))
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
      task("UC blocco calendar", (from: 8, to: 10, style: (stroke: 8pt + gray)), (from: 8, to: 10, style: (stroke: 2pt + red)))
      task("UC blocco Docs", (from: 8, to: 10, style: (stroke: 8pt + gray)), (from: 8, to: 10, style: (stroke: 2pt + red)))
      task("UC approfondimento esecuzione workflow", (from: 2, to: 8, style: (stroke: 8pt + gray)), (from: 2, to: 9, style: (stroke: 2pt + red)))
      task("UC creazione workflow", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 3, style: (stroke: 2pt + red)))
      task("UC modifica workflow", (from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 5, style: (stroke: 2pt + red)))
      task("Fix UC visualizzazione blocchi", (from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Piano di Progetto*], {
      task("Preventivo sprint 3", (from: 3, to: 7, style: (stroke: 8pt + gray)), (from: 3, to: 6, style: (stroke: 2pt + red)))
      task("Consuntivo sprint 2", (from: 3, to: 6, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Piano di Qualifica*], {
      task("Fix piano di qualifica", (from: 9, to: 12, style: (stroke: 8pt + gray)), (from: 9, to: 10, style: (stroke: 2pt + red)))
      task("Redigere nuove sezioni piano di qualifica", (from: 0, to: 6, style: (stroke: 8pt + gray)), (from: 0, to: 0, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Norme di Progetto*], {
      task("Redigere sezione 2.2 norme di progetto", (from: 2, to: 6, style: (stroke: 8pt + gray)), (from: 2, to: 6, style: (stroke: 2pt + red)))
      task("Redigere sezione 3.4, 3.5", (from: 5, to: 10, style: (stroke: 8pt + gray)), (from: 5, to: 10, style: (stroke: 2pt + red)))
      task("Aggiornamento norme di progetto", (from: 6, to: 10, style: (stroke: 8pt + gray)), (from: 6, to: 10, style: (stroke: 2pt + red)))
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
Sono stati completati tutti i task tranne #link("https://github.com/techminds-unipd/docs/issues/111")[\#111 Redazione sezioni piano di qualifica], che è stata eliminata andando a creare issue più specifiche e di dimensione minore, in modo da facilitare la divisione del compito.

==== Restrospettiva
Non ci sono state particolari difficoltà durante questo periodo, quindi non è stato deciso alcun cambiamento al way of working.

==== Costi

===== Preventivo

#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 3)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo

#tabellaSprint(3, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint3> \

#pieChartSprint(3, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint3> \

#if consuntivo != none [

    #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo

    ===== Consuntivo
    I numeri tra parentesi indicano le variazioni rispetto al preventivo.

    #tabellaSprint(3, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
    <tabella-ConsuntivoSprint3> \
    #pieChartSprint(3, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
    <grafico-ConsuntivoSprint3> \
]

