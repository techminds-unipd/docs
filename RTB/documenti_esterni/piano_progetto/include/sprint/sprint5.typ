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
    - #link("https://github.com/techminds-unipd/docs/issues/229")[Issue \#229] #footnote(link("https://github.com/techminds-unipd/docs/issues/229")): Refactoring Analisi dei Requisiti.

  - Piano di Progetto
    - #link("https://github.com/techminds-unipd/docs/issues/232")[Issue \#232] #footnote(link("https://github.com/techminds-unipd/docs/issues/232")): Scrivere consuntivo sprint 4;
    - #link("https://github.com/techminds-unipd/docs/issues/233")[Issue \#233] #footnote(link("https://github.com/techminds-unipd/docs/issues/233")): Scrivere pianificazione sprint 5;
    - #link("https://github.com/techminds-unipd/docs/issues/139")[Issue \#139] #footnote(link("https://github.com/techminds-unipd/docs/issues/139")): Documentare la struttura dei periodi in PdP;
    - #link("https://github.com/techminds-unipd/docs/issues/240")[Issue \#240] #footnote(link("https://github.com/techminds-unipd/docs/issues/240")): Documentare in PdP le milestone.

  - Piano di Qualifica
    - #link("https://github.com/techminds-unipd/docs/issues/226")[Issue \#226] #footnote(link("https://github.com/techminds-unipd/docs/issues/226")): Modificare identificativi metriche in PdQ e NdP;
    - #link("https://github.com/techminds-unipd/docs/issues/227")[Issue \#227] #footnote(link("https://github.com/techminds-unipd/docs/issues/227")): Refactoring dati metriche in PdQ;
    - #link("https://github.com/techminds-unipd/docs/issues/231")[Issue \#231] #footnote(link("https://github.com/techminds-unipd/docs/issues/231")): Scrivere descrizione metriche con TODO;
    - #link("https://github.com/techminds-unipd/docs/issues/236")[Issue \#236] #footnote(link("https://github.com/techminds-unipd/docs/issues/236")): Aggiornamento cruscotto;
    - #link("https://github.com/techminds-unipd/docs/issues/237")[Issue \#237] #footnote(link("https://github.com/techminds-unipd/docs/issues/237")): Metriche pianificazione e miglioramento;
    - #link("https://github.com/techminds-unipd/docs/issues/238")[Issue \#238] #footnote(link("https://github.com/techminds-unipd/docs/issues/238")): Uniformare la caption delle tabelle in PdQ;
    - #link("https://github.com/techminds-unipd/docs/issues/239")[Issue \#239] #footnote(link("https://github.com/techminds-unipd/docs/issues/239")): Macrosezione miglioramenti in PdQ.

  - Norme di Progetto
    - #link("https://github.com/techminds-unipd/docs/issues/226")[Issue \#226] #footnote(link("https://github.com/techminds-unipd/docs/issues/226")): Modificare identificativi metriche in PdQ e NdP;
    - #link("https://github.com/techminds-unipd/docs/issues/230")[Issue \#230] #footnote(link("https://github.com/techminds-unipd/docs/issues/230")): Nascondere sezioni non scritte in NdP.
  - Altro
    - #link("https://github.com/techminds-unipd/docs/issues/234")[Issue \#234] #footnote(link("https://github.com/techminds-unipd/docs/issues/234")): Scrivere lettera di presentazione per RTB;
    - #link("https://github.com/techminds-unipd/docs/issues/235")[Issue \#235] #footnote(link("https://github.com/techminds-unipd/docs/issues/235")): Uniformare date in tutti i documenti.

