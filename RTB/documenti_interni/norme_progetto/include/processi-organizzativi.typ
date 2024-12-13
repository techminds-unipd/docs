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
- Controlla i progressi del progetto;
- Gestisce il bilancio.

==== Amministratore
Funge da guida per quanto concerne le norme di progetto e predispone l'ambiente di lavoro utilizzato dal gruppo. In caso di necessità affronta e risolve le problematiche relative alla gestione dei processi e collabora con il responsabile per garantire qualità del prodotto offerto.
Inoltre si occupa della stesura delle norme di progetto.

==== Analista
Ha lo scopo di redigere l'analisi dei requisiti andando quindi a identificare, documentare e studiare a fondo le esigenze e le specifiche del progetto traducendole in requisiti dettagliati e non ambigui.

In particolare:
- Definisce il problema;
- Stabilisce gli obiettivi analizzando il contesto;
- Definisce i requisiti per raggiungere gli obiettivi;
- Comprende a fondo i bisogni impliciti ed espliciti.

==== Progettista
Partendo dal lavoro dell'analista effettua scelte progettuali per definire il "come" devono essere implementati i requisiti individuati durante la fase di analisi. Effettua quindi decisioni di natura tecnica e tecnologica, andando in particolare a:
- Effettuare scelte per soddisfare i requisiti;
- Progettare l'architettura del prodotto.

==== Programmatore
Scrive il codice software con l'obiettivo che esso rispecchi i requisiti individuati con l'analisi dei requisiti e le specifiche fornite dai progettisti. 
Il codice scritto deve:
- Contenere gli strumenti per la verifica e la validazione;
- Rispecchiare l'architettura ideata dai progettisti;
- Essere manutenibile.

==== Verificatore
Ruolo chiave in quanto ha lo scopo di controllare la qualità del lavoro svolta dagli altri ruoli e che tale lavoro sia stato eseguito secondo quanto prefissato e concordato dal gruppo e/o da specifiche tecniche. 

Ha quindi il compito di:
- Verificare conformità rispetto alle norme di progetto;
- Evidenziare eventuali errori e richiederne la correzione;
- Redarre il piano di qualifica definendo le metriche e i corrispettivi risultati.

