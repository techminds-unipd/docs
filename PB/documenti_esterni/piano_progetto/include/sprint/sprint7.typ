#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection, getOreConsumatePersona, getOreConsumateRuoli

=== Sprint 7
- Durata: 24/02/2025 - 07/03/2025

==== Pianificazione
L'obiettivo principale di questo sprint è iniziare a comporre il documento di specifica tecnica contenente la progettazione del prodotto finale. Per questo motivo è stato scelto di avere tre progettisti. \ Una parte dello sprint è anche dedicata alla correzione degli errori presenti nella documentazione che ci sono stati comunicati nella valutazione RTB.

- Ruoli:
  - responsabile: #team.T\;
  - amministratore: #team.L\;
  - progettista: #team.G, #team.M, #team.S\;
  - programmatore: #team.T\;
  - verificatore: #team.C, #team.A.
- Issue:
  - Norme di progetto
    - #link("https://github.com/techminds-unipd/docs/issues/362")[Issue \#362]#footnote(link("https://github.com/techminds-unipd/docs/issues/362")): Inserire sezione "Strumenti e tecnologie";
    - #link("https://github.com/techminds-unipd/docs/issues/363")[Issue \#363]#footnote(link("https://github.com/techminds-unipd/docs/issues/363")): Uniformare nomi attività allo standard;
    - #link("https://github.com/techminds-unipd/docs/issues/365")[Issue \#365]#footnote(link("https://github.com/techminds-unipd/docs/issues/365")): Definizione metriche in norme di progetto;
    - #link("https://github.com/techminds-unipd/docs/issues/375")[Issue \#375]#footnote(link("https://github.com/techminds-unipd/docs/issues/375")): Gestione della configurazione MVP in norme di progetto.
  - Piano di progetto
    - #link("https://github.com/techminds-unipd/docs/issues/360")[Issue \#360]#footnote(link("https://github.com/techminds-unipd/docs/issues/360")): Redazione consuntivo sprint 6;
    - #link("https://github.com/techminds-unipd/docs/issues/361")[Issue \#361]#footnote(link("https://github.com/techminds-unipd/docs/issues/361")): Redazione preventivo sprint 7;
    - #link("https://github.com/techminds-unipd/docs/issues/374")[Issue \#374]#footnote(link("https://github.com/techminds-unipd/docs/issues/374")): Documentare nuove milestone;
    - #link("https://github.com/techminds-unipd/docs/issues/376")[Issue \#376]#footnote(link("https://github.com/techminds-unipd/docs/issues/376")): Creare funzione ore_persona.
  - Piano di qualifica
    - #link("https://github.com/techminds-unipd/docs/issues/331")[Issue \#331]#footnote(link("https://github.com/techminds-unipd/docs/issues/331")): Redigere test di accettazione;
    - #link("https://github.com/techminds-unipd/docs/issues/364")[Issue \#364]#footnote(link("https://github.com/techminds-unipd/docs/issues/364")): Ridondanza piano di qualifica;
    - #link("https://github.com/techminds-unipd/docs/issues/366")[Issue \#366]#footnote(link("https://github.com/techminds-unipd/docs/issues/366")): Sistemare test di sistema.
  - Specifica tecnica
    - #link("https://github.com/techminds-unipd/docs/issues/369")[Issue \#369]#footnote(link("https://github.com/techminds-unipd/docs/issues/369")): Definire struttura generale specifica tecnica;
    - #link("https://github.com/techminds-unipd/docs/issues/370")[Issue \#370]#footnote(link("https://github.com/techminds-unipd/docs/issues/370")): Redigere l'introduzione specifica tecnica;
    - #link("https://github.com/techminds-unipd/docs/issues/372")[Issue \#372]#footnote(link("https://github.com/techminds-unipd/docs/issues/372")): Progettazione logica.
  - MVP
    - #link("https://github.com/techminds-unipd/mvp/issues/1")[Issue \#1]#footnote(link("https://github.com/techminds-unipd/mvp/issues/1")): Struttura generale delle componenti;
    - #link("https://github.com/techminds-unipd/mvp/issues/2")[Issue \#2]#footnote(link("https://github.com/techminds-unipd/mvp/issues/2")): Setup container.
  - Altro
    - #link("https://github.com/techminds-unipd/docs/issues/367")[Issue \#367]#footnote(link("https://github.com/techminds-unipd/docs/issues/367")): Togliere changelog dal template dei verbali;
    - #link("https://github.com/techminds-unipd/docs/issues/368")[Issue \#368]#footnote(link("https://github.com/techminds-unipd/docs/issues/368")): Controllare l'uso della parola \"fase\";
    - #link("https://github.com/techminds-unipd/docs/issues/371")[Issue \#371]#footnote(link("https://github.com/techminds-unipd/docs/issues/371")): Creare funzioni \"sezione_glossario\" e \"sezione_scopo_prodotto\";
    - #link("https://github.com/techminds-unipd/docs/issues/373")[Issue \#373]#footnote(link("https://github.com/techminds-unipd/docs/issues/373")): Aggiornamento sito web.