==== Diagramma di Gantt
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
      task("Refactoring Analisi dei Requisiti", (from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 2, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Piano di Progetto*], {
      task("Scrivere consuntivo sprint 4", (from: 1, to: 4, style: (stroke: 8pt + gray)), (from: 1, to: 3, style: (stroke: 2pt + red)))
      task("Scrivere pianificazione sprint 5", (from: 2, to: 5, style: (stroke: 8pt + gray)), (from: 2, to: 4, style: (stroke: 2pt + red)))
      task("Documentare la struttura dei periodi in PdP", (from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task("Documentare in PdP le milestone", (from: 2, to: 5, style: (stroke: 8pt + gray)), (from: 2, to: 3, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Piano di Qualifica*], {
      task(align(center, [Modificare identificativi metriche #linebreak() in PdQ e PdP]), (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task("Refactoring dati metriche in PdQ", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task("Scrivere descrizione metriche con TODO", (from: 1, to: 4, style: (stroke: 8pt + gray)), (from: 2, to: 3, style: (stroke: 2pt + red)))
      task("Aggiornamento cruscotto", (from: 1, to: 8, style: (stroke: 8pt + gray)), (from: 1, to: 6, style: (stroke: 2pt + red)))
      task("Metriche pianificazione e miglioramento", (from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 2, to: 3, style: (stroke: 2pt + red)))
      task("Uniformare le caption delle tabelle in PdQ", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 3, to: 4, style: (stroke: 2pt + red)))
      task("Macrosezione miglioramenti in PdQ", (from: 2, to: 4, style: (stroke: 8pt + gray)), (from: 3, to: 4, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Norme di Progetto*], {
      task(align(center, [Modificare identificativi metriche #linebreak() in PdQ e PdP]), (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task("Nascondere sezioni non scritte in NdP", (from: 0, to: 3, style: (stroke: 8pt + gray)), (from: 0, to: 2, style: (stroke: 2pt + red)))
    })

    taskgroup(title: [*Altro*], {
      task(align(center, [Scrivere lettera di presentazione #linebreak() per RTB]), (from: 3, to: 6, style: (stroke: 8pt + gray)), (from: 4, to: 6, style: (stroke: 2pt + red)))
      task("Uniformare dati in tutti i documenti", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
    })
  }
),
caption: [Diagramma Gantt sprint 5.]
)<diagramma-gantt-sprint5>

==== Conclusioni
 In questo sprint il team ha lavorato bene, riuscendo a completare tutti i task assegnati con largo anticipo. Le issue dello sprint sono state sovrastimate e di conseguenza ne sono state create di nuove per continuare il lavoro. 

==== Retrospettiva
Dalla retrospettiva abbiamo deciso che nel piano di progetto documenteremo le nuove issue create in seguito alla pianificazione iniziale.
==== Costi

===== Preventivo

#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 5)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo

#tabellaSprint(5, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint5> \

#pieChartSprint(5, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint5> \

#if consuntivo != none [

  #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo
  ===== Consuntivo
  I numeri tra parentesi indicano le variazioni rispetto al preventivo.
  #tabellaSprint(5, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
  <tabella-ConsuntivoSprint5> \
  #pieChartSprint(5, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
  <grafico-ConsuntivoSprint5> \
]


==== Aggiornamento Preventivo a Finire
Avvicinandosi alla prima revisione RTB, è stato subito chiaro che la ripartizione delle ore svolta in precedenza non risultava del tutto corretta. In particolare per i ruoli di responsabile, amministratore e analista abbiamo notato una forte discrepanza tra quanto previsto e quanto effettivamente necessario. La pianificazione errata era prevedibile data l'inesperienza del team. Con una più attenta analisi delle ore e di conseguenza dei costi consumati durante i vari periodi, abbiamo deciso di ridistribuire nuovamente il carico orario:

#figure(
    table(
        columns: (1fr,)*5,
        align: center+horizon,
            fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        table.header([*Ruolo*],[*Costo orario*],[*Stima oraria*],[*Percentuale*],[*Stima costo*]),
        [Responsabile], [30 #sym.euro], [40 #text(rgb("#204680"))[(-15)]], [6%], [1.200 #sym.euro],
        [Amministratore], [20 #sym.euro], [100 #text(rgb("#204680"))[(+55)]], [15%], [2.000 #sym.euro],
        [Analista], [25 #sym.euro], [55 #text(rgb("#204680"))[(-40)]], [8%], [1.375 #sym.euro],
        [Progettista], [25 #sym.euro], [100], [15%], [2.500 #sym.euro],
        [Programmatore], [15 #sym.euro], [190], [29%], [2.850 #sym.euro],
        [Verificatore], [15 #sym.euro], [180], [27%], [2.700 #sym.euro],
        table.cell([*Costo Totale*], colspan: 4, fill: white), table.cell([*12.625 #sym.euro*], fill: white)
    ),
    caption: "Ripartizione oraria tra ruoli - RTB."
)<table-PaF>

Come si può notare dalla @table-PaF, c'è stata una forte ridistribuzione delle ore per i ruoli di responsabile, amministratore e analista. Per quanto riguarda programmatore e verificatore riteniamo che le ore assegnate siano in linea con le responsabilità richieste dai due ruoli. Infine anche per il progettista il carico orario è rimasto invariato perché, non avendo ancora svolto nessuna attività ricoperta da questo ruolo, non sono presenti abbastanza indicatori per poter aggiungere o togliere carico orario.

Grazie ai cambiamenti effettuati il costo di progetto preventivato risulta ora essere di *12.625 #sym.euro*, con una lieve diminuzione rispetto ai precedenti *12.975 #sym.euro*.