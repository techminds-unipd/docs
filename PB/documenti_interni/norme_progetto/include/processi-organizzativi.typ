#import "/template/template.typ": glossario
= Processi organizzativi
L'organizzazione garantisce che un processo esista e sia funzionale. In questa sezione infatti descriviamo le attività di mantenimento e miglioramento delle capacità organizzative per gestire il ciclo di vita del software in modo efficace.

Anche in questo caso lo standard ISO/IEC 12207:1995 definisce i processi che concorrono alla formazione dei processi organizzativi. La loro attuazione diventa punto cruciale per la buona riuscita del progetto software.

== Gestione dei processi
La gestione dei processi è essenziale per garantire che tutte le attività relative al ciclo di vita del software siano condotte in modo strutturato, supervisionato e orientato agli obiettivi. Questo processo fornisce una struttura per pianificare, monitorare e controllare lo svolgimento del progetto.

Obiettivi principali di tale processo sono:
- Assicurare che il progetto resti allineato agli obiettivi e soddisfi i requisiti del proponente;
- Minimizzare i rischi e le incertezze, attraverso una supervisione continua e azioni preventive;
- Ottimizzare l'uso delle risorse, migliorando l'efficienza;
- Mantenere la qualità del prodotto software, rispettando vincoli di tempo e costo. 

I risultati di tutto ciò si concretizzano nel piano di progetto, documento utile per il gruppo ma anche per il committente e per il proponente in quanto funge da presentazione dei processi organizzativi del team.

=== Attività
Secondo lo standard ISO/IEC 12207:1995 la gestione dei processi prevede le seguenti attività:
+ *Avvio e definizione dell'ambito del processo*, che consiste nella definizione, da parte del responsabile, dei bisogni che saranno soddisfatti dal processo e nell'individuazione delle risorse adeguate all'esecuzione e alla gestione del processo;
+ *Pianificazione*, nella quale il responsabile definisce un piano per l'attuazione del processo. Il piano deve contentere una lista delle attività che saranno svolte e dei prodotti forniti in uscita. Ogni processo deve essere corredato da una stima dei costi, dall'assegnazione delle responsabilità e da una pianificazione temporale;
+ *Esecuzione e controllo*, che consiste nell'attuazione del piano e nel monitoraggio delle attività svolte da parte del responsabile. La risoluzione dei problemi può portare alla modifica del piano e deve perciò essere documentata;
+ *Revisione e valutazione*, nella quale il manager valuta l'adeguatezza dei prodotti e della pianificazione ai bisogni che il processo deve soddisfare;
+ *Chiusura*, che avviene una volta che i prodotti e le attività del processo sono completate. Il responsabile deve archiviare adeguatamente i risultati.

=== Organizzazione dei ruoli
In conformità a quanto descritto nel regolamento del progetto didattico offerto dal committente e come indicato in @resp-ruoli, ogni persona che svolge un determinato ruolo deve assumersi diverse responsabilità.
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
Lo scopo che ci poniamo riguardo la rotazione dei ruoli è permettere ed assicurare a tutti di assumere almeno una volta ogni ruolo durante l'arco temporale in cui si svolge il progetto. Questo ci permette di apprendere le basi di ogni singola posizione e le relative responsabilità. 

La politica di rotazione è determinata in accordo tra tutto il gruppo, tenendo ovviamente conto dei ruoli che non sono ancora stati coperti da ogni membro. Poniamo particolare attenzione al fatto che l'assegnazione dei ruoli è fluida, ovvero che privilegiamo le attività da compiere piuttosto che il mantenimento fisso del ruolo. Questo significa che in caso di necessità potremmo svolgere compiti afferenti a un ruolo diverso da quello assegnato per lo sprint corrente.