==== Issue aggiuntive
In seguito alla valutazione del prof. Cardin e alla riunione con il proponente, sono state individuate alcune correzioni da apportare alla documentazione. Queste correzioni sono state inserite come issue non previste:
- #link("https://github.com/techminds-unipd/docs/issues/398")[Issue \#398]#footnote(link("https://github.com/techminds-unipd/docs/issues/398")): Approfondimento requisiti;
- #link("https://github.com/techminds-unipd/docs/issues/401")[Issue \#401]#footnote(link("https://github.com/techminds-unipd/docs/issues/401")): Riunioni periodiche in norme di progetto;
- #link("https://github.com/techminds-unipd/docs/issues/402")[Issue \#402]#footnote(link("https://github.com/techminds-unipd/docs/issues/402")): Miglioramento in piano di qualifica;
- #link("https://github.com/techminds-unipd/docs/issues/404")[Issue \#404]#footnote(link("https://github.com/techminds-unipd/docs/issues/404")): Aggiunta requisito sequenzialità workflow.

==== Diagramma di Gantt
#figure(
timeliney.timeline(
  show-grid: true,
  {
    import timeliney: *
    headerline(group(([*Febbraio 2025*], 5)), group(([*Marzo 2025*], 5)))
    headerline(
      group(..range(5).map(n => strong(str(n + 24)))),
      group(..range(5).map(n=>strong(str(n+3))))
    )
    taskgroup(title:[*Norme di progetto*],{
      task("Inserire sezione \"Strumenti e tecnologie\"",(from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task("Uniformare nomi attività allo standard",(from: 2, to: 4, style: (stroke: 8pt + gray)), (from: 2, to: 4, style: (stroke: 2pt + red)))
      task("Definizione metriche in norme di progetto",(from: 4, to: 6, style: (stroke: 8pt + gray)), (from: 4, to: 6, style: (stroke: 2pt + red)))
      task(align(center)[Gestione della configurazione #linebreak() MVP in norme di progetto],(from: 6, to: 8, style: (stroke: 8pt + gray)), (from: 6, to: 8, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Piano di progetto*],{
      task("Redazione consuntivo sprint 6",(from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task("Redazione preventivo sprint 7",(from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 3, style: (stroke: 2pt + red)))
      task("Documentare nuove milestone",(from: 3, to: 5, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
      task("Creare funzione ore_persona",(from: 5, to: 7, style: (stroke: 8pt + gray)), (from: 5, to: 6, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Piano di qualifica*],{
      task("Redigere test di accettazione",(from: 4, to: 7, style: (stroke: 8pt + gray)), (from: 4, to: 8, style: (stroke: 2pt + red)))
      task("Ridondanza piano di qualifica",(from: 0, to: 4, style: (stroke: 8pt + gray)), (from: 0, to: 3, style: (stroke: 2pt + red)))
      task("Sistemare test di sistema",(from: 7, to: 10, style: (stroke: 8pt + gray)), (from: 7, to: 10, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Specifica tecnica*],{
      task("Definire struttura generale specifica tecnica",(from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task("Redigere l'introduzione specifica tecnica",(from: 1, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task("Progettazione logica",(from: 2, to: 10, style: (stroke: 8pt + gray)), (from: 2, to: 10, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*MVP*],{
      task("Struttura generale delle componenti",(from: 4, to: 6, style: (stroke: 8pt + gray)), (from: 4, to: 6, style: (stroke: 2pt + red)))
      task("Setup container",(from: 6, to: 7, style: (stroke: 8pt + gray)), (from: 6, to: 8, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Altro*],{
      task("Togliere changelog dal template dei verbali",(from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task(align(center)[Creare funzioni \"sezione_glossario\"#linebreak() e \"sezione_scopo_prodotto\"],(from: 1, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task("Controllare l'uso della parola \"fase\"",(from: 2, to: 3, style: (stroke: 8pt + gray)), (from: 2, to: 3, style: (stroke: 2pt + red)))
      task("Aggiornamento sito web",(from: 3, to: 4, style: (stroke: 8pt + gray)), (from: 3, to: 4, style: (stroke: 2pt + red)))
    })
  }
),
caption: [Diagramma Gantt sprint 7.]
)<diagramma-gantt-sprint7>

==== Rischi previsti
Di seguito verranno elencati i rischi che potrebbero concretizzarsi in questo sprint:
- RP1 - Impegno di un membro del team inferiore a quanto dichiarato (descritto in @tabella-RP1);
- RP2 - Malattia di un membro del team (descritto in @tabella-RP2);
- RP3 - Problemi interpersonali tra membri del team (descritto in @tabella-RP3);
- ROE1 - Tempi di risposta da parte del proponente (descritto in @tabella-ROE1).

==== Rischi occorsi
Nessuno dei rischi previsti si è concretizzato.

==== Conclusioni
Il team è riuscito a completare le attività previste in questo sprint. La issue di progettazione logica è stata suddivisa in sub-issue per agevolare il lavoro. Ci sono stati 2 colloqui con il proponente per chiarire alcuni dubbi riguardanti la progettazione del prodotto. Inoltre, è stata completata la correzione degli errori presenti nella documentazione che ci sono stati comunicati nella valutazione RTB.

==== Retrospettiva
In questo sprint non si sono verificati problemi significativi. Il team ha lavorato bene e ha completato tutte le attività previste. Al fine di migliorare la progettazione futura, abbiamo deciso di rendere ancora più atomiche le issue, in modo che siano facilmente completabili da un singolo membro del gruppo. Inoltre, dal prossimo sprint i ruoli saranno meno rigidi dando priorità allo svuotamento del backlog, dato che dal consuntivo di questo sprint è emerso che vari membri del gruppo hanno svolto attività assegnate a ruoli differenti.

==== Preventivo
#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 7)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo
#tabellaSprint(7, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint7> \

#pieChartSprint(7, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint7> \


#if consuntivo != none [

  #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo
  ==== Consuntivo
  I numeri tra parentesi indicano le variazioni rispetto al preventivo.
  #tabellaSprint(7, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
  <tabella-ConsuntivoSprint7> \
  #pieChartSprint(7, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
  <grafico-ConsuntivoSprint7> \
]

//#getOreConsumatePersona(sprintNumber: 7)
//#getOreConsumateRuoli(sprintNumber: 7)
==== Aggiornamento preventivo a finire
Durante la retrospettiva dello sprint 7 abbiamo deciso di modificare il preventivo a finire, dato che alcuni ruoli avevano quasi terminato le ore preventivate.
Di seguito il nuovo PaF nella sottostante @tabella-paf-sprint-7.
#figure(
    table(
        columns: (1fr,)*5,
        align: center+horizon,
            fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        table.header([*Ruolo*],[*Costo orario*],[*Stima oraria*],[*Percentuale*],[*Stima costo*]),
        [Responsabile], [30 #sym.euro], [40], [6%], [1.200 #sym.euro],
        [Amministratore], [20 #sym.euro], [135 #text(rgb("#204680"))[(+35)]], [20%], [2.700 #sym.euro],
        [Analista], [25 #sym.euro], [60 #text(rgb("#204680"))[(+5)]], [9%], [1.500 #sym.euro],
        [Progettista], [25 #sym.euro], [90 #text(rgb("#204680"))[(-10)]], [14%], [2.250 #sym.euro],
        [Programmatore], [15 #sym.euro], [160 #text(rgb("#204680"))[(-30)]], [24%], [2.400 #sym.euro],
        [Verificatore], [15 #sym.euro], [180], [27%], [2.700 #sym.euro],
        table.cell([*Costo Totale*], colspan: 4, fill: white), table.cell([*12.750 #sym.euro*], fill: white)
    ),
    caption: "Preventivo a finire sprint 7."
)<tabella-paf-sprint-7>