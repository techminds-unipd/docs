#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection, getOreConsumatePersona, getOreConsumateRuoli

=== Sprint 9
- Durata: 24/03/2025 - 04/04/2025 (data di fine effettiva: 01/04/2025)

==== Pianificazione
Durante questo sprint il gruppo ha l'obiettivo di terminare la codifica, i test di unità e i test di integrazione per il frontend e di implementare i test di sistema. Contemporaneamente saranno aggiornati e revisionati tutti i documenti in preparazione all'incontro finale con l'azienda e alla revisione PB.

- Ruoli:
  - responsabile: #team.C\;
  - amministratore: #team.M\;
  - progettista: #team.T\;
  - programmatore: #team.L, #team.G\;
  - verificatore: #team.A, #team.S.
- Issue:
  - Lettera di presentazione
    - #link("https://github.com/techminds-unipd/docs/issues/523")[Issue \#523]#footnote(link("https://github.com/techminds-unipd/docs/issues/523")): Lettera di presentazione PB.
  - Piano di progetto
    - #link("https://github.com/techminds-unipd/docs/issues/507")[Issue \#507]#footnote(link("https://github.com/techminds-unipd/docs/issues/507")): Preventivo sprint 9.
  - Analisi dei requisiti
    - #link("https://github.com/techminds-unipd/docs/issues/511")[Issue \#511]#footnote(link("https://github.com/techminds-unipd/docs/issues/511")): Aggiornare UC26.
  - Piano di qualifica
    - #link("https://github.com/techminds-unipd/docs/issues/512")[Issue \#512]#footnote(link("https://github.com/techminds-unipd/docs/issues/512")): Aggiornare cruscotto piano di qualifica;
    - #link("https://github.com/techminds-unipd/docs/issues/486")[Issue \#486]#footnote(link("https://github.com/techminds-unipd/docs/issues/486")): Documentare test di integrazione frontend sul piano di qualifica;
    - #link("https://github.com/techminds-unipd/docs/issues/484")[Issue \#484]#footnote(link("https://github.com/techminds-unipd/docs/issues/484")): Documentare test di unità frontend sul piano di qualifica.
  - Norme di progetto
    - #link("https://github.com/techminds-unipd/docs/issues/427")[Issue \#427]#footnote(link("https://github.com/techminds-unipd/docs/issues/427")): Documentare struttura documenti;
    - #link("https://github.com/techminds-unipd/docs/issues/520")[Issue \#520]#footnote(link("https://github.com/techminds-unipd/docs/issues/520")): Testing in norme di progetto;
    - #link("https://github.com/techminds-unipd/docs/issues/521")[Issue \#521]#footnote(link("https://github.com/techminds-unipd/docs/issues/521")): Aggiornare progettazione in norme di progetto;
    - #link("https://github.com/techminds-unipd/docs/issues/522")[Issue \#522]#footnote(link("https://github.com/techminds-unipd/docs/issues/522")): Definire standard ISO/IEC 9126 in norme di progetto.
  - Manuale utente
    - #link("https://github.com/techminds-unipd/docs/issues/428")[Issue \#428]#footnote(link("https://github.com/techminds-unipd/docs/issues/428")): Struttura manuale utente;
    - #link("https://github.com/techminds-unipd/docs/issues/513")[Issue \#513]#footnote(link("https://github.com/techminds-unipd/docs/issues/513")): Documentare Home in manuale utente;
    - #link("https://github.com/techminds-unipd/docs/issues/514")[Issue \#514]#footnote(link("https://github.com/techminds-unipd/docs/issues/514")): Documentare About Us in manuale utente;
    - #link("https://github.com/techminds-unipd/docs/issues/515")[Issue \#515]#footnote(link("https://github.com/techminds-unipd/docs/issues/515")): Documentare SignIn in manuale utente;
    - #link("https://github.com/techminds-unipd/docs/issues/516")[Issue \#516]#footnote(link("https://github.com/techminds-unipd/docs/issues/516")): Documentare SignUp in manuale utente;
    - #link("https://github.com/techminds-unipd/docs/issues/517")[Issue \#517]#footnote(link("https://github.com/techminds-unipd/docs/issues/517")): Documentare Dashboard in manuale utente;
    - #link("https://github.com/techminds-unipd/docs/issues/518")[Issue \#518]#footnote(link("https://github.com/techminds-unipd/docs/issues/518")): Documentare Services in manuale utente;
    - #link("https://github.com/techminds-unipd/docs/issues/519")[Issue \#519]#footnote(link("https://github.com/techminds-unipd/docs/issues/519")): Documentare Workflow in manuale utente.
  - Specifica tecnica
    - #link("https://github.com/techminds-unipd/docs/issues/474")[Issue \#474]#footnote(link("https://github.com/techminds-unipd/docs/issues/474")): Inserire immagini backend, agente e database;
    - #link("https://github.com/techminds-unipd/docs/issues/503")[Issue \#503]#footnote(link("https://github.com/techminds-unipd/docs/issues/503")): Fix specifica;
    - #link("https://github.com/techminds-unipd/docs/issues/506")[Issue \#506]#footnote(link("https://github.com/techminds-unipd/docs/issues/506")): Inserire immagini frontend;
    - #link("https://github.com/techminds-unipd/docs/issues/508")[Issue \#508]#footnote(link("https://github.com/techminds-unipd/docs/issues/508")): Documentare architettura di deploy;
    - #link("https://github.com/techminds-unipd/docs/issues/509")[Issue \#509]#footnote(link("https://github.com/techminds-unipd/docs/issues/509")): Documentare limiti e criticità;
    - #link("https://github.com/techminds-unipd/docs/issues/510")[Issue \#510]#footnote(link("https://github.com/techminds-unipd/docs/issues/510")): Documentare design pattern e diagramma delle classi;
    - #link("https://github.com/techminds-unipd/docs/issues/454")[Issue \#454]#footnote(link("https://github.com/techminds-unipd/docs/issues/454")): Descrizione frontend Workflow;
    - #link("https://github.com/techminds-unipd/docs/issues/455")[Issue \#455]#footnote(link("https://github.com/techminds-unipd/docs/issues/455")): Descrizione frontend Services.
  - MVP
    - #link("https://github.com/techminds-unipd/mvp/issues/61")[Issue \#61]#footnote(link("https://github.com/techminds-unipd/mvp/issues/61")): Rendere esplicite le dipendenze e cambiare nome file;
    - #link("https://github.com/techminds-unipd/mvp/issues/62")[Issue \#62]#footnote(link("https://github.com/techminds-unipd/mvp/issues/62")): Test di integrazione frontend;
    - #link("https://github.com/techminds-unipd/mvp/issues/63")[Issue \#63]#footnote(link("https://github.com/techminds-unipd/mvp/issues/63")): Sistemare docker per release;
    - #link("https://github.com/techminds-unipd/mvp/issues/64")[Issue \#64]#footnote(link("https://github.com/techminds-unipd/mvp/issues/64")): Implementare test di sistema;
    - #link("https://github.com/techminds-unipd/mvp/issues/65")[Issue \#65]#footnote(link("https://github.com/techminds-unipd/mvp/issues/65")): Tracciamento test;
    - #link("https://github.com/techminds-unipd/mvp/issues/21")[Issue \#21]#footnote(link("https://github.com/techminds-unipd/mvp/issues/21")): Codifica frontend Workflow;
    - #link("https://github.com/techminds-unipd/mvp/issues/22")[Issue \#22]#footnote(link("https://github.com/techminds-unipd/mvp/issues/22")): Codifica frontend Services.