Infine, durante lo scambio dei ruoli, chi lascia un ruolo deve condividere la conoscenza acquisita per facilitare la transizione. Per fare questo è fondamentale:
- Utilizzare canali vocali (privilegiando i canali #glossario[Discord]) per uno scambio più immediato;
- Utilizzare documenti informali per velocizzare il passaggio di conoscenza;
- Documentare in modo chiaro e dettagliato ogni azione che è reputata non banale.

==== Responsabile
Il #glossario[responsabile] è una figura di riferimento non solo per il team, ma anche per il committente e il proponente in quanto svolge il ruolo di mediatore tra le parti. 

La sua posizione centrale è dovuta al fatto che svolge l'attività di *pianificazione*, componente fondamentale perché programma un piano d'azione organizzato che mira al raggiungimento degli obiettivi posti per un determinato periodo. 

In particolare:
- Coordina la pianificazione:
    - alloca le risorse specificando le tecnologie da utilizzare;
    - definisce i tempi e i costi;
    - redige piani dettagliati da inserire nel piano di progetto.
- Verifica la fattibilità del piano proposto;
- Gestisce le relazioni con gli altri #glossario[stakeholder]#h(1pt)\;
- Controlla i progressi del progetto;
- Gestisce il bilancio.

==== Amministratore
Funge da guida per quanto concerne le norme di progetto e predispone l'ambiente di lavoro utilizzato dal gruppo. In caso di necessità, affronta e risolve le problematiche relative alla gestione dei processi e collabora con il responsabile per garantire la qualità del prodotto offerto.
Inoltre, si occupa della stesura delle norme di progetto.

==== Analista
Ha lo scopo di redigere l'analisi dei requisiti andando quindi a identificare, documentare e studiare a fondo le esigenze e le specifiche del progetto, traducendole in requisiti dettagliati e non ambigui.

In particolare:
- Definisce il problema;
- Stabilisce gli obiettivi analizzando il contesto;
- Definisce i requisiti per raggiungere gli obiettivi;
- Comprende a fondo i bisogni impliciti ed espliciti.

==== Progettista
Partendo dal lavoro dell'analista effettua scelte progettuali per definire il "come" devono essere implementati i requisiti individuati durante l'analisi. Effettua quindi decisioni di natura tecnica e tecnologica, andando in particolare a:
- Effettuare scelte tecnologiche e strutturali per soddisfare i requisiti;
- Progettare l'architettura del prodotto.

==== Programmatore
Scrive il codice software con l'obiettivo che esso rispecchi i requisiti individuati con l'analisi e le specifiche fornite dai progettisti. 

Il codice scritto deve:
- Contenere gli strumenti per la verifica e la #glossario[validazione]\;
- Rispecchiare l'architettura ideata dai progettisti;
- Essere conforme ai requisiti di qualità stabiliti.

==== Verificatore
Ruolo chiave in quanto ha lo scopo di controllare la qualità del lavoro svolto dagli altri ruoli e che tale lavoro sia stato eseguito secondo quanto concordato dal gruppo e prefissato dalle specifiche tecniche.

Ha quindi il compito di:
- Verificare la conformità del lavoro svolto rispetto alle norme di progetto;
- Evidenziare eventuali errori e richiederne la correzione;
- Redigere il piano di qualifica definendo le metriche e i corrispettivi risultati.

==== Strumenti e tecnologie
Per la gestione dei ruoli e per le attività che ogni ruolo deve svolgere abbiamo deciso di utilizzare i seguenti strumenti e le seguenti tecnologie:
- #link("https://github.com/orgs/techminds-unipd/projects/1", "GitHub Board") #footnote(link("https://github.com/orgs/techminds-unipd/projects/1")) \[visitato il: 10/02/2025\] per le attività di pianificazione;
- Typst: per la documentazione e la creazione di diagrammi, tabelle e grafici;
- Ambiente Google Drive: per scambiare file utili in modo veloce e condiviso;
- Telegram e Discord: per scambiare consigli sui ruoli in modo immediato.

=== Coordinamento interno
Per raggiungere una buona efficienza nello svolgimento del progetto è fondamentale un ottimo coordinamento interno, che permetta di collaborare e comunicare in modo rapido e semplice.

==== Reperibilità dei membri
Per far sì che tutti i membri siano a conoscenza degli impegni altrui, ciascun membro ha indicato i propri orari di disponibilità durante l'arco della settimana in un foglio Google condiviso. Il documento è modificabile in caso vi siano nuovi impegni sorti dall'inizio del progetto.

Ogni membro inoltre si assume l'impegno di portare a termine le proprie task principalmente in modo asincrono e, in caso di necessità collaborative, anche in modo sincrono. La gestione individuale di tali attività è totalmente libera, tenendo comunque in considerazione l'impegno preso nei confronti del gruppo.

Infine, in caso di impegni personali, accademici o imprevisti è necessario che l'interessato comunichi il prima possibile al responsabile l'impedimento nel portare a termine i propri compiti secondo i termini previsti.

==== Comunicazioni testuali
Per consentire al team di comunicare agilmente ci siamo dotati dei seguenti canali testuali:
- Discord: abbiamo creato un server per facilitare sia le comunicazioni testuali che quelle vocali. In particolare per le comunicazioni testuali abbiamo creato più canali:
  - generale: per comunicazioni generali;
  - diario-di-bordo: raccolta di dubbi da esprimere durante il diario di bordo;
  - analisi-dei-requisiti: canale relativo a dubbi o discussioni riguardo l'analisi dei requisiti e relativi use case;
  - #glossario[poc]: canale per dubbi o discussioni riguardo l'implementazione del PoC;
  - proponente: raccolta di dubbi da sottoporre al proponente.
- Telegram: il gruppo Telegram viene utilizzato per uno scambio rapido di informazioni di una certa rilevanza. Se invece sorgono dei dubbi o degli aspetti urgenti che possono essere risolti da un gruppo ristretto si predilige la comunicazione tra i singoli individui, per non congestionare e rallentare il lavoro degli altri membri. Anche su Telegram abbiamo creato vari canali:
  - General: comunicazioni generali;
  - Daily Scrum: ogni membro indica le cose fatte il giorno prima, cosa farà durante il giorno, eventuali problemi sorti;
  - Domande: utilizzato per raccogliere domande generiche.

==== Incontri
Per quanto concerne i meeting interni, che solitamente si tengono da remoto, utilizziamo il canale vocale di Discord, suddiviso in 3 canali (Generale, Generale 1 e Generale 2) in caso vi sia la necessità di lavorare contemporaneamente divisi in gruppi.

Gli incontri interni si verificano periodicamente per effettuare la sprint #glossario[retrospective] e lo #glossario[sprint planning] tra la fine di uno sprint e l'inizio del successivo. Si possono fissare anche dei meeting nel mezzo dello sprint per necessità di allineamento interno o per risolvere problematiche urgenti.

Ogni incontro interno verrà guidato e mediato dal responsabile. Oltre a questo, il responsabile deve stabilire una bozza dell'ordine del giorno, eventualmente da ampliare tenendo conto delle difficoltà e delle questioni emerse dal precedente incontro. Per ogni incontro interno effettuato il responsabile deve infine redigere il relativo verbale, compito delegabile all'amministratore nel caso in cui sorgano dei problemi personali o degli elementi di maggiore urgenza da risolvere.

==== Strumenti e tecnologie
Come evidenziato sopra, gli strumenti e tecnologie di supporto scelte sono:
- Fogli Google;
- Discord;
- Telegram.

=== Coordinamento con il proponente <proponente>
Un frequente coordinamento tra il gruppo e il proponente è fondamentale per assicurare che il prodotto evolva coerentemente con le richieste del proponente. Inoltre, ricevere dei feedback periodici sul lavoro svolto ci indica se è conforme agli obiettivi fissati.

==== Comunicazioni testuali
Inizialmente abbiamo utilizzato il servizio Gmail per le comunicazioni testuali; dopo l'aggiudicazione dell'appalto, invece, il proponente ha creato un canale Slack in cui possiamo fare delle domande e scambiare file, risorse e materiali. Gli scopi di questo canale sono rispondere ai dubbi in modo veloce e mirato e facilitare lo scambio di informazioni.

Il proponente ha aggiunto in questo canale diverse figure professionali esperte nelle tecnologie da utilizzare nel progetto, per poter rispondere in maniera esaustiva ai diversi tipi di dubbi e problematiche che possono sorgere.

==== Incontri
Durante lo sviluppo del progetto, è fondamentale organizzare incontri periodici con il proponente per monitorare l'avanzamento del lavoro e risolvere eventuali dubbi o problematiche (vedi sezione @revisioni-congiunte-implementazione).

I meeting si svolgono su Microsoft Teams. Il responsabile si occupa di mediare l'incontro presentando i punti previsti nell'ordine del giorno al proponente. Quando necessario lascia la parola agli altri membri del gruppo. Questo metodo favorisce una comunicazione chiara tra le parti coinvolte, ottimizzando il tempo e assicurando una corretta registrazione delle informazioni emerse. Per ogni incontro esterno, infatti, il responsabile redige il relativo verbale (delegabile all'amministratore) e lo invia al proponente sul canale Slack per l'approvazione tramite una firma.

==== Strumenti e tecnologie
Per i rapporti con il proponente utilizziamo le seguenti tecnologie e strumenti:
- Slack;
- Microsoft Teams;
- Gmail.

=== Organizzazione delle attività
In questa sezione sono presenti le metodologie scelte per organizzare e gestire le varie attività da svolgere nel corso del progetto.

==== Metodologie utilizzate
Abbiamo deciso di adottare un approccio agile allo sviluppo del progetto prendendo ispirazione dal modello #glossario[Scrum], metodologia ben consolidata e utilizzata nel contesto lavorativo. Questa scelta è stata guidata dai numerosi vantaggi che comporta, per esempio:
- Maggiore flessibilità;
- Maggiore produttività;
- Maggiore trasparenza e comunicazione.
Alla base delle strategie di tipo agile vi è l'adozione della pratica di Continuous Integration (CI) che:
- Favorisce il lavoro di gruppo promuovendo la collaborazione e la condivisione;
- Promuove il miglioramento continuo, attraverso la retrospettiva, identificando e risolvendo le problematiche in modo mirato e rapido;
- Garantisce una distribuzione efficace delle responsabilità e delle attività;
- Assicura trasparenza facilitando l'analisi e la comprensione del processo di sviluppo al proponente e al committente.

Dividiamo quindi le attività da svolgere in sprint, periodi di tempo che durano mediamente due settimane (salvo eccezioni) e durante i quali il gruppo si impegna a svolgere le seguenti attività:
- Daily scrum: ogni membro del gruppo ogni giorno comunica agli altri le attività svolte il giorno precedente, quelle che ha intenzione di svolgere nel giorno corrente ed eventuali dubbi. Questo aiuta la comunicazione interna del gruppo e consente un minimo allineamento interno giornaliero;
- Sprint planning: all'inizio di ogni sprint, guidati dal responsabile, definiamo cosa dovremo consegnare al termine del tempo programmato e predisponiamo il repository GitHub con le #glossario[issue] necessarie per svolgere le attività individuate. Inoltre preventiviamo le ore che ognuno pensa saranno necessarie per portare a termine i propri compiti, informazioni che poi il responsabile inserisce nel piano di progetto;
- Sprint retrospective: avviene al termine dello sprint ed è finalizzata ad analizzare l'andamento dello sprint. Ispezionamo cosa non ha funzionato e cosa è andato bene per apprendere e migliorare. É anche un evento propedeutico allo sprint successivo in quanto volto a migliorare le performance future.

==== Milestone e sprint
Il progetto è suddiviso in periodi chiamati #glossario[milestone] e sprint. Tenendo conto della scelta di un modello agile, abbiamo definito questi due concetti:
- Milestone: rappresentano le revisioni di progetto. Ogni milestone, per essere raggiunta, richiede il completamento di periodi di tempo chiamati sprint;
- Sprint: periodi di lavoro con durata fissa, generalmente due settimane, in cui completiamo le attività pianificate rispettando le scadenze. La durata dello sprint è comune a tutto il gruppo e aiuta a mantenere disciplina e produttività. Variazioni sono consentite solo in alcuni casi e di comune accordo. Gli sprint sono definiti nel piano di progetto a cura del responsabile.

==== Issue
Utilizziamo le issue di GitHub per tracciare le attività da svolgere all'interno di ogni sprint.

===== Creazione <creazione>
Le issue vengono solitamente create dall'amministratore (ad eccezione di alcuni casi come lo sprint planning o un'elevata urgenza), specificando i seguenti attributi:
- Titolo: descrive in modo breve e conciso lo scopo della issue;
- Descrizione: breve spiegazione testuale di cosa dovrà essere fatto per poter portare a termine la issue, eventualmente anche con una checklist;
- Label: tag che identifica la categoria (esempi: Norme di progetto, Allenamento, Glossario, bug, fix). In caso di necessità può essere creata una nuova label;
- Project: GitHub Projects a cui la issue è associata. Se sono presenti delle dashboard (vedi @dashboard per approfondimenti) associate ad un progetto, le issue associate saranno visibili anche da lì;
- Priority: priorità della issue rispetto alle altre, scelta tra alta, media e bassa;
- Size: dimensione della issue in termini di giornate di lavoro, scelta tra XS, S, M, L, XL;
- Sprint: ad ogni issue associamo lo sprint in cui deve essere completata;
- Giorni previsti: giorni previsti per il completamento della issue, includendo la verifica;
- Milestone: alla issue associamo la milestone di riferimento.

Nel caso in cui una issue sia assegnabile fin da subito ad un membro del gruppo si procede completando anche il campo "Assignees". Se invece è una issue che potrebbe essere svolta da più individui perchè due o più persone svolgono lo stesso ruolo, allora si lascia il campo "Assignees" vuoto e gli interessati andranno a suddividersi le issue di competenza in separata sede. 

===== Ciclo di vita
Di seguito descriviamo il ciclo di vita di una issue:
1. L'amministratore (o chi di competenza) accede al repository GitHub e crea la issue seguendo quanto descritto in @creazione;
2. Accedendo poi alla dashboard di progetto sposta la issue dalla colonna "No Status" alla colonna "Sprint #glossario[Backlog]";
3. L'assegnatario, quando prende in carico la issue, deve svolgere le seguenti azioni:
  - accedere alla dashboard e spostare la issue nella colonna "In progress". In alternativa può cambiare lo stato della issue modificando il campo "Status";
  - inserire la data di inizio della issue;
  - inserire la stima del termine della issue.
4. Una volta che la issue è considerata terminata, l'assegnatario apre una Pull Request su GitHub scrivendo sulla descrizione close numero_issue e aggiornando lo stato della issue da "In progress" a "In review";
5. I verificatori seguono la procedura di verifica;
6. Se e quando l'esito della verifica è positivo, la issue viene ufficialmente spostata nella colonna "Done" della dashboard.

==== Board <dashboard>
Board è un sistema visivo che permette di organizzare e tracciare il progresso delle attività. La motivazione per cui abbiamo scelto questo sistema è che permette a tutti di avere una panoramica chiara ed immediata del lavoro, migliorando anche la comunicazione e la trasparenza. Possiamo facilmente individuare se ci sono delle attività bloccate e intervenire tempestivamente. Inoltre ci consente di visualizzare l'avanzamento delle issue in modo veloce ed intuitivo.

Per le motivazioni sopra descritte abbimo deciso di utilizzare gli strumenti di GitHub Projects, in particolare:
- GitHub Board: https://github.com/orgs/techminds-unipd/projects/1/views/1
  
  Dashboard suddivisa in 5 colonne che corrispondono alle fasi del ciclo di vita delle issue:
  - No Status: vengono inserite le issue che non hanno una particolare urgenza; solo una volta terminate le issue relative allo sprint verranno completate anche quelle presenti in questa colonna;
  - Sprint Backlog: presenta tutte le issue che devono essere completate entro fine sprint, organizzate in ordine di priorità;
  - In progress: raccoglie le issue che sono state iniziate ma non ancora terminate;
  - In review: raccoglie le issue che si trovano in revisione;
  - Done: raccoglie le issue terminate.
  Ogni membro del gruppo è tenuto a controllare frequentemente la dashboard per avere una panoramica della situazione dello sprint e a gestire le attività che ha preso in carico;

==== Diagrammi di Gantt
Per pianificare le attività di ogni sprint utilizziamo dei diagrammi di Gantt generati in Typst con la libreria timeliney. Il diagramma ha una riga per ogni issue dello sprint con relativa linea del tempo di fianco che indica con dei colori i tempi preventivati ed effettivi dell'attività.
Per ottenere i tempi effettivi di una issue abbiamo uno script #glossario[Python] che, utilizzando le #glossario[API] di GitHub, recupera la data di inizio della prima commit associata alla issue e la data di chiusura della Pull Request ad essa associata.
Queste due date precedentemente citate corrispondono alla data di inizio e di fine della issue, che pur non essendo sempre esatte sono una buona approssimazione della realtà.

==== Strumenti e tecnologie
Per la gestione dell'organizzazione delle attività ci siamo dotati dei seguenti strumenti/tecnologie:
- Ambiente GitHub: GitHub Projects, GitHub Boards.

== Gestione delle infrastrutture
La gestione delle infrastrutture ha lo scopo di stabilire e mantenere l'infrastruttura a supporo di qualsiasi altro processo. L'infrastruttura può includere: hardware, software, strumenti, tecniche, standard e strutture per lo sviluppo, il funzionamento o la manutenzione.

=== Attività
Secondo lo standard ISO/IEC 12207:1995 questo processo è formato dalle seguenti attività, che ci impegniamo a rispettare:
1. *Attuazione del processo*: definizione e documentazione dell'infrastuttura, tenendo in considerazione le procedure descritte per ogni attività e gli standard da adottare;
2. *Realizzazione dell'infrastruttura*: l'infrastuttura adottata deve essere installata, configurata o attuata (in base alla sua natura) in tempo per l'esecuzione del processo pertinente, tenendo conto dei suoi costi, della sicurezza e dell'eventuale spazio richiesto;
3. *Manutenzione dell'infrastruttura*: è importante che monitoriamo, manteniamo adatta e modifichiamo in caso di necessità l'architettura scelta, in modo da soddisfare i requisiti del processo in corso.

=== Strumenti e tecnologie
In questa sezione approfondiamo le tecnologie e gli strumenti che formano la nostra architettura a supporto dei processi organizzativi.

Elenco di tecnologie e strumenti:
- GitHub e strumenti annessi: piattaforma per il versionamento del codice, gestione di repository Git e gestione di un project attraverso GitHub Board;
- Telegram: app di messaggistica istantanea per chat di gruppo interne;
- Discord: piattaforma di comunicazione con chat vocali e testuali per scopi interni al gruppo;
- Ambiente condiviso di Google: suite collaborativa online per editing e condivisione di documenti in tempo reale;
- Slack: strumento di messaggistica aziendale utilizzato con il proponente;
- Microsoft Teams: piattaforma per collaborazione aziendale con chat e videochiamate utilizzata per le riunioni con il proponente;
- Gmail: servizio di posta elettronica di Google utilizzato per le comunicazioni con committente e proponente;
- Typst: linguaggio per creare documenti con formattazione avanzata, utilizzato per la redazione della documentazione e per la creazione di diagrammi, tabelle e grafici.

== Miglioramento del processo
Il miglioramento del processo ha lo scopo di stabilire, valutare, misurare, controllare e migliorare il processo del ciclo di vita del software (standard ISO/IEC 12207:1995).

=== Attività
Questo processo consiste nelle seguenti attività:
1. *Definizione del processo*: con l'organizzazione abbiamo definito una serie di processi organizzativi da applicare alle varie attività e la loro applicazione deve essere documentata;
2. *Valutazione del processo*: sviluppare, documentare ed applicare una procedura di valutazione del processo. Tale valutazione deve essere registrata. È necessario pianificare ed effettuare revisioni dei processi a intervalli regolari per garantire la loro continua idoneità ed efficacia alla luce dei risultati della valutazione;
3. *Miglioramento dei processi*: a seguito della valutazione e revisione del processo è fondamentale apportare gli eventuali miglioramenti che riteniamo necessari. La documentazione del processo deve essere aggiornata per rispecchiare il suo miglioramento. Inoltre è importante svolgere le seguenti azioni:
  - raccogliere dati storici, tecnici e di valutazione per ottenere una maggiore comprensione dei punti di forza e delle debolezze dei processi impiegati;
  - utilizzare l'analisi come feedback per migliorare i processi e raccomandare cambiamenti in una direzione più efficiente;
  - documentare i costi per il miglioramento dell'organizzazione.

=== Impegni per il miglioramento
Con lo scopo di adattarci alle esigenze dei vari processi, il gruppo si impegna a:
- Seguire costantemente il principio di miglioramento continuo durante ogni fase del progetto;
- Individuare in modo proattivo le attività, i ruoli e altre opportunità di miglioramento, cercando in caso nuove alternative;
- Condurre una retrospettiva alla fine di ogni sprint, andando quindi ad approfondire ogni aspetto che non ha funzionato e individuando le possibili aree di miglioramento;
- Attuare azioni correttive da implementare in modo immediato.

== Formazione del personale
L'acquisizione, la fornitura, lo sviluppo, il funzionamento o la manutenzione dei prodotti software dipendono in gran parte da personale esperto e qualificato. È importante che ognuno acquisisca una competenza adeguata per utilizzare le tecnologie scelte.

=== Attività
1. *Attuazione del processo*: analisi dei requisiti del progetto per individuare risorse e competenze necessarie, creazione di un piano di auto-formazione;
2. *Sviluppo del materiale di formazione*: ricerca e ordinamento di guide, manuali o mini-progetti di prova da mettere a disposizione di tutto il gruppo;
3. *Attuazione del piano di formazione*: realizzazione del piano di formazione.

Questo processo di formazione è importante si svolga per l'intera durata del progetto, ovviamente con obiettivi diversi di fase in fase. Per il primo sprint la formazione si è concentrata sullo studio delle tecnologie da utilizzare ed è stata organizzata nel seguente modo:
1. Attuazione del processo: abbiamo individuato, in accordo con il proponente, le tecnologie da studiare attraverso un approfondimento del capitolato. Abbiamo poi creato un piano di formazione;
2. Sviluppo del materiale di formazione: il proponente ci ha fornito delle risorse specifiche per ogni tecnologia e abbiamo trovato alcuni mini-progetti di prova per iniziare a prendere confidenza con le prime tecnologie;
3. Attuazione del piano di formazione: ogni individuo ha attuato il piano di formazione, contattando gli altri membri del gruppo in caso di dubbi. Inoltre, abbiamo partecipato a 3 corsi di formazione offerti dal proponente.
