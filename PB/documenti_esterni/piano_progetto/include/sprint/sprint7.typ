#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection

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
    - #link("https://github.com/techminds-unipd/docs/issues/375")[Issue \#375]#footnote(link("https://github.com/techminds-unipd/docs/issues/375")): Gestione della configurazione MVP in norme di progetto;
  - Piano di progetto
    - #link("https://github.com/techminds-unipd/docs/issues/360")[Issue \#360]#footnote(link("https://github.com/techminds-unipd/docs/issues/360")): Redazione consuntivo sprint 6;
    - #link("https://github.com/techminds-unipd/docs/issues/361")[Issue \#361]#footnote(link("https://github.com/techminds-unipd/docs/issues/361")): Redazione preventivo sprint 7;
    - #link("https://github.com/techminds-unipd/docs/issues/374")[Issue \#374]#footnote(link("https://github.com/techminds-unipd/docs/issues/374")): Documentare nuove milestone;
    - #link("https://github.com/techminds-unipd/docs/issues/376")[Issue \#376]#footnote(link("https://github.com/techminds-unipd/docs/issues/376")): Creare funzione ore_persona;
  - Piano di qualifica
    - #link("https://github.com/techminds-unipd/docs/issues/331")[Issue \#331]#footnote(link("https://github.com/techminds-unipd/docs/issues/331")): Redigere test di accettazione;
    - #link("https://github.com/techminds-unipd/docs/issues/364")[Issue \#364]#footnote(link("https://github.com/techminds-unipd/docs/issues/364")): Ridondanza piano di qualifica;
    - #link("https://github.com/techminds-unipd/docs/issues/366")[Issue \#366]#footnote(link("https://github.com/techminds-unipd/docs/issues/366")): Sistemare test di sistema;
  - Specifica tecnica
    - #link("https://github.com/techminds-unipd/docs/issues/369")[Issue \#369]#footnote(link("https://github.com/techminds-unipd/docs/issues/369")): Definire struttura generale specifica tecnica;
    - #link("https://github.com/techminds-unipd/docs/issues/370")[Issue \#370]#footnote(link("https://github.com/techminds-unipd/docs/issues/370")): Redigere l'introduzione specifica tecnica;
    - #link("https://github.com/techminds-unipd/docs/issues/372")[Issue \#372]#footnote(link("https://github.com/techminds-unipd/docs/issues/372")): Progettazione logica;
  - MVP
    - #link("https://github.com/techminds-unipd/mvp/issues/1")[Issue \#1]#footnote(link("https://github.com/techminds-unipd/mvp/issues/1")): Struttura generale delle componenti;
    - #link("https://github.com/techminds-unipd/mvp/issues/2")[Issue \#2]#footnote(link("https://github.com/techminds-unipd/mvp/issues/2")): Setup container;
  - Altro
    - #link("https://github.com/techminds-unipd/docs/issues/367")[Issue \#367]#footnote(link("https://github.com/techminds-unipd/docs/issues/367")): Togliere changelog dal template dei verbali;
    - #link("https://github.com/techminds-unipd/docs/issues/368")[Issue \#368]#footnote(link("https://github.com/techminds-unipd/docs/issues/368")): Controllare l'uso della parola \"fase\";
    - #link("https://github.com/techminds-unipd/docs/issues/371")[Issue \#371]#footnote(link("https://github.com/techminds-unipd/docs/issues/371")): Creare funzioni \"sezione_glossario\" e \"sezione_scopo_prodotto\";
    - #link("https://github.com/techminds-unipd/docs/issues/373")[Issue \#373]#footnote(link("https://github.com/techminds-unipd/docs/issues/373")): Aggiornamento sito web;

//==== Issue non previste

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
      task("Inserire sezione \"Strumenti e tecnologie\"",(from: 0, to: 2, style: (stroke: 8pt + gray)))
      task("Uniformare nomi attività allo standard",(from: 2, to: 4, style: (stroke: 8pt + gray)))
      task("Definizione metriche in norme di progetto",(from: 4, to: 6, style: (stroke: 8pt + gray)))
      task(align(center)[Gestione della configurazione #linebreak() MVP in norme di progetto],(from: 6, to: 8, style: (stroke: 8pt + gray)))
    })
    taskgroup(title:[*Piano di progetto*],{
      task("Redazione consuntivo sprint 6;",(from: 0, to: 1, style: (stroke: 8pt + gray)))
      task("Redazione preventivo sprint 7;",(from: 1, to: 3, style: (stroke: 8pt + gray)))
      task("Documentare nuove milestone;",(from: 3, to: 5, style: (stroke: 8pt + gray)))
      task("Creare funzione ore_persona;",(from: 5, to: 7, style: (stroke: 8pt + gray)))
    })
    taskgroup(title:[*Piano di qualifica*],{
      task("Redigere test di accettazione;",(from: 4, to: 7, style: (stroke: 8pt + gray)))
      task("Ridondanza piano di qualifica;",(from: 0, to: 4, style: (stroke: 8pt + gray)))
      task("Sistemare test di sistema;",(from: 7, to: 10, style: (stroke: 8pt + gray)))
    })
    taskgroup(title:[*Specifica tecnica*],{
      task("Definire struttura generale specifica tecnica;",(from: 0, to: 1, style: (stroke: 8pt + gray)))
      task("Redigere l'introduzione specifica tecnica;",(from: 1, to: 2, style: (stroke: 8pt + gray)))
      task("Progettazione logica;",(from: 2, to: 10, style: (stroke: 8pt + gray)))
    })
    taskgroup(title:[*MVP*],{
      task("Struttura generale delle componenti;",(from: 4, to: 6, style: (stroke: 8pt + gray)))
      task("Setup container;",(from: 6, to: 7, style: (stroke: 8pt + gray)))
    })
    taskgroup(title:[*Altro*],{
      task("Togliere changelog dal template dei verbali;",(from: 0, to: 1, style: (stroke: 8pt + gray)))
      task(align(center)[Creare funzioni \"sezione_glossario\"#linebreak() e \"sezione_scopo_prodotto\";],(from: 1, to: 2, style: (stroke: 8pt + gray)))
      task("Controllare l'uso della parola \"fase\";",(from: 2, to: 3, style: (stroke: 8pt + gray)))
      task("Aggiornamento sito web;",(from: 3, to: 4, style: (stroke: 8pt + gray)))
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

//==== Rischi occorsi

//==== Conclusioni

//==== Retrospettiva

==== Preventivo
#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 7)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo
#tabellaSprint(7, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint7> \

#pieChartSprint(7, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint7> \

/*#if consuntivo != none [

  #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo
  ==== Consuntivo
  I numeri tra parentesi indicano le variazioni rispetto al preventivo.
  #tabellaSprint(7, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
  <tabella-ConsuntivoSprint7> \
  #pieChartSprint(7, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
  <grafico-ConsuntivoSprint7> \
]*/

//==== Aggiornamento preventivo a finire