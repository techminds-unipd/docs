#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection

=== Sprint 2
- Durata: 09/12/2024 - 20/12/2024

==== Pianificazione
In questo secondo sprint ci concentreremo principalmente sulla scrittura dei casi d'uso nell'analisi dei requisiti e sul PoC. La durata questa voltà sarà di due settimane, che secondo le nostre previsioni dovrebbe essere adatta visto che il tempo dedicato allo studio delle nuove tecnologie dovrebbe essere meno dello scorso sprint. Riguardo al PoC si è deciso di avere una repo unica piuttosto che suddividerlo in più repo, visto che abbiamo fatto delle prove ed è risultato semplice suddividere in directory le parti per poi andare a implementare la build automation.

- Ruoli:
  - responsabile: #team.G\;
  - amministratore: #team.C\;
  - analista: #team.M, #team.A\;
  - programmatore: #team.T\;
  - verificatore: #team.L, #team.S.

- Issues:
    - PoC
        - #link("https://github.com/techminds-unipd/PoC/issues/1")[Issue \#1]: Inizio implementazione frontend workflow;
        - #link("https://github.com/techminds-unipd/PoC/issues/2")[Issue \#2]: Inizio implementazione backend;
        - #link("https://github.com/techminds-unipd/PoC/issues/3")[Issue \#3]: Inizio implementazione agenti nel backend.

    - Autoformazione
        - #link("https://github.com/techminds-unipd/docs/issues/65")[Issue \#65]: Typescript (non completata durante lo sprint 1).

    - Analisi dei requisiti
        - #link("https://github.com/techminds-unipd/docs/issues/89")[Issue \#89]: User Story 6;
        - #link("https://github.com/techminds-unipd/docs/issues/104")[Issue \#104]: Fix generale use case;
        - #link("https://github.com/techminds-unipd/docs/issues/105")[Issue \#105]: Scrivere nuove sezioni in analisi dei requisiti.

    - Piano di Progetto
        - #link("https://github.com/techminds-unipd/docs/issues/83")[Issue \#83]: Sistemare il paragrafo spiegazioni;
        - #link("https://github.com/techminds-unipd/docs/issues/106")[Issue \#106]: Aggiornare piano di progetto (sezione sprint 1);
        - #link("https://github.com/techminds-unipd/docs/issues/110")[Issue \#110]: Aggiungere info sprint 2.

    - Piano di Qualifica
        - #link("https://github.com/techminds-unipd/docs/issues/109")[Issue \#109]: Fix piano di qualifica;
        - #link("https://github.com/techminds-unipd/docs/issues/111")[Issue \#111]: Redigere nuove sezioni piano di qualifica;
        - #link("https://github.com/techminds-unipd/docs/issues/112")[Issue \#112]: Redigere "Pianificazione" in piano di progetto.

    - Norme di progetto
        - #link("https://github.com/techminds-unipd/docs/issues/113")[Issue \#113]: Redigere "Processi organizzativi" in norme di progetto;
        - #link("https://github.com/techminds-unipd/docs/issues/114")[Issue \#114]: Redigere "Processi primari" in norme di progetto.

    - Automazione
        - #link("https://github.com/techminds-unipd/docs/issues/107")[Issue \#107]: Creazione script check_glossario.py;
        - #link("https://github.com/techminds-unipd/docs/issues/108")[Issue \#108]: Creazione script indice_gulpease.py.
    - Varie
        - #link("https://github.com/techminds-unipd/docs/issues/115")[Issue \#115]: Creazione checklist per i verificatori.


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

    headerline(group(([*Dicembre 2024*], 10)))
    headerline(
      group(..range(5).map(n => strong(str(n + 9)))),
      group(..range(5).map(n => strong(str(n + 9+7)))),
    )
    taskgroup(title: [*PoC*], {
        task("Inizio implementazione frontend workflow", (from: 3, to: 10, style: (stroke: 8pt + gray)), (from: 3, to:10, style: (stroke: 2pt + red)))
        task("Inizio implementazione backend", (from: 1, to: 8, style: (stroke: 8pt + gray)), (from: 1, to: 8, style: (stroke: 2pt + red)))
        task("Inizio implementazione agenti nel backend(non completata)", (from: 4, to: 10, style: (stroke: 8pt + gray)), (from: 5, to: 10, style: (stroke: 2pt + red)))
      })
      taskgroup(title: [*Autoformazione*], {
        task("Typescript", (from: 0, to: 6, style: (stroke: 8pt + gray)), (from: 0, to: 6, style: (stroke: 2pt + red)))
      })
    taskgroup(title: [*Analisi dei requisiti*], {
        task("Fix generale use case", (from: 8, to: 10, style: (stroke: 8pt + gray)), (from: 8, to: 9, style: (stroke: 2pt + red)))
      task("Fix da UC1 a UC3", (from: 2, to: 5, style: (stroke: 8pt + gray)), (from: 2, to: 5, style: (stroke: 2pt + red)))
      task("Fix da UC4 a UC5", (from: 5, to: 8, style: (stroke: 8pt + gray)), (from: 5, to: 7, style: (stroke: 2pt + red)))
      task("Fix da UC6 a UC9", (from: 2, to: 5, style: (stroke: 8pt + gray)), (from: 2, to: 5, style: (stroke: 2pt + red)))
      task("Fix da UC10 a UC12", (from: 5, to: 7, style: (stroke: 8pt + gray)), (from: 5, to: 7, style: (stroke: 2pt + red)))
      task("Fix da UC13 a UC15", (from: 5, to: 7, style: (stroke: 8pt + gray)), (from: 5, to: 7, style: (stroke: 2pt + red)))
      task("User Story 6", (from: 7, to: 9, style: (stroke: 8pt + gray)), (from: 7, to: 8, style: (stroke: 2pt + red)))
      task("Use case blocco Gmail", (from: 8, to: 10, style: (stroke: 8pt + gray)), (from: 8, to: 10, style: (stroke: 2pt + red)))
      task("Use case blocco Logout", (from: 8, to: 10, style: (stroke: 8pt + gray)), (from: 8, to: 10, style: (stroke: 2pt + red)))
      task("Scrivere nuove sezioni in analisi dei requisiti", (from: 2, to: 6, style: (stroke: 8pt + gray)), (from: 2, to: 8, style: (stroke: 2pt + red)))
    })