//==== Issue aggiuntive

==== Diagramma di Gantt
#figure(
timeliney.timeline(
  show-grid: true,
  {
    import timeliney: *
    headerline(group(([*Marzo 2025*], 6)), group(([*Aprile 2025*], 4)))
    headerline(
      group(..range(5).map(n => strong(str(n + 24)))),
      group(..range(1).map(n => strong(str(n + 31)))),
      group(..range(4).map(n=>strong(str(n+1))))
    )
    taskgroup(title:[*Lettera di presentazione*],{
      task("Lettera di presentazione PB",(from: 8, to: 9, style: (stroke: 8pt + gray)), (from: 6, to: 7, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Piano di progetto*],{
      task("Preventivo sprint 9",(from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 2, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Analisi dei requisiti*],{
      task("Aggiornare UC26",(from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 2, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Piano di qualifica*],{
      task(align(center, [Aggiornare cruscotto #linebreak() piano di qualifica]),(from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task(align(center, [Documentare test di integrazione #linebreak() frontend sul piano di qualifica]),(from: 6, to: 8, style: (stroke: 8pt + gray)), (from: 4, to: 6, style: (stroke: 2pt + red)))
      task(align(center, [Documentare test di unità #linebreak() frontend sul piano di qualifica]),(from: 4, to: 6, style: (stroke: 8pt + gray)), (from: 2, to: 3, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Norme di progetto*],{
      task(align(center, [Documentare struttura documenti]),(from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task(align(center, [Testing in norme di progetto]),(from: 2, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task(align(center, [Aggiornare progettazione #linebreak() in norme di progetto]),(from: 3, to: 4, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task(align(center, [Definire standard ISO/IEC 9126 #linebreak()  in norme di progetto]),(from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 3, style: (stroke: 2pt + red)))
    })
  }
),
caption: [Diagramma Gantt documentazione varia sprint 9.]
)<diagramma-gantt-docs-sprint9>

#figure(
timeliney.timeline(
  show-grid: true,
  {
    import timeliney: *
    headerline(group(([*Marzo 2025*], 6)), group(([*Aprile 2025*], 4)))
    headerline(
      group(..range(5).map(n => strong(str(n + 24)))),
      group(..range(1).map(n => strong(str(n + 31)))),
      group(..range(4).map(n=>strong(str(n+1))))
    )
    taskgroup(title:[*Manuale utente*],{
      task(align(center, [Struttura manuale utente]),(from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task(align(center, [Documentare Home in manuale utente]),(from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task(align(center, [Documentare About Us in manuale utente]),(from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task(align(center, [Documentare SignIn in manuale utente]),(from: 2, to: 4, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task(align(center, [Documentare SignUp in manuale utente]),(from: 2, to: 4, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task(align(center, [Documentare Dashboard #linebreak() in manuale utente]),(from: 3, to: 5, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
      task(align(center, [Documentare Services in manuale utente]),(from: 4, to: 6, style: (stroke: 8pt + gray)), (from: 0, to: 1, style: (stroke: 2pt + red)))
      task(align(center, [Documentare Workflow in manuale utente]),(from: 5, to: 7, style: (stroke: 8pt + gray)), (from: 3, to: 6, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*Specifica tecnica*],{
      task(align(center, [Inserire immagini backend, agente e database]),(from: 6, to: 8, style: (stroke: 8pt + gray)), (from: 3, to: 6, style: (stroke: 2pt + red)))
      task(align(center, [Fix specifica]),(from: 1, to: 2, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))  
      task(align(center, [Inserire immagini frontend]),(from: 6, to: 8, style: (stroke: 8pt + gray)), (from: 5, to: 6, style: (stroke: 2pt + red)))   
      task(align(center, [Documentare architettura di deploy]),(from: 4, to: 6, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
      task(align(center, [Documentare limiti e criticità]),(from: 3, to: 4, style: (stroke: 8pt + gray)), (from: 2, to: 3, style: (stroke: 2pt + red)))
      task(align(center, [Documentare design pattern #linebreak() e diagramma delle classi]),(from: 3, to: 5, style: (stroke: 8pt + gray)), (from: 2, to: 4, style: (stroke: 2pt + red)))
      task(align(center, [Descrizione frontend Workflow]),(from: 2, to: 3, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
      task(align(center, [Descrizione frontend Services]),(from: 1, to: 3, style: (stroke: 8pt + gray)), (from: 1, to: 2, style: (stroke: 2pt + red)))
    })
    taskgroup(title:[*MVP*],{
      task(align(center, [Rendere esplicite le dipendenze #linebreak() e cambiare nome file]),(from: 4, to: 6, style: (stroke: 8pt + gray)), (from: 4, to: 6, style: (stroke: 2pt + red)))
      task(align(center, [Test di integrazione frontend]),(from: 2, to: 5, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
      task(align(center, [Sistemare docker per release]),(from: 8, to: 9, style: (stroke: 8pt + gray)), (from: 5, to: 6, style: (stroke: 2pt + red)))
      task(align(center, [Implementare test di sistema]),(from: 3, to: 9, style: (stroke: 8pt + gray)), (from: 1, to: 6, style: (stroke: 2pt + red)))
      task(align(center, [Tracciamento test]),(from: 3, to: 5, style: (stroke: 8pt + gray)), (from: 3, to: 5, style: (stroke: 2pt + red)))
      task(align(center, [Codifica frontend Workflow]),(from: 0, to: 2, style: (stroke: 8pt + gray)), (from: 0, to: 3, style: (stroke: 2pt + red)))
      task(align(center, [Codifica frontend Services]),(from: 0, to: 1, style: (stroke: 8pt + gray)), (from: 0, to: 2, style: (stroke: 2pt + red)))
    })
  }
),
caption: [Diagramma Gantt specifica tecnica, manuale utente e MVP sprint 9.]
)<diagramma-gantt-mvp-sprint9>

==== Rischi previsti
Di seguito verranno elencati i rischi che potrebbero concretizzarsi in questo sprint:
- RP1 - Impegno di un membro del team inferiore a quanto dichiarato (descritto in @tabella-RP1);
- RP2 - Malattia di un membro del team (descritto in @tabella-RP2);
- RP3 - Problemi interpersonali tra membri del team (descritto in @tabella-RP3).

==== Rischi occorsi
Nessuno dei rischi previsti si è concretizzato.

==== Conclusioni
Durante il nono e ultimo sprint sono state terminate tutte le attività previste, consentendo al team di candidarsi per la revisione PB in anticipo rispetto ai termini previsti. È stata terminata la codifica dei componenti mancanti del frontend e sono stati implementati i test di sistema e i test di integrazione per la componente frontend. Sono stati aggiornati e completati tutti i documenti, in particolare il manuale utente e la specifica tecnica. Infine in data 01/04/2025 è stata svolta la riunione finale con l'azienda proponente, in cui sono stati superati tutti i test di accettazione e il prodotto finale è stato ritenuto consono. Sempre in data 01/04/2025 il gruppo ha celebrato la retrospettiva di fine sprint, anticipando così la data di termine pianificata.

==== Retrospettiva
L'andamento dello sprint è stato molto positivo, infatti il gruppo ha terminato tutte le attività pianificate in anticipo. Questo risultato è indice di una crescente efficienza operativa e di un miglioramento dell'organizzazione interna del gruppo.

Uno degli aspetti più rilevanti di questo sprint è stata la riduzione del rapporto tra ore produttive e ore di orologio rispetto alle fasi iniziali del progetto. Se nei primi sprint le ore produttive erano notevolmente inferiori rispetto alle ore di orologio a causa di rallentamenti, incertezze e necessità di coordinamento in questo sprint il team è riuscito a diminuire di molto questo rapporto.
Questo è stato possibile grazie ad una maggiore familiarità con il progetto, e soprattutto con le tecnologie impiegate.

Si è incontrata qualche difficoltà nell'implementazione dei test di sistema, subito superata grazie alla collaborazione tra i membri del gruppo, altro punto di forza che ha permesso di terminare tutte le attività in anticipo. 

==== Preventivo
#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 9)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo
#tabellaSprint(9, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint9> \

#pieChartSprint(9, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint9> \

#if consuntivo != none [

  #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo
  ==== Consuntivo
  I numeri tra parentesi indicano le variazioni rispetto al preventivo.
  #tabellaSprint(9, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
  <tabella-ConsuntivoSprint9> \
  #pieChartSprint(9, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
  <grafico-ConsuntivoSprint9> \
]

