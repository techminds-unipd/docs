#import "/template/template.typ": documento
#import "/template/template.typ": team

#set outline(depth: 2)
#show: documento.with(
  title: "Documento di studio dei capitolati",
  sommario: "Studio dei 9 capitolati proposti per il corso di Ingegneria del Software - Anno 2024/2025.",
  changelog: (
    "1.2", "05/11/2024", "Correzione degli errori tipografici, revisione stilistica di tutto il documento", team.L + linebreak() + team.C, team.G + linebreak() + team.M,
    "1.1", "05/11/2024", "Modifica posizione e struttura changelog", team.S, team.G + linebreak() + team.C,
    "1.0", "25/10/2024", "Prima versione", "Il gruppo Tech Minds", team.G + linebreak() + team.C
  )
)
#set list(indent: 1em)

= Introduzione

== Scopo del documento
Questo documento vuole fornire una panoramica dei capitolati presentati dalle aziende secondo il punto
di vista di ciascun componente del gruppo. Dopo le discussioni avvenute, la preferenza unanime è il
capitolato 3.

== Fonte dei documenti
I documenti di presentazione dei capitolati sono presenti nel #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/Capitolati.html")[sito del docente].

= Valutazioni

== #text("C1 - ArtificialQI (Zucchetti)", rgb("#f16610"))

=== Descrizione generale
Il proponente richiede di sviluppare un applicativo in grado di valutare le risposte generate da vari LLM,
al fine di poter visualizzare i risultati e comprendere il loro comportamento dato un set di domande
e risposte. Il tema alla base del capitolato fa riflettere sulla necessità di un modello potente come
"ChatGPT-4-turbo", dal numero di parametri molto alto, oppure se modelli con meno parametri siano
sufficienti per ottenere dei risultati accettabili.

=== Funzionalità obbligatorie richieste
- Archiviazione di una lista di domande e delle risposte attese;
- Programma di esecuzione del test che attraverso una API ponga le domande ad un programma esterno e ne registri la risposta;
- Programma di valutazione della correttezza/verosimiglianza delle risposte ricevute;
- Procedura di presentazione dei risultati dell’esecuzione del test;
- I punti precedenti devono essere integrati in un unico sistema che permetta di utilizzarli come parte di un insieme e non forniti come utility separate.

=== Funzionalità opzionali richieste
- Archiviazione dei risultati dei test;
- Confronto automatico tra run di test diversi;
- Archiviazione di set di domande/risposte;
- Gestione della configurazione delle chiamate alle API esterne.

=== Tecnologie da utilizzare
Non sono state proposte tecnologie specifiche all’interno della descrizione del capitolato. Tuttavia, in seguito ad un incontro da remoto con il proponente sono stati consigliati l’utilizzo di framework ampiamente diffusi, come React o Svelte, per evitare rallentamenti e problemi di incompatibilità.

=== Aspetti positivi
- Possibilità di fare ricerca per valutare se la risposta ottenuta dal programma chiamato via API sia effettivamente compatibile con la risposta attesa;
- Approfondire il tema degli LLM, molto diffuso al giorno d’oggi;
- Il progetto ha una parte centrale di esplorazione delle tecnologie.

=== Aspetti negativi e rischi
- Il punto principale del capitolato è lo sviluppo del programma di valutazione della correttezza / verosimiglianza delle risposte ricevute dei requisiti obbligatori, che a detta dello stesso proponente può essere complicato;
- L’azienda dà disponibilità per 3 appalti per i gruppi del primo lotto e altri 3 gruppi del secondo lotto, potrebbero dunque non essere tempestivi nelle risposte dato l’alto numero di gruppi da seguire.

=== Aiuto fornito dall'azienda
L’azienda si rende disponibile per incontri in presenza o remoto a seconda della volontà degli studenti. Potrà essere fornito un programma esterno che espone delle API da testare. Il proponente metterà a disposizione, su richiesta del gruppo, delle macchine su cui eseguire i modelli da testare.