taskgroup(title: [*Piano di progetto*], {
    task("Aggiornare piano di progetto [sezione sprint 1]", (from: 1, to: 5, style: (stroke: 8pt + gray)), (from: 1, to: 5, style: (stroke: 2pt + red)))
    task("Aggiungere info sprint 2", (from: 3, to: 5, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
    task("Sistemare il paragrafo spiegazioni", (from: 1, to: 5, style: (stroke: 8pt + gray)), (from: 1, to: 5, style: (stroke: 2pt + red)))
    })
    taskgroup(title: [*Piano di qualifica*], {
        task("Fix piano di qualifica", (from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 0, style: (stroke: 2pt + red)))
        task("Redigere nuove sezioni piano di qualifica", (from: 2, to: 5, style: (stroke: 8pt + gray)), (from: 0, to: 0, style: (stroke: 2pt + red)))
        task("Redigere 'Pianificazione' in piano di progetto", (from: 5, to: 10, style: (stroke: 8pt + gray)), (from: 5, to: 10, style: (stroke: 2pt + red)))
    })

taskgroup(title: [*Norme di progetto*], {
    task("Redigere Processi primari in norme di progetto", (from: 1, to: 5, style: (stroke: 8pt + gray)), (from: 1, to: 5, style: (stroke: 2pt + red)))
    task("Redigere Processi organizzativi in norme di progetto", (from: 4, to: 8, style: (stroke: 8pt + gray)), (from: 4, to: 8, style: (stroke: 2pt + red)))
     })
    taskgroup(title: [*Automazione*], {
        task("Creazione script check_glossario.py", (from: 5, to: 10, style: (stroke: 8pt + gray)), (from: 5, to: 10, style: (stroke: 2pt + red)))
        task("Creazione script indice_gulpease.py", (from: 7, to: 10, style: (stroke: 8pt + gray)), (from: 8, to: 10, style: (stroke: 2pt + red)))
    })
    task("Creazione checklist per i verificatori", (from: 8, to: 10, style: (stroke: 8pt + gray)), (from: 8, to: 10, style: (stroke: 2pt + red)))

     
   
  }
),
caption: [Diagramma Gantt sprint 2.]
)<diagramma-gantt-sprint2>

==== Conclusioni
Sono stati completati tutti i task tranne #link("https://github.com/techminds-unipd/PoC/issues/3")[#underline("#3 Inizio implementazione agenti nel backend")] riguardante il PoC, e due rivolte al piano di qualifica, ossia #link("https://github.com/techminds-unipd/docs/issues/109")[#underline("#109 Fix piano di qualifica")] e #link("https://github.com/techminds-unipd/docs/issues/111")[#underline("#111 Redigere nuove sezioni piano di qualifica")].

==== Retrospettiva
L'analisi delle difficoltà incontrate durante questo sprint ha portato alle seguenti decisioni:
#list(
    indent: 10pt,
    [Per una maggiore leggibilità dei task è stato deciso di cambiare vari campi che andavano a descrivere una issue di github: #list(
        indent: 10pt,
        [il campo "Estimate" non è mai stato utilizzato, perciò si è deciso di rimuoverlo;],
        [per avere una stima più precisa del tempo necessario per completare un task, si è deciso di inserire il campo "Giorni Previsti";],
        [abbiamo deciso di cambiare i valori che rappresentavano il campo "Priority" dai valori "P0","P1" e "P2"  in "Alta", "Media" e "Bassa".],
    )],
    [Talvolta alcuni ruoli possono essere più scarni di lavoro di altri, abbiamo quindi deciso che i componenti del gruppo possono dedicare una parte delle proprie ore lavoro nel contribuire ad un ruolo che non è il
    proprio, dando comunque priorità al ruolo deciso nello sprint planning.],
)
==== Costi

===== Preventivo

#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 2)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo

#tabellaSprint(2, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint2> \

#pieChartSprint(2, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint2> \

#if consuntivo != none [

    #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo

    ===== Consuntivo
    I numeri tra parentesi indicano le variazioni rispetto al preventivo.

    #tabellaSprint(2, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
    <tabella-ConsuntivoSprint2> \
    #pieChartSprint(2, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
    <grafico-ConsuntivoSprint2> \
]