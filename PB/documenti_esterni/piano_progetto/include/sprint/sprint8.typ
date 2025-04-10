#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection, getOreConsumatePersona, getOreConsumateRuoli

=== Sprint 8
- Durata: 10/03/2025 - 21/03/2025

==== Pianificazione
L'obiettivo principale di questo sprint è quello di ultimare la progettazione logica. In seguito, verranno svolte la progettazione di dettaglio e l'implementazione del prodotto, accompagnata dai relativi test di unità.

- Ruoli:
  - responsabile: #team.M\;
  - amministratore: #team.S\;
  - progettista: #team.T, #team.C\;
  - programmatore: #team.A\;
  - verificatore: #team.G, #team.L.
- Issue:
  - Piano di progetto
    - #link("https://github.com/techminds-unipd/docs/issues/429")[Issue \#429]#footnote(link("https://github.com/techminds-unipd/docs/issues/429")): Consuntivo sprint 7 e aggiornamento preventivo a finire;
    - #link("https://github.com/techminds-unipd/docs/issues/433")[Issue \#433]#footnote(link("https://github.com/techminds-unipd/docs/issues/433")): Preventivo sprint 8.
  - Norme di progetto
    - #link("https://github.com/techminds-unipd/docs/issues/434")[Issue \#434]#footnote(link("https://github.com/techminds-unipd/docs/issues/434")): Documentare progettazione in norme di progetto;
    - #link("https://github.com/techminds-unipd/docs/issues/435")[Issue \#435]#footnote(link("https://github.com/techminds-unipd/docs/issues/435")): Documentare codifica in norme di progetto.
  - Specifica tecnica
    - #link("https://github.com/techminds-unipd/docs/issues/436")[Issue \#436]#footnote(link("https://github.com/techminds-unipd/docs/issues/436")): Descrizione funzionalità backend login;
    - #link("https://github.com/techminds-unipd/docs/issues/437")[Issue \#437]#footnote(link("https://github.com/techminds-unipd/docs/issues/437")): Descrizione funzionalità backend CreateWorkflow;
    - #link("https://github.com/techminds-unipd/docs/issues/438")[Issue \#438]#footnote(link("https://github.com/techminds-unipd/docs/issues/438")): Descrizione funzionalità backend GetWorkflow;
    - #link("https://github.com/techminds-unipd/docs/issues/439")[Issue \#439]#footnote(link("https://github.com/techminds-unipd/docs/issues/439")): Descrizione funzionalità backend SaveWorkflow;
    - #link("https://github.com/techminds-unipd/docs/issues/440")[Issue \#440]#footnote(link("https://github.com/techminds-unipd/docs/issues/440")): Descrizione funzionalità backend DeleteWorkflow;
    - #link("https://github.com/techminds-unipd/docs/issues/441")[Issue \#441]#footnote(link("https://github.com/techminds-unipd/docs/issues/441")): Descrizione funzionalità backend WorkflowNameList;
    - #link("https://github.com/techminds-unipd/docs/issues/442")[Issue \#442]#footnote(link("https://github.com/techminds-unipd/docs/issues/442")): Descrizione funzionalità backend ExecuteWorkflow;
    - #link("https://github.com/techminds-unipd/docs/issues/443")[Issue \#443]#footnote(link("https://github.com/techminds-unipd/docs/issues/443")): Descrizione funzionalità backend ConnectionGoogleAccount;
    - #link("https://github.com/techminds-unipd/docs/issues/444")[Issue \#444]#footnote(link("https://github.com/techminds-unipd/docs/issues/444")): Descrizione dati di application, business e persistence;
    - #link("https://github.com/techminds-unipd/docs/issues/445")[Issue \#445]#footnote(link("https://github.com/techminds-unipd/docs/issues/445")): Descrizione agente;
    - #link("https://github.com/techminds-unipd/docs/issues/446")[Issue \#446]#footnote(link("https://github.com/techminds-unipd/docs/issues/446")): Descrizione database;
    - #link("https://github.com/techminds-unipd/docs/issues/447")[Issue \#447]#footnote(link("https://github.com/techminds-unipd/docs/issues/447")): Descrizione frontend CustomNodes;
    - #link("https://github.com/techminds-unipd/docs/issues/448")[Issue \#448]#footnote(link("https://github.com/techminds-unipd/docs/issues/448")): Descrizione frontend Navbar;
    - #link("https://github.com/techminds-unipd/docs/issues/449")[Issue \#449]#footnote(link("https://github.com/techminds-unipd/docs/issues/449")): Descrizione frontend Footer;
    - #link("https://github.com/techminds-unipd/docs/issues/450")[Issue \#450]#footnote(link("https://github.com/techminds-unipd/docs/issues/450")): Descrizione frontend Home;
    - #link("https://github.com/techminds-unipd/docs/issues/451")[Issue \#451]#footnote(link("https://github.com/techminds-unipd/docs/issues/451")): Descrizione frontend AboutUs;
    - #link("https://github.com/techminds-unipd/docs/issues/452")[Issue \#452]#footnote(link("https://github.com/techminds-unipd/docs/issues/452")): Descrizione frontend SignIn;
    - #link("https://github.com/techminds-unipd/docs/issues/453")[Issue \#453]#footnote(link("https://github.com/techminds-unipd/docs/issues/453")): Descrizione frontend SignUp;
    - #link("https://github.com/techminds-unipd/docs/issues/454")[Issue \#454]#footnote(link("https://github.com/techminds-unipd/docs/issues/454")): Descrizione frontend Workflow;
    - #link("https://github.com/techminds-unipd/docs/issues/455")[Issue \#455]#footnote(link("https://github.com/techminds-unipd/docs/issues/455")): Descrizione frontend Services.
  - MVP
    - #link("https://github.com/techminds-unipd/mvp/issues/4")[Issue \#4]#footnote(link("https://github.com/techminds-unipd/mvp/issues/4")): Codifica agente;
    - #link("https://github.com/techminds-unipd/mvp/issues/5")[Issue \#5]#footnote(link("https://github.com/techminds-unipd/mvp/issues/5")): Codifica funzionalità backend ConnectionGoogleAccount;
    - #link("https://github.com/techminds-unipd/mvp/issues/6")[Issue \#6]#footnote(link("https://github.com/techminds-unipd/mvp/issues/6")): Codifica funzionalità backend ExecuteWorkflow;
    - #link("https://github.com/techminds-unipd/mvp/issues/7")[Issue \#7]#footnote(link("https://github.com/techminds-unipd/mvp/issues/7")): Codifica funzionalità backend WorkflowNameList;
    - #link("https://github.com/techminds-unipd/mvp/issues/8")[Issue \#8]#footnote(link("https://github.com/techminds-unipd/mvp/issues/8")): Codifica funzionalità backend DeleteWorkflow;
    - #link("https://github.com/techminds-unipd/mvp/issues/9")[Issue \#9]#footnote(link("https://github.com/techminds-unipd/mvp/issues/9")): Codifica funzionalità backend SaveWorkflow;
    - #link("https://github.com/techminds-unipd/mvp/issues/10")[Issue \#10]#footnote(link("https://github.com/techminds-unipd/mvp/issues/10")): Codifica funzionalità backend GetWorkflow;
    - #link("https://github.com/techminds-unipd/mvp/issues/11")[Issue \#11]#footnote(link("https://github.com/techminds-unipd/mvp/issues/11")): Codifica funzionalità backend CreateWorkflow;
    - #link("https://github.com/techminds-unipd/mvp/issues/12")[Issue \#12]#footnote(link("https://github.com/techminds-unipd/mvp/issues/12")): Codifica funzionalità backend login;
    - #link("https://github.com/techminds-unipd/mvp/issues/13")[Issue \#13]#footnote(link("https://github.com/techminds-unipd/mvp/issues/13")): Codifica funzionalità backend RegisterUser;
    - #link("https://github.com/techminds-unipd/mvp/issues/14")[Issue \#14]#footnote(link("https://github.com/techminds-unipd/mvp/issues/14")): Codifica frontend Navbar;
    - #link("https://github.com/techminds-unipd/mvp/issues/16")[Issue \#16]#footnote(link("https://github.com/techminds-unipd/mvp/issues/16")): Codifica frontend Footer;
    - #link("https://github.com/techminds-unipd/mvp/issues/17")[Issue \#17]#footnote(link("https://github.com/techminds-unipd/mvp/issues/17")): Codifica frontend Home;
    - #link("https://github.com/techminds-unipd/mvp/issues/18")[Issue \#18]#footnote(link("https://github.com/techminds-unipd/mvp/issues/18")): Codifica frontend AboutUs;
    - #link("https://github.com/techminds-unipd/mvp/issues/19")[Issue \#19]#footnote(link("https://github.com/techminds-unipd/mvp/issues/19")): Codifica frontend SignIn;
    - #link("https://github.com/techminds-unipd/mvp/issues/20")[Issue \#20]#footnote(link("https://github.com/techminds-unipd/mvp/issues/20")): Codifica frontend SignUp.