=== Contatti avuti con l’azienda
Il gruppo ha fissato un colloquio informativo, sulla piattaforma Google Meet, per un approfondimento riguardo i temi del capitolato. Il proponente si è prontamente reso disponibile per rispondere a tutte le nostre domande. L’incontro è avvenuto il 21/10/2024 e il verbale è presente nell’#link("https://techminds-unipd.github.io/docs/candidatura/documenti_esterni/verbali/2024-10-21-Firmato.pdf")[omonima cartella].

=== Conclusione
La proposta dell’azienda Zucchetti non ci aveva colpito dopo la presentazione tenutasi in classe. Tuttavia, in seguito al colloquio di approfondimento, il gruppo ha compreso meglio la finalità del progetto, che è stato rivalutato in maniera positiva. Nonostante questo il gruppo non ritiene questo capitolato pienamente in linea con i propri interessi.

#linebreak()
#linebreak()

== #text("C2 - Vimar GENIALE", rgb("#f16610"))

=== Descrizione generale
Il progetto richiede di creare un applicativo dotato di un’interfaccia che permetta, grazie ad un LLM, di fare richieste in linguaggio naturale riguardanti le specifiche dei prodotti Vimar presenti nel sito web dell’azienda. Lo scopo dell'applicativo è facilitare la ricerca di informazioni da parte dei professionisti del settore e supportarli nell’installazione dei prodotti Vimar.

=== Funzionalità obbligatorie richieste
L’azienda richiede di realizzare un’infrastruttura cloud-ready che contenga un applicativo web responsive per l’utente finale e un applicativo server per la gestione dei dati, con documentazione annessa.
In particolare:
- L'applicativo web:
    - deve essere responsive e funzionare su smartphone, tablet e desktop via browser;
    - deve avere un sistema di conversazione libera in lingua italiana;
    - deve avere un sistema di feedback da parte dell’utente sulla risposta ottenuta;
    - deve avere una seziona protetta dedicata agli amministratori.
- L'applicativo server:
    - deve avere un sistema di estrazione e raccolta dati dal sito web dell’azienda (obbligatori prodotti impianto Smart e Domotico);
    - deve avere un sistema di indicizzazione dei dati raccolti;
    - deve avere un componente di interrogazione che si interfacci con il sistema di indicizzazione e il modello AI (LLM open source).
L'infrastruttura cloud-ready:
    - deve avere un componente per l’applicativo web che si interfacci con l’applicativo server;
    - deve utilizzare la tecnologia container;
    - deve essere realizzata con il principio IaC (Infrastructure as Code).

L’azienda inoltre richiede l’implementazione di test di unità, d'integrazione ed end-to-end basati sui requisiti, con una copertura almeno del 75% per i primi due e almeno dell’80% per il terzo.

=== Funzionalità opzionali richieste
Per l’applicativo web è opzionale implementare un sistema di conversazione guidata, un sistema di suggerimenti per domande successive e la visione delle fonti usate per le risposte attraverso dei link di riferimento. Nell’applicativo server si possono aggiungere un controllo sull’output del componente di interrogazione e la possibilità di estendere il database con i prodotti per un impianto tradizionale.
Una caratteristica opzionale per l’infrastruttura è la sua realizzazione su AWS.

=== Tecnologie da utilizzare
- Docker per l’infrastruttura cloud;
- Git per il versionamento del repository di lavoro;
- LLM per il componente di interrogazione.

Altri suggerimenti da parte dell’azienda:
- Flask, Angular, VueJS (applicativo web responsive);
- Python;
- Scrapy, OCRmyPDF (estrazione dati sito web);
- PostgreSQL, TimescaleDB, InfluxDB (database);
- Llama 3.1, Mistral, Bert, Phi (LLM open source).

=== Aspetti positivi
- Buona disponibilità da parte dell’azienda sia in ambito formativo sia nel controllo dell’avanzamento del progetto;
- Capitolato chiaro ed esaustivo;
- Possibilità di interfacciarsi con un ampio insieme di tecnologie.

=== Aspetti negativi e rischi
- Tema comune ad altri capitolati proposti.