==== Tecnologie
Per la gestione dei ruoli e per le attività che ogni ruolo deve svolgere abbiamo deciso di utilizzare le seguenti tecnologie:
- GitHub Board (#link("https://github.com/orgs/techminds-unipd/projects/1")): utilizzato per le attività di pianificazione;
- GitHub Roadmap (#link("https://github.com/orgs/techminds-unipd/projects/1/views/1?layout=roadmap")): utilizzato per il controllo delle attivtà previste per ogni periodo;
- Typst: utilizzato per la documentazione, i diagrammi di Gantt e la creazione dei diagrammi per gli use cases;
- Ambiente Google Drive: per scambiare file utili in modo veloce e condiviso;
- Telegram e Discord: per scambiare consigli sui ruoli in modo immediato.

=== Coordinemanto interno
Per raggiungere una buona efficienza nello svolgimento del progetto è fondamentale un ottimo coordinamento interno che ci permette di collaborare e comunicare in modo rapido e semplice.

==== Reperibilità dei membri
A tal proposito abbiamo creato un foglio google condiviso nel quale ognuno ha indicato i propri orari di disponibilità durante l'arco della settimana, modificabile in caso di nuovi impegni sorti tra l'inizio del progetto e la fase attuale. 

Ogni membro inoltre si assume l'impegno di portare a termine le tasks assegnategli principalmente in modo asincrono e, in caso di necessità collaborative, anche in modo sincrono. La gestione individuale di tali attività è totalmente libera, tenendo comunque in considerano dell'impegno preso nei confronti del gruppo.

Infine in caso di impegni personali, accademici o imprevisti è necessario che l'interessato comunichi il prima possibile al responsabile l'impedimento nel portare a termine i propri compiti secondo i termini previsti.

==== Comunicazioni testuali
Per raggiungere l'obiettivo di mantenere comunicazioni attive e veloci interne al team ci siamo dotati dei seguenti canali testuali:
- Discord: abbiamoc reato un serve su Discord per facilitare sia le comunicazioni testuali che quelle vocali. In particolare per le comunicazioni testuali abbiamo creato più canali:
  - generale: per comunicazioni generali;
  - diario-di-bordo: raccolta di dubbi da esprimere durante il diario di bordo;
  - analisi-dei-requisiti: canale relativo a dubbi o discussioni riguardo l'analisi dei requisiti e relativi use cases;
  - poc: canale relativo a dubbi o discussioni riguardo l'implementazione del poc;
  - proponente: raccolta di dubbi da sottoporre al proponente.
- Telegram: il gruppo Telegram viene utilizzato per uno scambio rapido di informazioni che hanno una certa rilevanza. Se invece sorgono dei dubbi o degli aspetti urgenti che possono essere risolti da un gruppo ristretto si predilige la comunicazione tra singoli individui per non intasare e rallentare il lavoro degli altri membri. Anche su Telegram abbiamo creato vari canali:
  - General: comunicazioni generali;
  - Daily Scrum: ogni membro indica le cose fatte il giorno prima, cosa farà durante il giorno, eventuali problemi sorti;
  - Domande: utilizzato per raccogliere domande generiche.

==== Incontri
Per quanto concerne i meetings interni, che solitamente si verificano da remoto, utilizziamo il canale vocale di Discord, suddiviso in 3 canali (Generale, Generale 1 e Generale 2) in caso di necessità di lavoro a gruppetti. 

Gli incontri interni si verificano periodicamente per effettuare la sprint review, la sprint retrospective e lo sprint planning tra la fine e l'inizio di uno sprint. In caso di necessità si possono fissare anche dei meetings "extra-sprint" se il gruppo li ritiene necessari per allineamento interno o per risolvere problematiche.

Per ogni incontro interno effettuato viene redatto il relativo verbale.

==== Tecnologie
Come evidenziato sopra, le tecnologie di supporto scelte sono:
- Foglie Google;
- Discord;
- Telegram.

=== Coordinemanto con il proponente
Il coordinamento tra il gruppo e il proponente è fondamentale sia abbastanza frequente per non perdere l'allineamneto tra ciò che il proponente richiede e il prodotto finale consegnato. Inoltre ricevere un feedback periodico sul lavoro svolto ci indica se il lavoro svolto è conforme agli obiettivi fissati.

==== Comunicazioni testuali
Nella fase iniziale abbiamo utilizzato il servizio Gmail per le comunicazioni testuali, dopo l'aggiudicazione dell'appalto il proponente ha creato un canale Slack in cui possiamo esporre dei dubbi, delle domande, scambiare file, risorse e materiali. Lo scopo di questo canale è risolvere dubbi in modo veloce e mirato e facilitare lo scambio di informazioni. 

Il proponente ha anche aggiunto in questo canale delle figure professionali esperte in determinate tecnologie da utlizzare durante lo svolgimento del progetto, in tal modo i nostri eventuali dubbi verranno risolti dal professionista più adatto. 

==== Incontri
I meetings esterni si svolgono su Microsoft Teams. Nella fase iniziale del progetto non sono stati fissati degli incontri periodici in quanto il primo periodo è stato dedicato allo studio delle tecnologie e del capitolato. Dal periodo natalizio in poi invece svolgiamo dei meeting di allineamento periodici nei quali esponiamo i nostri avanzamenti ed eventuali dubbi.

Per ogni incontro esterno viene redatto il relativo verbale e inviato al proponente per inserire la firma e validarlo.

==== Tecnologie
Per i rapporti con il proponente utilizziamo le seguenti tecnologie:
- Slack;
- Microsoft Teams;
- Gmail.

=== Organizzazione di attività
issues, milestones, sprint, ticketing, board, roadmap, retrospective, review, planning

== Gestione delle infrastrutture

== Miglioramento del processo

== Formazione del personale