==== Issue aggiuntive
Durante lo sprint sono state individuate delle issue aggiuntive che non erano state preventivate:
- #link("https://github.com/techminds-unipd/mvp/issues/40")[Issue \#40]#footnote(link("https://github.com/techminds-unipd/mvp/issues/40")): Codifica frontend Dashboard;
- #link("https://github.com/techminds-unipd/docs/issues/475")[Issue \#475]#footnote(link("https://github.com/techminds-unipd/docs/issues/475")): Descrizione frontend Dashboard;
- #link("https://github.com/techminds-unipd/docs/issues/482")[Issue \#482]#footnote(link("https://github.com/techminds-unipd/docs/issues/482")): Documentare test di unità backend sul piano di qualifica;
- #link("https://github.com/techminds-unipd/docs/issues/483")[Issue \#483]#footnote(link("https://github.com/techminds-unipd/docs/issues/483")): Documentare test di unità agente sul piano di qualifica;
- #link("https://github.com/techminds-unipd/docs/issues/487")[Issue \#487]#footnote(link("https://github.com/techminds-unipd/docs/issues/487")): Documentare design pattern backend;
- #link("https://github.com/techminds-unipd/docs/issues/489")[Issue \#489]#footnote(link("https://github.com/techminds-unipd/docs/issues/489")): Stato requisiti funzionali in specifica tecnica.

