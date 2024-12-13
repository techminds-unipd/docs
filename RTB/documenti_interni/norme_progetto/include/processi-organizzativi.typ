= Processi organizzativi
L'organizzazione garantisce che un processo esista e sia funzionale. In questa sezione infatti descriviamo le attività di mantenimento e miglioramento delle capacità organizzative per gestire il ciclo di vita del software in modo efficace.

Anche in questo caso lo standard ISO/IEC 12207:1995 definisce i processi che concorrono alla formazione dei processi organizzativi. La loro attuazione diventa punto cruciale per la buona riuscita del progetto software.

== Gestione dei processi
La gestione dei processi è essenziale per garantire che tutte le attività relative al ciclo di vita del software siano condotte in modo strutturato, supervisionato e orientato agli obiettivi. Questo processo fornisce una struttura per pianificare, monitorare e controllare lo svolgimento del progetto.

Obiettivi principali di tale processo sono:
- Assicurare che il progetto resti allineato agli obiettivi strategici e soddisfi i requisiti del proponente;
- Minimizzare i rischi e le incertezze, attraverso una supervisione continua e azioni preventive;
- Ottimizzare l'uso delle risorse, migliorando l'efficienza;
- Mantenere la qualità del prodotto software, rispettando vincoli di tempo e costo. 

I risultati di tutto ciò si concretizzano nel piano di progetto, documento utile per il gruppo ma anche per il committente e per il proponente in quanto fa da "bacheca" a quanto appena descritto.

=== Organizzazione dei ruoli
In conformità a quanto descritto nel regolamento del progetto didattico offerto dal committente e come indicato in @resp-ruoli, ogni ruolo ha le proprie responsabilità da assumersi.
#figure(
  table(
    columns: (1fr, 2fr),
    fill: (_, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%) } else { white } },
    align: center+horizon,
    table.header(
      table.cell(text(weight: "bold", [Ruoli])),
      table.cell(text(weight: "bold", [Responsabilità]))
    ),
    [*Responsabile*],
    [Coordina l’elaborazione di piani e scadenze.
    Approva il rilascio di prodotti parziali o finali (SW, documenti).
    Coordina le attività del gruppo.],
    [*Amministratore*],
    [Assicura l’efficienza di procedure, strumenti e
     tecnologie a supporto del way of working.],
    [*Analista*],
    [Svolge le attività di analisi dei requisiti.],
    [*Progettista*],
    [Svolge le attività di progettazione (design).],
    [*Programmatore*],
    [Svolge le attività di codifica.],
    [*Verificatore*],
    [Svolge le attività di verifica.]
  ), 
  caption: [Responsabilità ruoli.]
) <resp-ruoli>

==== Rotazione dei ruoli
Lo scopo che ci poniamo riguardo la rotazione dei ruoli è permettere ed assicurare a tutti di assumere almeno una volta ogni ruolo durante l'arco temporale in cui si svolge il progetto. Questo permette a tutti di apprendere le basi di ogni singola posizione e le relative responsabilità. 

La politica di rotazione è determinata in accordo tra tutto il gruppo, tenenedo ovviamente conto dei ruoli che non sono ancora stati coperti da ogni membro. Poniamo particolare attenzione al fatto che l'assegnazione dei ruoli è fluida, ovvero che priviligiamo le attività da compiere piuttosto che il mantenimento fisso del ruolo. Questo significa che in caso di necessità potremo assumere un ruolo che non ci è stato assegnato in quel periodo di tempo. 

Infine durante la fase di scambio dei ruoli, chi ha assunto il ruolo precedentemente, deve "passare la conoscenza" acquisita per aiutare durante il periodo di transizione. Per fare questo è fondamentale:
- Attivare canali vocali per uno scambio più immediato e;
- Utilizzare documenti informali per velocizzare il passaggio di conoscenza;
- Documentare in modo chiaro e dettagliato ogni azione che è reputata non banale.

==== Responsabile
Il responsabile è una figura di riferimento non solo per il team, ma anche per il committente e il proponente in quanto svolge il ruolo di mediatore tra le parti. 

La sua posizione centrale è dovuta al fatto che svolge l'attività di *pianificazione*, componente fondamentale perchè programma un piano d'azione organizzato che mira al raggiungimento degli obiettivi posti per un determinato periodo. 

In particolare:
- Coordina la pianificazione:
    - allocazione risorse specificando tecnologie da utilizzare;
    - definizione dei tempi e dei costi;
    - redazione di piani dettagliati da inserire nel piano di progetto.
- Verifica la fattibilità del piano proposto;
- Gestisce relazioni con l'esterno;
- Controlla i progressi del progetto.

==== Amministratore
Funge da guida per quanto concerne le norme di progetto e predispone l'ambiente di lavoro utilizzato dal gruppo. In caso di necessità affronta e risolve le problematiche relative alla gestione dei processi e collabora con il responsabile per garantire qualità del prodotto offerto.

==== Analista


==== Progettista


==== Programmatore


==== Verificatore

==== Tecnologie
TODO
- github board
- gant con Typst
- github roadmap
- github in generale
- ambiene drive d google

=== Coordinemanto interno
organizzazione interna 

=== Coordinemanto con il proponente
orgniazzazione esterna

=== Organizzazione di attività
issues, milestones, sprint, ticketing

== Gestione delle infrastrutture

== Miglioramento del processo

== Formazione del personale