=== Aiuto fornito dall'azienda
L’azienda fornisce la possibilità di organizzare molti incontri, in particolare un SAL (Stato Avanzamento Lavori) bisettimanale di un’ora, che può diventare settimanale di mezz’ora. Possono essere fissate altre riunioni per approfondire le tecnologie utilizzate nel progetto. Vengono inoltre richiesti almeno due incontri in presenza con il gruppo per la consegna dei materiali e il collaudo della soluzione.

=== Contatti avuti con l’azienda
L’azienda è stata contattata via email per alcuni dubbi sulle funzionalità presentate nel capitolato, che alla fine si sono rivelati essere solamente altre funzionalità opzionali.

=== Conclusione
Nonostante i vari aspetti positivi il gruppo ha preferito optare per un capitolato con un tema più ricercato.

#linebreak()
#linebreak()

== #text("C3 - Automatizzare le routine digitali (Var Group)", rgb("#f16610"))

=== Descrizione generale
Vargroup propone di costruire un software che, sfruttando l’intelligenza artificiale generativa, sia in grado di automatizzare alcune delle azioni che gli utenti compiono quotidianamente negli applicativi che saranno supportati. Un utente può creare un workflow selezionando i blocchi di interesse e collegandoli tramite un’interfaccia drag and drop. Ogni collegamento corrisponde a un'automazione descritta in linguaggio naturale che sarà interpretata dal modello.

=== Funzionalità obbligatorie richieste
- Creazione di un client per disegnare i flussi di automazione su piattaforma Windows e/o Mac;
- Tale client deve essere dotato di un’interfaccia drag and drop e di un’interfaccia conversazionale per la definizione delle automazioni;
- Creazione di almeno tre blocchi di automazione;
- Creazione di un’infrastruttura cloud su AWS e integrazione con il client;
- Individuazione dei limiti e dei difetti della soluzione sviluppata;
- Documentazione;
- Bug reporting;
- Implementazione di test automatici con una copertura almeno del 70%;
- Sviluppo dell’applicativo con un’architettura modulare per consentire un’estensione futura della documentazione.

=== Funzionalità opzionali richieste
Non sono richieste esplicitamente funzionalità opzionali.

=== Tecnologie da utilizzare
Il proponente richiede l’utilizzo delle seguenti tecnologie:

- Sviluppo del client:
    - Python o C\# su Windows, Swift e Swift UI su MacOS;
    - MongoDB o altro database locale;
    - React per lo sviluppo di una webapp.

- Sviluppo delle API cloud:
    - NodeJS;
    - Python;
    - Typescript.

=== Aspetti positivi
- Progetto interessante e che può avere un impatto positivo nelle attività lavorative e nella vita privata;
- Utilizzo di diverse tecnologie molto diffuse;
- Opportunità di formazione in azienda sulle tecnologie impiegate;
- Apprendimento del design thinking tramite una sessione guidata;
- Il progetto è la giusta combinazione fra sviluppo e innovazione;
- Più membri del gruppo sono interessati all’apprendimento di AWS.

=== Aspetti negativi e rischi
- Progetto esplorativo volto a riconoscere i limiti delle tecnologie in tale ambito;
- L’utilizzo proficuo e consapevole di AWS richiede una buona conoscenza dello strumento.

=== Aiuto fornito dall'azienda
L’azienda si è resa disponibile a concordare il piano di controllo dello stato di avanzamento del progetto. Inoltre, si è offerta di pianificare un percorso formativo sulle tecnologie più complesse.
Vargroup ha pianificato di svolgere un’attività di design thinking con il gruppo e di fornire esempi su come creare i requisiti di business.

=== Contatti avuti con l’azienda
Il gruppo ha fissato un colloquio informativo, sulla piattaforma Google Meet, per un approfondimento riguardo i temi del capitolato. Il proponente si è prontamente reso disponibile per rispondere a tutte le nostre domande. L'incontro è avvenuto il 24/10/2024 e il verbale con le domande è disponibile nell'#link("https://techminds-unipd.github.io/docs/candidatura/documenti_esterni/verbali/2024-10-24-Firmato.pdf")[omonima cartella].