==== Diagramma di Gantt
#figure(
timeliney.timeline(
  show-grid: true,
  {
    import timeliney: *
    headerline(group(([*Repository documentazione*], 10)))
    headerline(group(([*Marzo 2025*], 10)))
    headerline(
      group(..range(5).map(n => strong(str(n + 10)))),
      group(..range(5).map(n=>strong(str(n + 17))))
    )
    taskgroup(title:[*Norme di progetto*],{
      task("Documentare progettazione",(from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 2, style: (stroke: 2pt + red)))
      task("Documentare codifica",(from: 2, to: 4, style: (stroke: 8pt + gray)), (from: 1, to: 3, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Piano di progetto*],{
      task(align(center, [Consuntivo sprint 7 e #linebreak() aggiornamento preventivo a finire]),(from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task("Preventivo sprint 8",(from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 3, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Specifica tecnica*],{
      task("Descrizione funzionalità backend login",(from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task(align(center, [Descrizione funzionalità #linebreak() backend CreateWorkflow]),(from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task(align(center, [Descrizione funzionalità #linebreak() backend GetWorkflow]),(from: 2, to: 4, style: (stroke: 8pt + gray)), (from: 2, to: 3, style: (stroke: 2pt + red)))
      task(align(center, [Descrizione funzionalità #linebreak() backend SaveWorkflow]),(from: 2, to: 4, style: (stroke: 8pt + gray)), (from: 2, to: 5, style: (stroke: 2pt + red)))
      task(align(center, [Descrizione funzionalità #linebreak() backend DeleteWorkflow]),(from: 2, to: 4, style: (stroke: 8pt + gray)), (from: 2, to: 4, style: (stroke: 2pt + red)))
      task(align(center, [Descrizione funzionalità #linebreak() backend WorkflowNameList]),(from: 3, to: 5, style: (stroke: 8pt + gray)), (from: 4, to: 5, style: (stroke: 2pt + red)))
      task(align(center, [Descrizione funzionalità #linebreak() backend ExecuteWorkflow]),(from: 5, to: 8, style: (stroke: 8pt + gray)), (from: 5, to: 9, style: (stroke: 2pt + red)))
      task(align(center, [Descrizione funzionalità #linebreak() backend ConnectionGoogleAccount]),(from: 6, to: 9, style: (stroke: 8pt + gray)), (from: 6, to: 9, style: (stroke: 2pt + red)))
      task(align(center, [Descrizione dati di application, #linebreak() business e persistence]),(from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 2, style: (stroke: 2pt + red)))
      task("Descrizione agente",(from: 6, to: 10, style: (stroke: 8pt + gray)), (from: 6, to: 9, style: (stroke: 2pt + red)))
      task("Descrizione database",(from: 3, to: 5, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
      task("Descrizione frontend CustomNodes",(from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task("Descrizione frontend Navbar",(from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 2, to: 3, style: (stroke: 2pt + red)))
      task("Descrizione frontend Footer",(from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 3, style: (stroke: 2pt + red)))
      task("Descrizione frontend Home",(from: 2, to: 4, style: (stroke: 8pt + gray)), (from: 2, to: 5, style: (stroke: 2pt + red)))
      task("Descrizione frontend AboutUs",(from: 3, to: 5, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
      task("Descrizione frontend SignIn",(from: 4, to: 6, style: (stroke: 8pt + gray)), (from: 5, to: 7, style: (stroke: 2pt + red)))
      task("Descrizione frontend SignUp",(from: 4, to: 6, style: (stroke: 8pt + gray)), (from: 5, to: 7, style: (stroke: 2pt + red)))
      task("Descrizione frontend Workflow",(from: 6, to: 8, style: (stroke: 8pt + gray)))
      task("Descrizione frontend Services",(from: 7, to: 9, style: (stroke: 8pt + gray)))
    })
  }
),
caption: [Diagramma Gantt repository documentazione sprint 8.]
)<diagramma-gantt-docs-sprint8>

#figure(
timeliney.timeline(
  show-grid: true,
  {
    import timeliney: *
    headerline(group(([*Repository mvp*], 10)))
    headerline(group(([*Marzo 2025*], 10)))
    headerline(
      group(..range(5).map(n => strong(str(n + 10)))),
      group(..range(5).map(n=>strong(str(n + 17))))
    )
    taskgroup(title:[*Backend*],{
      task("Codifica funzionalità login",(from: 1, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task("Codifica funzionalità RegisterUser",(from: 1, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task("Codifica funzionalità CreateWorkflow",(from: 3, to: 5, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
      task("Codifica funzionalità GetWorkflow",(from: 4, to: 5, style: (stroke: 8pt + gray)), (from: 5, to: 6, style: (stroke: 2pt + red)))
      task("Codifica funzionalità SaveWorkflow",(from: 4, to: 6, style: (stroke: 8pt + gray)), (from: 5, to: 7, style: (stroke: 2pt + red)))
      task("Codifica funzionalità DeleteWorkflow",(from: 4, to: 6, style: (stroke: 8pt + gray)), (from: 4, to: 6, style: (stroke: 2pt + red)))
      task("Codifica funzionalità WorkflowNameList",(from: 6, to: 7, style: (stroke: 8pt + gray)), (from: 5, to: 6, style: (stroke: 2pt + red)))
      task("Codifica funzionalità ExecuteWorkflow",(from: 7, to: 10, style: (stroke: 8pt + gray)), (from: 8, to: 10, style: (stroke: 2pt + red)))
      task(align(center, [Codifica funzionalità #linebreak() ConnectionGoogleAccount]),(from: 7, to: 10, style: (stroke: 8pt + gray)), (from: 7, to: 10, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Frontend*],{
      task("Codifica Navbar",(from: 3, to: 5, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
      task("Codifica Footer",(from: 3, to: 5, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
      task("Codifica Home",(from: 4, to: 7, style: (stroke: 8pt + gray)), (from: 5, to: 7, style: (stroke: 2pt + red)))
      task("Codifica AboutUs",(from: 5, to: 7, style: (stroke: 8pt + gray)), (from: 5, to: 7, style: (stroke: 2pt + red)))
      task("Codifica SignIn",(from: 6, to: 9, style: (stroke: 8pt + gray)), (from: 6, to: 9, style: (stroke: 2pt + red)))
      task("Codifica SignUp",(from: 6, to: 9, style: (stroke: 8pt + gray)), (from: 6, to: 10, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Agente*],{
      task("Codifica agente",(from: 6, to: 10, style: (stroke: 8pt + gray)), (from: 7, to: 10, style: (stroke: 2pt + red)))
    })
  }
),
caption: [Diagramma Gantt repository mvp sprint 8.]
)<diagramma-gantt-mvp-sprint8>

==== Rischi previsti
Di seguito verranno elencati i rischi che potrebbero concretizzarsi in questo sprint:
- RP1 - Impegno di un membro del team inferiore a quanto dichiarato (descritto in @tabella-RP1);
- RP2 - Malattia di un membro del team (descritto in @tabella-RP2);
- RP3 - Problemi interpersonali tra membri del team (descritto in @tabella-RP3);
- ROE1 - Tempi di risposta da parte del proponente (descritto in @tabella-ROE1).

==== Rischi occorsi
Durante lo svolgimento dello sprint è occorso il rischio RP4 (descritto in @tabella-RP4) che non era stato previsto, ovvero la scarsa conoscenza delle tecnologie utilizzate. In particolare sono stati riscontrati alcuni problemi riguardanti la codifica di alcuni unit test per fare il mock di alcuni servizi di Google che hanno richiesto più tempo del previsto; sono state riscontrate anche delle difficoltà per codificare alcuni unit test sul frontend. Il rischio è stato gestito in modo efficace grazie alla collaborazione tra i membri del team che si sono documentati tempestivamente sulla tecnologia utilizzata.

==== Conclusioni
In questo sprint sono state completate quasi tutte le attività previste. In particolare, sono state completate le attività di progettazione di dettaglio e le attività di codifica del backend e dell'agente. Le attività non completate riguardano la progettazione di dettaglio e la codifica di alcuni parti del frontend. Queste attività verranno completate nello sprint successivo.

==== Retrospettiva
Il team ha lavorato in modo collaborativo e ha risolto i problemi che sono sorti durante lo sprint in modo efficace. Grazie al supporto reciproco e all'auto-apprendimento il gruppo è riuscito a gestire i rischi occorsi.

Tuttavia, analizzando il rapporto tra ore di orologio e ore produttive, emerge che il team non è ancora riuscito a raggiungere un livello di efficienza ottimale. 
Questo soprattutto a causa delle difficoltà incontrate nella stesura degli unit test, che inevitabilmente ha poi inciso sul rendimento complessivo.

Per il prossimo sprint, il gruppo si impegnerà quindi ad aumentare la produttività, attraverso una migliore suddivisione dei compiti e una pianificazione mirata che possa ottimizzare il tempo necessario per svolgere le attività previste.

Considerando i progressi significativi fatti, si prevede di poter rispettare le scadenze e i costi attesi.

==== Preventivo
#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 8)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo
#tabellaSprint(8, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint8> \

#pieChartSprint(8, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint8> \

#if consuntivo != none [

  #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo
  ==== Consuntivo
  I numeri tra parentesi indicano le variazioni rispetto al preventivo.
  #tabellaSprint(8, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
  <tabella-ConsuntivoSprint8> \
  #pieChartSprint(8, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
  <grafico-ConsuntivoSprint8> \
]

==== Aggiornamento preventivo a finire
In seguito al consuntivo dello sprint 8, il nuovo preventivo a finire ha subito dei piccoli scostamenti in termini di ore e costi.
#figure(
    table(
        columns: (1fr,)*5,
        align: center+horizon,
            fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        table.header([*Ruolo*],[*Costo orario*],[*Stima oraria*],[*Percentuale*],[*Stima costo*]),
        [Responsabile], [30 #sym.euro], [40], [6%], [1.200 #sym.euro],
        [Amministratore], [20 #sym.euro], [125 #text(rgb("#204680"))[(-10)]], [19%], [2.500 #sym.euro],
        [Analista], [25 #sym.euro], [60], [9%], [1.500 #sym.euro],
        [Progettista], [25 #sym.euro], [100 #text(rgb("#204680"))[(+10)]], [15%], [2.500 #sym.euro],
        [Programmatore], [15 #sym.euro], [150 #text(rgb("#204680"))[(-10)]], [23%], [2.250 #sym.euro],
        [Verificatore], [15 #sym.euro], [190 #text(rgb("#204680"))[(+10)]], [29%], [2.850 #sym.euro],
        table.cell([*Costo Totale*], colspan: 4, fill: white), table.cell([*12.800 #sym.euro*], fill: white)
    ),
    caption: "Preventivo a finire sprint 8."
)<tabella-paf-sprint-8>