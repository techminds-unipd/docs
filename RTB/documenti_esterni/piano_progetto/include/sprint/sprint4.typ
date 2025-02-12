#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection

=== Sprint 4
- Durata: 13/01/2025 - 31/01/2025

==== Pianificazione
In questo quarto sprint ci concentreremo sulla redazione dei documenti necessari alla revisione RTB, dando una particolare priorità alla stesura del documento di piano di qualifica. Dato che questo periodo coincide con la sessione d'esami, questo sprint avrà durata di tre settimane anziché due, così da dilatare il tempo a disposizione per completare i vari compiti e non sovraccaricare i membri del gruppo.

- Ruoli:
  - responsabile: #team.S\;
  - amministratore: #team.M, #team.L, #team.A\;
  - analista: #team.T\;
  - verificatore: #team.G, #team.C.

- Issue:
  - Analisi dei Requisiti
    - #link("https://github.com/techminds-unipd/docs/issues/189")[Issue \#189] #footnote(link("https://github.com/techminds-unipd/docs/issues/189")): UC eliminazione workflow;
    - #link("https://github.com/techminds-unipd/docs/issues/190")[Issue \#190] #footnote(link("https://github.com/techminds-unipd/docs/issues/190")): Tabella requisiti qualitativi;
    - #link("https://github.com/techminds-unipd/docs/issues/191")[Issue \#191] #footnote(link("https://github.com/techminds-unipd/docs/issues/191")): Tabella requisiti di vincolo;
    - #link("https://github.com/techminds-unipd/docs/issues/200")[Issue \#200] #footnote(link("https://github.com/techminds-unipd/docs/issues/200")): Aggiungere campo descrizione nella sezione 1.1.

  - Piano di Progetto
    - #link("https://github.com/techminds-unipd/docs/issues/187")[Issue \#187] #footnote(link("https://github.com/techminds-unipd/docs/issues/187")): Redigere consuntivo sprint 3;
    - #link("https://github.com/techminds-unipd/docs/issues/188")[Issue \#188] #footnote(link("https://github.com/techminds-unipd/docs/issues/188")): Redigere preventivo sprint 4.

  - Piano di Qualifica
    - #link("https://github.com/techminds-unipd/docs/issues/192")[Issue \#192] #footnote(link("https://github.com/techminds-unipd/docs/issues/192")): Redigere sezione qualità di prodotto;
    - #link("https://github.com/techminds-unipd/docs/issues/193")[Issue \#193] #footnote(link("https://github.com/techminds-unipd/docs/issues/193")): Redigere sezione qualità di processo;
    - #link("https://github.com/techminds-unipd/docs/issues/194")[Issue \#194] #footnote(link("https://github.com/techminds-unipd/docs/issues/194")): Redigere sezione qualità per obiettivo (processi primari);
    - #link("https://github.com/techminds-unipd/docs/issues/195")[Issue \#195] #footnote(link("https://github.com/techminds-unipd/docs/issues/195")): Redigere sezione qualità per obiettivo (processi di supporto);
    - #link("https://github.com/techminds-unipd/docs/issues/196")[Issue \#196] #footnote(link("https://github.com/techminds-unipd/docs/issues/196")): Redigere sezione qualità per obiettivo (processi organizzativi).

  - Norme di Progetto
    - #link("https://github.com/techminds-unipd/docs/issues/197")[Issue \#197] #footnote(link("https://github.com/techminds-unipd/docs/issues/197")): Redigere sezione gestione operativa;
    - #link("https://github.com/techminds-unipd/docs/issues/198")[Issue \#198] #footnote(link("https://github.com/techminds-unipd/docs/issues/198")): Redigere sezione accertamento della qualità.

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
    headerline(([*Gennaio 2025*], 15))
    headerline(
      group(..range(5).map(n => strong(str(n + 13)))),
      group(..range(5).map(n => strong(str(n + 20)))),
      group(..range(5).map(n => strong(str(n + 27))))
    )

    taskgroup(title: [*Analisi dei requisiti*],{
      task("UC eliminazione workflow", (from: 7, to: 9, style: (stroke: 8pt + gray)), (from: 7, to: 9, style: (stroke: 2pt + red)))
      task("Tabella requisiti qualitativi", (from: 4, to: 6, style: (stroke: 8pt + gray)), (from: 4, to: 6, style: (stroke: 2pt + red)))
      task("Tabella requisiti di vincolo", (from: 5, to: 8, style: (stroke: 8pt + gray)), (from: 5, to: 8, style: (stroke: 2pt + red)))
      task(align(center, [Aggiungere campo descrizione #linebreak() nella sezione 1.1]), (from: 3, to: 4, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Piano di Progetto*], {
      task("Redigere consuntivo sprint 3", (from: 0, to: 3, style: (stroke: 8pt + gray)), (from: 0, to: 2, style: (stroke: 2pt + red)))
      task("Redigere preventivo sprint 4", (from: 0, to: 3, style: (stroke: 8pt + gray)), (from: 0, to: 2, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Piano di Qualifica*], {
      task(align(center, [Redigere sezione qualità #linebreak() di prodotto]), (from: 8, to: 11, style: (stroke: 8pt + gray)), (from: 8, to: 11, style: (stroke: 2pt + red)))
      task(align(center, [Redigere sezione qualità #linebreak() per obiettivo (processi primari)]), (from: 11, to: 15, style: (stroke: 8pt + gray)), (from: 12, to: 15, style: (stroke: 2pt + red)))
      task(align(center, [Redigere sezione qualità #linebreak() per obiettivo (processi di supporto)]), (from: 9, to: 11, style: (stroke: 8pt + gray)), (from: 9, to: 11, style: (stroke: 2pt + red)))
      task(align(center, [Redigere sezione qualità #linebreak() per obiettivo (processi organizzativi)]), (from: 12, to: 14, style: (stroke: 8pt + gray)), (from: 12, to: 15, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Norme di Progetto*], {
      task("Redigere sezione gestione operativa", (from: 3, to: 5, style: (stroke: 8pt + gray)), (from: 3, to: 4, style: (stroke: 2pt + red)))
      task(align(center, [Redigere sezione accertamento #linebreak() della qualità]), (from: 3, to: 4, style: (stroke: 8pt + gray)), (from: 3, to: 15, style: (stroke: 2pt + red)))
    })
  }
),
caption: [Diagramma Gantt sprint 4.]
)<diagramma-gantt-sprint4>

==== Conclusioni
Sono state completate tutte le task previste per questo sprint. La #link("https://github.com/techminds-unipd/docs/issues/193")[issue \#193] #footnote(link("https://github.com/techminds-unipd/docs/issues/193")), è stata chiusa come non pianificata dato che è stata completata come parte di altre task.

==== Retrospettiva
Osservando i documenti abbiamo notato la mancanza di una sezione dedicata ai dati forniti dalle metriche, vanificando l'utilità delle stesse. Per questo motivo il prossimo sprint sarà dedicato alla realizzazione di un cruscotto che permetta di monitorare la qualità dei prodotti e dei processi, sfruttando i dati forniti dalle metriche già individuate.#linebreak()
Durante questo sprint ci siamo anche accorti di non aver impostato delle milestone dettagliate per monitorare l'avanzamento dei documenti in vista dell'RTB. Abbiamo quindi deciso che nel prossimo sprint sarà creata una milestone per ogni documento, ad eccezione del glossario che, per sua natura, viene aggiornato quando necessario durante lo svolgimento delle task.

==== Costi

===== Preventivo

#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 4)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo

#tabellaSprint(4, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint4> \

#pieChartSprint(4, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint4> \

#if consuntivo != none [

    #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo

    ===== Consuntivo
    I numeri tra parentesi indicano le variazioni rispetto al preventivo.

    #tabellaSprint(4, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
    <tabella-ConsuntivoSprint4> \
    #pieChartSprint(4, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
    <grafico-ConsuntivoSprint4> \
]