=== Conclusione
A prima vista il progetto ha affascinato tutti i membri del gruppo ma, allo stesso tempo, ha sollevato dei dubbi circa la sua complessità. Il colloquio con Vargroup è stato fondamentale sotto questo frangente ed è riuscito a rassicurare il gruppo rispetto alla fattibilità del progetto. In particolare, il gruppo apprezza la volontà dell’azienda di proporre un progetto innovativo ed esplorativo, volto anche a individuare i limiti dell’applicativo da sviluppare.

#linebreak()
#linebreak()

== #text("C4 - NearYou (Sync Lab)", rgb("#f16610"))

=== Descrizione generale
Il proponente richiede la creazione di un sistema software che si occupi della creazione di campagne pubblicitarie mirate, sfruttando un LLM. Per farlo viene chiesto di implementare una piattaforma che riesca a gestire flussi continui di dati di geolocalizzazione e comportamentali degli utenti. Lo scopo è far aumentare il valore della pubblicità percepito per gli inserzionisti, consentendo loro di avere una maggiore precisione nel targeting.

=== Funzionalità obbligatorie richieste
- Simulatori di dati geospaziali;
- Configurazione del database con storicizzazione dei dati;
- Implementazione di un tool per lo stream processing di più sorgenti;
- Implementazione di un LLM per generare gli annunci;
- Sviluppo di una dashboard per visualizzare i dati;
- Web-app che simula un utente che segue un percorso e riceve gli annunci pubblicitari;
- Test che dimostrino il corretto funzionamento dei servizi;
- Presenza di documentazione.

=== Tecnologie da utilizzare
Il proponente non ha imposto vincoli stretti sulle tecnologie da usare, ma ha solamente elencato i tipi di software che è necessario utilizzare:
- Framework per la simulazione dei dati;
- Broker per gestire lo stream come MQTT;
- Strumento per lo stream processing che preleva i dati per consegnarli al LLM;
- Strumento per processare le richieste tramite LLM;
- Database capace di elaborare dati geospaziali;
- Strumenti per la data visualization come Grafana;

=== Aspetti positivi
- Uso di tecnologie non ancora studiate come lo stream processing e l’elaborazione di dati geospaziali;
- Il proponente si rende disponibile a incontri, anche formativi, per guidare il gruppo.

=== Aspetti negativi e rischi
- Il progetto vuole fare uso di molte tecnologie, costringendo a uno studio superficiale di tutte;
- Il progetto ha una complessità molto alta e richiede la consegna di sette componenti. È molto probabile che non si riesca a completarlo nel tempo a disposizione;
- L’argomento del progetto non stimola l’interesse dei componenti del gruppo.

=== Aiuto fornito dall'azienda
L’azienda propone degli incontri di revisione dello stato di avanzamento. In particolare possono essere del tipo:
- Analisi dei requisiti;
- Formazione;
- Verifica dello stato di avanzamento dei lavori;
- Dimostrazione di una live demo del prodotto.

=== Contatti avuti con l’azienda
L'azienda è stata contattata via email per richiedere chiarimenti sulle modalità di presentazione degli annunci, in particolare se fosse necessario sviluppare una web-app. Ci è stato risposto che il focus principale del progetto non risiede nella modalità di visualizzazione, sebbene questa sarà cruciale nel prodotto finale. In ogni caso, l'azienda propone di concordare l'utilizzo di applicativi che permettano una visualizzazione pronta all'uso.

=== Conclusione
Abbiamo apprezzato l’impegno di cui si fa carico SyncLab per formare i componenti del gruppo, tuttavia riteniamo che la proposta non sia adatta a noi dati gli aspetti negativi evidenziati nella sezione 2.4.5.

#linebreak()
#linebreak()

== #text("C5 - 3Dataviz (Sanmarco Informatica)", rgb("#f16610"))

=== Descrizione generale
Il progetto chiede di realizzare un'interfaccia web per la visualizzazione in forma
tridimensionale di dati tramite barre verticali (istogramma 3D) con i relativi dati di origine in forma tabulare.

=== Funzionalità obbligatorie richieste
- Il grafico dovrà avere le funzioni classiche di un ambiente 3D (rotation, zoom, pan, auto-positioning);
- Possibilità di selezionare un elemento del grafico (barra) o una cella della griglia e di nascondere / opacizzare le barre con i valori superiori o inferiori al valore della barra selezionata;
- Lasciare come unici elementi visibili / non opacizzati i top X / bottom Y valori;
- Possibilità di visualizzare il piano parallelo alla base, che rappresenta il valore medio globale e nascondere / opacizzare le barre con i valori superiori o inferiori al valore medio;
- Visualizzare i valori corrispettivi alla barra.

=== Funzionalità opzionali richieste
- Poter visualizzare il piano parallelo alla base che rappresenti il valore medio di un singolo elemento dell’asse (x o y);

=== Tecnologie da utilizzare
- Three.js;
- D3js;
- Angular;
- React.

=== Aspetti positivi
- Tema particolare rispetto agli altri capitolati proposti;
- Unico capitolato che tratta il 3D.

=== Aspetti negativi e rischi
- Poco supporto nella fase di sviluppo da parte dell’azienda;
- Le conoscenze da acquisire vengono considerate dal gruppo meno interessanti rispetto a quelle degli altri capitolati.

=== Aiuto fornito dall'azienda
L'azienda fornirà un supporto maggiore nelle fasi di analisi dei requisiti e progettazione mentre durante la fase di implementazione sarà disponibile solo in caso di eventuali difficoltà. In generale verranno fissati degli incontri periodici per monitorare l'avanzamento del progetto.

=== Contatti avuti con l’azienda
Il gruppo ha richiesto un colloquio informativo da remoto, su piattaforma Google Meet. Il verbale relativo all'incontro del 18/10/2024 è presente nell'#link("https://techminds-unipd.github.io/docs/candidatura/documenti_esterni/verbali/2024-10-18-Firmato.pdf")[omonima cartella] nella repository.

=== Conclusione
Sebbene a primo impatto il progetto abbia colto l'interesse generale dei membri, il gruppo ha optato per un capitolato differente in seguito ai colloqui avuti con le aziende. Tale scelta è stata dettata dal fatto che le tecnologie da utilizzare in altri capitolati sono risultate più interessanti e utili a scopo didattico.

#linebreak()
#linebreak()

== #text("C6 - Sistema di gestione di un magazzino distribuito (M31)", rgb("#f16610"))

=== Descrizione generale

=== Funzionalità obbligatorie richieste

=== Funzionalità opzionali richieste

=== Tecnologie da utilizzare

=== Aspetti positivi

=== Aspetti negativi e rischi

=== Aiuto fornito dall'azienda

=== Contatti avuti con l’azienda

=== Conclusione

== #text("C7 - LLM: Assistente virtuale (Ergon)", rgb("#f16610"))

=== Descrizione generale

=== Funzionalità obbligatorie richieste

=== Funzionalità opzionali richieste

=== Tecnologie da utilizzare

=== Aspetti positivi

=== Aspetti negativi e rischi

=== Aiuto fornito dall'azienda

=== Contatti avuti con l’azienda

=== Conclusione

== #text("C8 - Requirement Tracker - plugin VSCode (Bluewind)", rgb("#f16610"))

=== Descrizione generale

=== Funzionalità obbligatorie richieste

=== Funzionalità opzionali richieste

=== Tecnologie da utilizzare

=== Aspetti positivi

=== Aspetti negativi e rischi

=== Aiuto fornito dall'azienda

=== Contatti avuti con l’azienda

=== Conclusione

== #text("C9 - BuddyBot (Azzurrodigitale)", rgb("#f16610"))

=== Descrizione generale

=== Funzionalità obbligatorie richieste

=== Funzionalità opzionali richieste

=== Tecnologie da utilizzare

=== Aspetti positivi

=== Aspetti negativi e rischi

=== Aiuto fornito dall'azienda

=== Contatti avuti con l’azienda

=== Conclusione