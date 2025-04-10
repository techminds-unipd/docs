#import "/template/template.typ": glossario
= Processi di supporto
I processi di supporto rappresentano un insieme di attività trasversali che aiutano a garantire la qualità e l'efficacia dei processi attivi durante lo sviluppo software. Le attività descritte all'interno di questa sezione seguono un processo di adattamento e miglioramento in base alle esigenze che sorgono e alla necessità di garantire qualità.

== Documentazione
La documentazione è l'insieme di tutte le informazioni utili al gruppo raccolte sotto forma di testo, diagrammi o immagini.

Secondo lo standard ISO/IEC 12207:1995, il processo di documentazione è un processo finalizzato alla registrazione delle informazioni prodotte da un processo o attività del ciclo di vita del software.

=== Attività
Questo processo comprende un insieme di attività che pianificano, progettano, sviluppano, producono, modificano, distribuiscono e mantengono i documenti necessari per tutte le parti coinvolte nel progetto. 

In particolare lo standard definisce quattro attività principali:
+ *Implementazione del processo*: definisce un piano per identificare i documenti da produrre durante il ciclo di vita del software e stabilisce gli aspetti che ogni documento deve contenere;
+ *Progettazione e sviluppo*: definisce la struttura del documento e l'origine delle informazioni da includere al suo interno. Crea e sviluppa del contenuto in base agli standard definiti;
+ *Produzione*: produce e distribuisce il documento finale nel formato prestabilito; 
+ *Manutenzione*: aggiorna il documento nel tempo in modo che sia sempre accurato e pertinente.

Per la natura di questo progetto, la prima e ultima attività non verranno svolte interamente.

=== Filosofia "Docs as code" <docsascode>
Abbiamo scelto di usare la filosofia "Docs as code" che si prescrive di trattare tutta la documentazione come se fosse del vero e proprio codice sorgente. \ Questo porta i seguenti vantaggi:
+ Supporto agli #glossario[issue tracking system]\;
+ Controllo di versione con #glossario[git]\;
+ Processi di revisione del codice;
+ Test e #glossario[integrazione continua].

=== Organizzazione dei documenti
- Nomi dei file: i file iniziano sempre con lettera minuscola o con una data del tipo yyyy-mm-dd[-info] nel caso di #glossario[verbali] (info è un campo opzionale che contiene informazioni aggiuntive);
- Organizzazione delle cartelle: nel caso in cui il documento sia composto da più file, questi sono contenuti in una cartella chiamata ```/include```;
- Elenchi: in tutti gli elenchi e sottoelenchi gli elementi terminano con ";" tranne l'ultimo che termina con ".". Inoltre la prima lettera di ogni punto deve essere maiuscola, mentre se si tratta di un sottoelenco deve essere minuscola;
- Sezioni: viene seguita la convenzione di Typst, ovvero la sezione principale avrà un numero "X" e tutte le sottosezioni aggiungeranno ricorsivamente un altro ".X";
- Figure: ogni figura deve essere dotata di caption che ne spieghi brevemente il contenuto;
- Tabelle: ogni tabella deve essere dotata di caption che ne spieghi il contenuto;
- Termini nel glossario: si evidenziano le parole presenti nel glossario solamente nelle loro prime occorrenze nel documento;
- Link: quando un link viene inserito come risorsa da consultare, deve essere indicata la data dell'ultima volta in cui la risorsa è stata visitata (nel formato [visitato il: dd/mm/aaaa]). Se invece un link porta ad un documento con ciclo di vita, è necessario inserirne la versione (nel formato [versione X.Y.Z]). Per i link relativi alle #glossario[issue] non vale quanto appena descritto. I link possono essere scritti:
  - per esteso: il link deve essere cliccabile e portare alla risorsa;
  - come testo cliccabile: deve essere aggiunta una footnote con il link per esteso.

=== Struttura dei documenti
L'impaginazione e la struttura generale dei documenti è descritta nel file #raw("template.typ"). \ Tutti i documenti sono sempre divisi in almeno queste parti:
+ Intestazione:
  - logo;
  - mail del gruppo;
  - nome del documento;
  - sommario (breve descrizione del contenuto del documento).
+ Changelog, tabella che contiene tutti i cambiamenti effettuati al documento:
  - versione del documento;
  - data della modifica nel formato gg/mm/aaaa;
  - autore della modifica;
  - verificatore.
+ Indice;
+ Lista delle figure;
+ Contenuto.

==== Struttura dei verbali
I verbali hanno informazioni aggiuntive oltre a quelle descritte precedentemente. Tali informazioni sono già presenti nella funzione #raw("verbale") presente file #raw("template.typ"). Invocando la funzione e impostando i parametri indicati è possibile ottenere un verbale già formattato.
- Nei verbali interni vengono aggiunti:
  + partecipanti;
  + data, ora e luogo;
  + ordine del giorno;
  + riassunto con le decisioni prese.
- Nei verbali esterni vengono aggiunti:
  + tutte le informazioni dei verbali interni;
  + lo spazio per la firma di chi non fa parte del gruppo.
- Scelte tipografiche specifiche dei verbali:
  - tutti gli elenchi fuori dalla sezione \"Riassunto\" non vanno chiusi;
  - i termini presenti del glossario presenti nei verbali verranno evidenziati dalla sezione "Contenuto della riunione" in poi.

=== Sito web <sito-web>
Utilizziamo un sito web per esporre pubblicamente la nostra documentazione, in modo da fornire un'interfaccia più adatta ad un pubblico non tecnico. Il sito (https://techminds-unipd.github.io/docs) è generato automaticamente con delle #glossario[GitHub Actions]. Ogni volta che avviene un cambiamento nel #glossario[branch] main tutti i documenti vengono compilati e poi viene generata una pagina web che sarà messa online dalla action delle GitHub Pages.

=== Strumenti e tecnologie
Il team ha scelto di usare le seguenti tecnologie per redigere i documenti:
- #glossario[Typst]: linguaggio simile a #glossario[LaTeX] ma che permette di comporre documenti in modo più semplice e intuitivo.

== Gestione della configurazione
La gestione della configurazione è un #glossario[processo] fondamentale per monitorare e controllare le modifiche ai componenti software durante il loro ciclo di vita. Il prodotto SW non è mai un monolite, infatti è composto da più componenti, ognuno dei quali è caratterizzato da un proprio ciclo di vita. Ogni singolo componente ha una storia individuale che viene gestita tramite controllo di versione, che aiuta a non perdere traccia di questa storia e a poter avanzare o retrocedere nelle versioni. Il processo di gestione della configurazione, dunque, aiuta a mantenere la coerenza e l'integrità del software, facilitando la collaborazione tra i membri del team.

=== Attività
Secondo lo standard ISO/IEC 12207:1995, questo processo include le seguenti attività:
+ *Implementazione del processo*: definisce un piano per la gestione della configurazione, che descrive le varie attività e l'organizzazione di queste attività;
+ *Identificazione della configurazione*: definisce uno schema per l'identificazione degli elementi relativi al progetto e delle loro versioni;
+ *Controllo della configurazione*: gestisce le richieste di modifica e il loro tracciamento;
+ *Registrazione dello stato della configurazione*: prepara i registri di gestione, i quali mostrano lo stato e la storia completa degli elementi relativi al progetto;
+ *Valutazione della configurazione*: valuta la completezza degli elementi relativi al progetto rispetto ai requisiti;
+ *Gestione e consegna delle versioni*: assicura che tutte le versioni degli elementi software e della documentazione siano correttamente gestite, conservate e distribuite in modo tracciabile.

=== Versionamento (Identificazione della configurazione)
La procedura di versionamento in un progetto software è fondamentale per gestire le modifiche e garantire la collaborazione tra sviluppatori. In ogni documento è possibile trovare, prima ancora dell'indice, un registro delle modifiche (changelog), necessario per comprenderne il ciclo di vita dal suo concepimento fino all'ultima versione disponibile. All'interno del changelog si fa riferimento alla versione del documento rappresentato da un numero di versione così composto: \
#align(center, block[
  #set align(center)
  vX.Y.Z \
])

spiegazione:
- X rappresenta la versione principale (#glossario[major version]), che cambia con aggiornamenti significativi o modifiche radicali;
- Y indica la sottoversione (#glossario[minor version]), che viene aggiornata per miglioramenti o nuove funzionalità non critiche;
- Z è il numero di #glossario[patch], utilizzato per correzioni di bug o piccole modifiche.
\
All'interno del codice non è presente un vero e proprio changelog, in questo caso l'intero versionamento del codice viene gestito dal software git sulla piattaforma #glossario[GitHub].

=== Gestione repository (Controllo della configurazione e registrazione dello stato) <gestione-AgentFlow>
//#glossario[mvp]
Il team ha creato due #glossario[repository] all'interno dell'organizzazione GitHub:
- #link("https://github.com/techminds-unipd/docs")[docs] #footnote(link("https://github.com/techminds-unipd/docs")), che contiene tutta la documentazione del progetto;
- #link("https://github.com/techminds-unipd/AgentFlow")[AgentFlow] #footnote(link("https://github.com/techminds-unipd/AgentFlow")), che contiene il codice sorgente del #glossario[MVP] realizzato durante il progetto.

==== Repository docs
*Organizzazione dei file*

La repository docs contiene solamente i sorgenti di Typst in formato #text(".typ", style: "italic"), ad eccezione dei verbali esterni firmati dal proponente che sono in formato #text(".pdf", style: "italic"), dato che non devono essere modificabili.#linebreak()
Le cartelle sono organizzate come segue:
- *.github* contiene gli script per l'analisi statica, per la generazione dei documenti PDF a partire dai file di Typst e per la creazione del sito;
- *candidatura* organizza i sorgenti dei documenti redatti per la candidatura in:
  - *documenti_esterni*, che contiene a sua volta:
    - *presentazione_candidatura*, con all'interno la dichiarazione degli impegni, la lettera di presentazione e lo studio dei capitolati;
    - *verbali*, con all'interno i sorgenti dei verbali esterni e, nella sottocartella firmati, la loro versione firmata.
  - *documenti_interni*, che contiene i verbali interni nell'unica sottocartella verbali.
- *PB* organizza i sorgenti dei documenti redatti per la #glossario[Product Baseline] in:
  - *documenti_esterni*, al cui interno si trova il sorgente della lettera di presentazione per la PB e una cartella per ogni documento che sarà fornito al proponente:
    - *analisi_requisiti* contiene i sorgenti del documento di analisi dei requisiti;
    - *manuale_utente* contiene i sorgenti del manuale utente;
    - *piano_progetto* contiene i sorgenti del piano di progetto;
    - *piano_qualifica* contiene i sorgenti del piano di qualifica;
    - *specifica_tecnica* contiene i sorgenti del documento di specifica tecnica;
    - *verbali* contiene i verbali esterni redatti dalla RTB alla PB.
  - *documenti_interni*, al cui interno si trovano, raggruppati in sottocartelle, i sorgenti dei documenti rivolti ai membri del team:
    - *glossario* contiene i sorgenti del glossario;
    - *norme_progetto* contiene i sorgenti delle #glossario[norme di progetto];
    - *verbali* contiene i sorgenti dei verbali interni redatti dalla RTB alla PB.
- *RTB* organizza i sorgenti dei documenti redatti per la #glossario[Requirements and Technology Baseline] in:
  - *documenti_esterni*, al cui interno si trova il sorgente della lettera di presentazione per la RTB e una cartella per ogni documento che sarà fornito al proponente:
    - *analisi_requisiti* contiene i sorgenti del documento di analisi dei requisiti;
    - *piano_progetto* contiene i sorgenti del piano di progetto;
    - *piano_qualifica* contiene i sorgenti del piano di qualifica;
    - *verbali* contiene i verbali esterni redatti dalla candidatura alla RTB.
  - *documenti_interni*, al cui interno si trovano, raggruppati in sottocartelle, i sorgenti dei documenti rivolti ai membri del team:
    - *glossario* contiene i sorgenti del glossario;
    - *norme_progetto* contiene i sorgenti delle #glossario[norme di progetto];
    - *verbali* contiene i sorgenti dei verbali interni redatti dalla candidatura alla RTB.
- *template* contiene il template per i documenti, i file necessari alla generazione del sito e i loghi usati nel sito e nei documenti.
Inoltre, all'interno della repository si trova un file README.md in cui è descritta la struttura delle cartelle. 

*Struttura dei branch e flusso di lavoro*

La struttura dei branch della repository docs è composta da:
- *main*: è il ramo predefinito dove risiede la versione stabile del prodotto, su questo branch è stata impostata una regola di protezione per evitare che venga introdotto del codice non funzionante o non approvato;
- *Branch di feature* creati secondo la pratica #glossario[GitHub Flow].

Il gruppo ha deciso di utilizzare il flusso di lavoro GitHub Flow; un flusso semplice e leggero, considerato ideale dal nostro team per lo sviluppo della documentazione. Si compone di cinque fasi principali:
	1.	*Creare un branch di feature*: iniziare creando un nuovo branch dal main per lavorare su nuove funzionalità senza influenzare il codice principale;
	2.	*Modificare i file nel nuovo branch*: effettuare modifiche e aggiungere #glossario[commit] per tenere traccia dei progressi;
	3.	*Creare una #glossario[Pull Request]*: una volta effettuati i commit e il #glossario[push], aprire una pull request per avviare la revisione del codice;
	4.	*Unire la Pull Request*: dopo la revisione, unire il branch al main facendo il merge;
	5.	*Eliminare il branch*: infine, eliminare il branch di feature per mantenere la repository pulita.

Inoltre, per la repository della documentazione è disponibile una pagina web statica ospitata da #glossario[GitHub Pages], che permette di visionare tutti i documenti appartenenti alla documentazione generati attraverso delle GitHub Actions (vedi @sito-web per maggiori informazioni).

==== Repository AgentFlow
*Organizzazione dei file*

La repository AgentFlow contiene solamente il codice sorgente del MVP.#linebreak()
Le cartelle sono organizzate come segue:
- *.github* contiene gli script per la #glossario[Build Automation];
- *agente* contiene il file requirements.txt per la gestione delle dipendenze con #glossario[PIP], il file per il container #glossario[Docker] dell'agente e le sottocartelle:
  - *src* per il codice sorgente;
  - *test* per il codice dei test.
- *backend* contiene i file per #glossario[ESLint], per #glossario[Node.js], per il container Docker del backend, per Nest e #glossario[TypeScript] e le sottocartelle:
  - *src* per il codice sorgente;
  - *test* per il codice dei test.
- *frontend* contiene i file per #glossario[ESLint], per Node.js, per il container Docker del frontend, per #glossario[Vite], Cypress, TypeScript e le sotto-cartelle:
  - *cypress* per i #glossario[test di sistema]\;
  - *src* per il codice sorgente, i test di unità e i #glossario[test di integrazione].
Inoltre, all'interno della repository si trova un file README.md in cui sono descritti i comandi per il setup del progetto e il deploy dell'applicazione.

*Struttura dei branch e flusso di lavoro*

Per l'organizzazione di questa repository il team ha deciso di utilizzare i branch:
- *main*: il branch predefinito dove risiede il codice in produzione;
- *dev*: il branch in cui risiedono le feature sviluppate che non sono state necessariamente rilasciate in produzione;
- *Branch di feature*, creati a partire da dev per lo sviluppo di una feature.

Il gruppo ha deciso di utilizzare un flusso di lavoro articolato come segue:
- *Sviluppo di una feature*:
	1.	*Creazione di un branch di feature*: creare un branch da dev su cui lavorare per lo sviluppo di una nuova funzionalità;
	2.	*Modifica dei file nel nuovo branch*: effettuare modifiche e aggiungere commit per tenere traccia dei progressi;
	3.	*Creazione di una Pull Request*: una volta sviluppata la funzionalità, effettuando i commit e il push, aprire una pull request per avviare la revisione del codice;
	4.	*Merge della Pull Request*: dopo la revisione, fare il merge del branch di feature in dev;
	5.	*Eliminazione il branch*: eliminare il branch di feature per mantenere la repository pulita.
- *Deploy dell'applicazione e release*:
	+	*Creazione di una Pull Request*: aprire una pull request per richiedere una revisione finalizzata al merge di dev in main;
	+	*Merge della Pull Request*: dopo la revisione, fare il merge.

=== Strumenti e tecnologie
Il team ha deciso di utilizzare il sistema di versionamento Git e la piattaforma #glossario[GitHub] per la gestione della configurazione.

== Accertamento della qualità
L'accertamento della qualità è un processo che ha lo scopo di garantire che il prodotto software soddisfi i requisiti concordati con il proponente e che sia conforme agli standard di qualità prefissati. Questo processo è fondamentale per garantire che il prodotto finale sia affidabile, sicuro e soddisfi le aspettative del cliente.

=== Attività
Secondo lo standard ISO/IEC 12207:1995, l'accertamento della qualità include le seguenti attività:
+ *Implementazione del processo*: definisce un piano per l'accertamento della qualità, che descrive metodologie, procedure e strumenti da utilizzare. È necessario definire anche il coordinamento con le attività di verifica e validazione;
+ *Garanzia di prodotto*: definisce le garanzie di qualità che il prodotto software deve soddisfare;
+ *Garanzia di processo*: definisce le garanzie di qualità che i processi di ciclo di vita del software devono soddisfare.

=== PDCA
Il ciclo #glossario[PDCA], noto anche come ciclo di Deming, è stato scelto come approccio per il miglioramento continuo di processi e prodotti, con l'obiettivo di attuare manutenzione migliorativa al proprio way of working. Per ottenere risultati concreti, è fondamentale seguire con attenzione le quattro fasi che lo compongono:

1. *Plan*: in questa fase si definiscono le attività necessarie per identificare quali processi avviare e in quale ordine, con l’obiettivo di raggiungere risultati specifici. Si stabiliscono obiettivi di miglioramento chiari e si progettano le azioni da intraprendere. Non riguarda pianificazione di progetto, ma bensì pianificazione di miglioramento;
2. *Do*: si passa all’azione, mettendo in pratica quanto pianificato. Durante l’esecuzione si raccolgono dati e si monitorano i risultati per valutare l’efficacia delle attività svolte. Non è sviluppo, ma dispiegamento (esplorativo) di azioni di miglioramento;
3. *Check*: qui si analizzano i dati raccolti nella fase di esecuzione, confrontandoli con gli obiettivi prefissati. Si utilizzano metriche specifiche per interpretare i risultati e individuare eventuali discrepanze o aree di miglioramento. Si verifica quindi l’esito delle azioni di miglioramento rispetto alle attese;
4. *Act*: sulla base delle valutazioni precedenti, si consolidano le pratiche che hanno prodotto risultati positivi, inserendole nel way of working. Si implementano poi azioni correttive per affrontare eventuali criticità. Si analizzano le cause dei problemi e si apportano miglioramenti, favorendo così un’evoluzione continua del processo.

Ogni ciclo PDCA rappresenta un’opportunità per raggiungere gli obiettivi di qualità fissati, creando un processo di miglioramento costante e progressivo.

=== Piano di qualifica
Il piano di qualifica è un documento che definisce le strategie e le metodologie che il team intende adottare per garantire la qualità del prodotto software. Al suo interno vengono fissati gli standard di qualità da rispettare, ovvero i valori accettabili e ottimali delle metriche individuate in norme di progetto (vedi @metriche). \
All'interno del piano di qualifica viene definito il cruscotto di controllo, che raccoglie un insieme di misurazioni per ogni metrica adottata, i dati rilevati da queste misurazioni poi vengono sottoposti a criteri di accettazione. Il cruscotto di controllo dunque consente di monitorare lo stato del progetto, rilevare problemi critici e prendere decisioni migliorative basate sui dati a disposizione. Relativamente alla qualità del software, il piano di qualifica raccoglie la specifica di tutti i test da effettuare con il relativo stato.

=== Struttura metriche di qualità
- *Codice:* identificativo univoco della metrica;
#align(center, block[
  #set align(center)
  M[PROC/PROD][numero]
])
dove:
#set list(indent: 1em)
- M: indica che si tratta di una metrica;
- PROC/PROD: indica se la metrica è relativa ai processi (PROC) o al prodotto (PROD);
- numero: numero progressivo della metrica.
#set list(indent: 0em)
- *Nome:* specifica il nome della metrica;
- *Descrizione:* breve descrizione della metrica;
//- *Scopo:* obiettivo della metrica;

//- *Formula:* formula matematica per il calcolo della metrica;
//- *Strumento:* strumento utilizzato per il calcolo della metrica;
- Relativi criteri di accettazione:
  - *Valore accettabile*: valore minimo accettabile della metrica per essere conforme agli standard di qualità stabiliti;
  - *Valore ottimale:* valore ideale della metrica;

=== Aggiornamento del cruscotto
Il cruscotto è realizzato usando Typst. Ogni volta che viene compilato, il documento riprende tutti i valori aggiornati degli sprint da una funzione apposita (definita in costi.typ nella directory contenente il piano di progetto).
I valori ottenuti vengono usati per calcolare le varie metriche, che saranno successivamente visualizzate attraverso dei grafici, sempre generati in Typst con la libreria CeTZ.
C'è da precisare che questa è una procedura semi-automatica, ad esempio alcuni dati per le metriche devono essere inseriti a mano ad ogni sprint.
I dati in questione riguardano l'indice di Gulpease, rischi non previsti e l'#glossario[Earned Value].

=== Strumenti e tecnologie
Il team ha deciso di utilizzare Typst per la redazione del piano di qualifica e per la generazione e la gestione del cruscotto in esso contenuto.

== Verifica e validazione
La verifica e la validazione sono due processi fondamentali per garantire la qualità e la correttezza del prodotto finale. La verifica viene eseguita su tutte le componenti del prodotto, siano esse documentazione o codice, durante tutta la durata del progetto, in modo tale da confermare che il lavoro svolto fino a quel momento sia corretto e rispetti gli standard prefissati. La validazione, invece, agisce solo a fine progetto, poiché si occupa di confermare che il prodotto finale nel suo complesso soddisfi le aspettative e i requisiti concordati con il proponente. La validazione rispecchia quindi l'insieme di tutte le verifiche effettuate durante il progetto, e per questo motivo la verifica è ciò che permette alla validazione di essere eseguita con successo.

=== Verifica

==== Attività
Lo standard ISO/IEC 12207:1995 definisce due attività principali:
+ *Implementazione del processo*, che include l'individuazione delle attività di ciclo di vita e dei prodotti software che è necessario verificare e la definizione di un piano per condurre tale verifica. Il piano deve essere sucessivamente implementato e i problemi riscontrati devono essere gestiti nell'ambito del processo di Risoluzione dei problemi (descritto nella @risoluzioneproblemi). Per ogni attività o prodotto, il piano deve includere:
  - le task da eseguire;
  - le risorse necessarie;
  - i metodi di verifica;
  - gli strumenti da utilizzare;
  - la pianificazione temporale;
  - le procedure per la condivisione dei risultati con gli stakeholder.
+ *Verifica*, che include le seguenti attività:
  - verifica della documentazione, considerando i criteri di completezza, correttezza e coerenza;
  - verifica dei processi, considerando l'adeguatezza dei processi selezionati e della loro implementazione rispetto alla natura del progetto e agli accordi con il proponente e il committente;
  - verifica dei requisiti, considerando i criteri di coerenza, fattibilità e testabilità;
  - verifica del design, considerando i criteri di correttezza, coerenza e tracciabilità rispetto ai requisiti;
  - verifica del codice, considerando i criteri di correttezza, tracciabilità rispetto al design e ai requisiti, testabilità e conformità agli standard di codifica.
La verifica può essere eseguita in due forme: analisi statica e analisi dinamica.

==== Analisi statica
L'analisi statica è una forma di verifica che non richiede l'esecuzione dell'oggetto di verifica e per questo può essere applicata a ogni componente del prodotto. Viene utilizzata per accertare il rispetto di regole di scrittura e di stile, l'assenza di difetti e la presenza di proprietà desiderate. Questa forma di verifica può essere eseguita tramite due modalità principali:
- Walkthrough: tecnica di lettura in cui l'oggetto in esame viene controllato nella sua totalità, senza svolgere una ricerca di un errore/proprietà specifica al suo interno, ad esempio la lettura di un documento per rilevare errori grammaticali. Questo tipo di esame è privo di assunzioni o presupposti;
- Inspection: tecnica di lettura in cui l'oggetto in esame viene controllato per verificare la presenza di difetti o proprietà specifiche, ad esempio la ricerca di termini particolari in un documento. L'esame è basato su presupposti e per questo permette una maggiore possibilità di automazione rispetto al Walkthrough.

==== Analisi dinamica
L'analisi dinamica è una forma di verifica che richiede l'esecuzione dell'oggetto di verifica e quindi può essere applicata solo a codice eseguibile. Viene utilizzata per accertare il corretto funzionamento dell'oggetto tramite test (prove), i quali verificano che l'oggetto produca i risultati attesi e individuano eventuali anomalie durante l'esecuzione. 
I test possono essere di vario tipo e per questo è necessario classificarli a seconda del loro scopo e del loro ambito di applicazione.

*Classificazione dei test*

Le tipologie di test principali sono, in ordine di esecuzione:
+ Test di unità: verificano il corretto funzionamento di singole unità di codice, come funzioni, metodi o classi. Poiché verificano piccole porzioni di codice, questi test devono essere eseguiti per primi, in modo tale da evitare l'introduzione di errori una volta che queste unità vengono integrate tra loro;
+ Test di integrazione: verificano il corretto funzionamento delle componenti integrate tra loro, con l'obiettivo di verificare che le unità funzionino correttamente anche una volta integrate;
+ Test di sistema: verificano il corretto funzionamento del sistema nel suo complesso, con l'obiettivo di verificare che il sistema soddisfi i requisiti software concordati con il proponente e stabiliti nel documento di analisi dei requisiti;
+ #glossario[Test di regressione]: verificano che le modifiche apportate al codice non abbiano introdotto difetti in altre parti del sistema prima funzionanti. Questi test vengono eseguiti ogni volta che viene apportata una modifica al codice e non sono altro che la ripetizione selettiva di test già eseguiti in precedenza;

Ogni test è composto da:
- *Codice test*, identificativo univoco del test nel formato
#align(center)[T[tipologia test][numero progressivo]]
#h(3%)dove tipologia test corrisponde a:
#list([_U_, test di unità;],[_I_, test di integrazione;],[_S_, test di sistema.],indent: 2.5em)
#h(3%)Nei test di unità e integrazione è presente un ulteriore campo [componente] che indica \ #h(3%)la componente testata, quindi in questi casi il codice test sarà nel formato 
#align(center)[T[tipologia test][componente][numero progressivo]]
#h(3%)dove componente corrisponde a:
#list([_B_ per backend;],[_F_ per frontend;],[_A_ per agente.],indent: 2.5em)
- *Descrizione*, breve descrizione del test, specifica o generale a seconda della tipologia di test descritto;
- *Stato test*, indica lo stato attuale del test, che può essere _S_ (superato), _F_ (fallito) o _NI_ (non implementato).

Nei test di sistema è presente un ulteriore campo *Requisito* che indica il requisito funzionale collegato a quello specifico caso di test.

*Implementazione dei test*

Il compito di implementare i test è assegnato al programmatore, che deve:
- Inserire il codice di riferimento del test presente nel piano di qualifica e una breve descrizione, in questo formato \"codice test - descrizione test\";
- Assicurarsi che il test raggiunga lo scopo desiderato verificando che passi o fallisca nei casi corrispondenti.

==== Processo di verifica <verifica>
In generale, il processo di verifica include le seguenti fasi:
+ *Apertura della pull request e assegnazione dei verificatori*: il redattore o sviluppatore apre una pull request per sottoporre il proprio lavoro a revisione, aggiungendo un titolo e una breve descrizione del lavoro svolto. Successivamente, assegna i due verificatori scelti durante la pianificazione dello sprint in corso. Se necessario, è possibile aggiungere un terzo verificatore o sostituire uno dei verificatori già assegnati;
+ *Conflitti*: se sono presenti conflitti con il ramo di destinazione, è compito del redattore risolverli prima di procedere con la verifica;
+ *GitHub Actions*: se sono presenti automazioni, queste vengono eseguite automaticamente una volta aperta la pull request. È compito del redattore verificare che tutte abbiano successo prima di procedere con la verifica. In caso di fallimento di una o più automazioni, il redattore deve correggere gli errori e ripetere l'operazione fino a quando tutte le automazioni non avranno esito positivo;
+ *Verifica*: ogni verificatore esegue un'attenta verifica del lavoro svolto, seguendo norme precise a seconda del tipo di lavoro sottoposto a revisione. In caso di errori o dubbi, il verificatore può richiedere modifiche al redattore, aggiungendo commenti che citino parti specifiche del lavoro, in modo da facilitare la discussione e l'eventuale correzione;
+ *Discussione*: se necessario, il redattore e i verificatori possono discutere le modifiche richieste o i dubbi tramite la sezione apposita della pull request. Quando un dubbio viene chiarito, è compito del redattore marcare la conversazione come risolta, in modo da mantenere ordine nelle conversazioni ancora aperte;
+ *Correzione*: il redattore apporta le modifiche richieste dai verificatori, se presenti, e richiede nuovamente la verifica. In caso di necessità o di correzioni banali, anche il verificatore può modificare il lavoro, in modo da velocizzare il più possibile questa fase. Questo processo può essere ripetuto più volte, fino a quando i verificatori non approvano la pull request;
+ *Chiusura della pull request*: una volta che tutti i verificatori hanno approvato la pull request, è loro compito apportare l'ultima modifica al changelog, in modo da tracciare il lavoro svolto. Successivamente la pull request viene chiusa e il ramo di feature viene unito al ramo destinazione, concludendo così il processo di verifica.

==== Verifica della documentazione
Ogni documento relativo al progetto deve essere sottoposto a verifica. Questo compito è affidato al verificatore, che esegue un'analisi statica tramite Walkthrough.

In generale, la verifica dovrà controllare i seguenti aspetti:
- Correttezza tecnica: le informazioni contenute nel documento devono essere accurate e basate su fonti attendibili;
- Coerenza: le informazioni contenute nel documento devono essere coerenti tra loro e con gli altri documenti;
- Chiarezza: il documento deve essere facilmente comprensibile, senza ambiguità o termini tecnici non spiegati;
- Conformità agli standard: il documento deve rispettare le norme stilistiche e strutturali prestabilite;
- Correttezza ortografica e grammaticale: il documento deve essere privo di errori ortografici e grammaticali.

La verifica si conclude quando almeno due verificatori hanno approvato il documento, che può quindi essere esposto pubblicamente all'interno della repository.

==== Verifica del codice
Il codice sorgente deve essere sottoposto a verifica per garantire che sia corretto e rispetti gli standard di codifica definiti. Questo compito è affidato al verificatore, il quale viene supportato da strumenti di analisi statica e dinamica: all'apertura di una pull request, vengono eseguite delle GitHub Actions che controllano la correttezza strutturale e sintattica del codice, tramite analisi statica, e successivamente la sua correttezza funzionale tramite suite di test automatizzati. \ 
Se i controlli vanno a buon fine il verificatore procede con l'analisi del codice, tramite Walkthrough o Inspection a seconda della complessità del codice. In caso di errori o dubbi, la verifica del codice segue le stesse fasi descritte in @verifica.

===== Strumenti e tecnologie
A supporto del verificatore, per il controllo di alcune norme strutturali nella documentazione, sono stati sviluppati degli script che effettuano un'analisi statica del documento mediante il metodo Inspection. Questi script vengono eseguiti automaticamente attraverso GitHub Actions, contribuendo a rendere la verifica il più efficace ed efficiente possibile.
Gli script in questione si occupano di controllare:
- che le parole da glossario siano ben indicate nei documenti;
- che tutti i documenti ottengano il punteggio accettabile per l'indice di Gulpease;
- che le parole presenti nel glossario siano in ordine alfabetico.

Riguardo la verifica del codice, gli strumenti utilizzati sono:
- Jest, per la scrittura e l'esecuzione dei test di unità e integrazione del backend;
- Vitest, per la scrittura e l'esecuzione dei test di unità e integrazione del frontend;
- Pytest, per la scrittura e l'esecuzione dei test di unità dell'agente;
- Cypress, per la scrittura e l'esecuzione dei test di sistema;
- ESLint, per il controllo della correttezza sintattica del codice TypeScript\;
- Pylint, per il controllo della correttezza sintattica del codice #glossario[Python]\;
- Prettier, per la formattazione automatica del codice secondo uno stile predefinito.

=== Validazione
Secondo lo standard ISO/IEC 12207:1995, la validazione è il processo che serve a determinare se i requisiti e il sistema/prodotto software finale, per come è stato costruito, soddisfano l'uso specifico previsto. Il prodotto finale deve quindi soddisfare tutti i requisiti concordati con il proponente e funzionare correttamente nel suo ambiente finale.

==== Attività
Lo standard definisce le seguenti attività per il processo di validazione:
+ *Implementazione del processo*, che include lo sviluppo e l'implementazione di un piano di validazione che includa:
  - i prodotti soggetti a validazione;
  - le attività di validazione da eseguire;
  - le risorse necessarie e le responsabilità;
  - la pianificazione temporale;
  - le procedure per la condivisione dei risultati con gli stakeholder.
+ *Validazione*, che include le seguenti task:
  - preparazione dei #glossario[test di accettazione], che devono essere coerenti con le richieste del capitolato;
  - esecuzione dei test di accettazione, che devono essere presentati al proponente per la validazione.

==== Test di accettazione e collaudo
I test di accettazione verificano che il prodotto finale soddisfi i requisiti utente concordati con il proponente. Sono gli ultimi test eseguiti prima del possibile rilascio del prodotto.

Sono identificati con:
- *Codice test*, identificativo univoco del test nel formato
#align(center)[TA[numero progressivo]]
dove "A" corrisponde ad "accettazione".

Tali test sono eseguiti durante il collaudo con la supervisione del proponente. 

== Revisioni congiunte
Secondo lo standard ISO/IEC 12207:1995, il processo di revisione congiunta ha l'obiettivo di valutare lo stato e i prodotti di un'attività di un progetto.
Tali revisioni congiunte si svolgono per tutta la durata del rapporto con il proponente. Questo processo può essere impiegato da tutte le parti coinvolte, dove una "parte revisionante" esamina una "parte revisionata".

=== Attività
Questo processo si compone delle seguenti attività:
+ Implementazione del processo;
+ Revisioni della gestione del progetto;
+ Revisioni tecniche.

=== Implementazione del processo <revisioni-congiunte-implementazione>
Vengono programmate delle revisioni con il proponente in cui rappresentiamo la parte revisionata, mentre il proponente rappresenta la parte revisionante. Oltre a concentrarsi sugli avanzamenti raggiunti, si discutono eventuali problematiche e le corrispettive azioni correttive necessarie.\
I risultati di tali revisioni sono poi documentati tramite i verbali esterni, i quali verranno firmati dalla parte revisionante per garantire l'approvazione di quanto revisionato e discusso.

Nella fase iniziale del progetto non sono stati svolti degli incontri di revisione in quanto il primo periodo è stato dedicato allo studio delle tecnologie e del capitolato. Sono però stati svolti degli incontri di formazione in presenza, offerti dal proponente. Dal periodo natalizio in poi invece vengono svolti degli incontri quando una delle due parti (noi in quanto gruppo o il proponente) lo ritengono necessario, ovvero quando sono stati raggiunti degli obiettivi di avanzamento considerevoli.\
All'inizio della #glossario[PB] è stato concordato con il proponente di effettuare delle riunioni periodiche l'ultimo giorno di ogni sprint fino alla fine del progetto. In queste riunioni viene mostrato ciò che è stato prodotto fino a quel momento e vengono chiariti gli eventuali dubbi che entrambe le parti potrebbero avere. Questo permette di mantenere un allineamento maggiore con il proponente e allo stesso tempo di ricevere dei feedback sul lavoro svolto.

== Risoluzione dei problemi <risoluzioneproblemi>
Il processo "Risoluzione dei problemi" mira ad analizzare e risolvere i problemi (incluse le non conformità), qualunque sia la loro natura o origine. Tali problemi possono essere scoperti durante l'esecuzione dello sviluppo, dell'operatività, della manutenzione o di altri processi. L'obiettivo è fornire un mezzo tempestivo, responsabile e documentato per garantire che tutti i problemi scoperti siano analizzati e risolti, riconoscendo le cause scatenanti.

Il processo di risoluzione dei problemi ha l’obiettivo di garantire un approccio rapido, responsabile e ben documentato per analizzare e risolvere le criticità riscontrate durante l’intero ciclo di vita del prodotto. Questo processo non si limita a gestire i problemi nell’immediato, ma punta anche a riconoscere eventuali tendenze e a comprendere le cause profonde delle non conformità, adottando misure preventive per evitarne il ripetersi in futuro.

L’intento principale è affrontare ogni problematica in modo efficace, promuovendo al contempo una cultura del miglioramento continuo. L’esperienza derivante dall’analisi degli errori passati diventa così una risorsa preziosa per ottimizzare i processi e favorire la crescita organizzativa.

Per garantire risultati concreti, è fondamentale adottare metodologie strutturate e strumenti adeguati, come la raccolta sistematica dei dati, l’analisi delle cause, la valutazione degli impatti e la definizione di piani d’azione correttivi e preventivi.

Infine, la gestione accurata della documentazione relativa ai problemi riscontrati e alle soluzioni adottate è cruciale per assicurare trasparenza, tracciabilità e la possibilità di effettuare revisioni periodiche, contribuendo così a un costante miglioramento della qualità.

=== Attività
Il processo di risoluzione dei problemi prevede le seguenti attività:
+ *Implementazione del processo*: il processo di risoluzione dei problemi deve essere definito e implementato in modo da:
  - assicurare il tracciamento, la gestione e la risoluzione di ogni problema;
  - categorizzare i problemi e priorizzarne la gestione;
  - individuare delle tendenze nei problemi riscontrati;
  - valutare il grado di implementazione e l'efficacia dei cambiamenti adottati per risolvere i problemi, con particolare attenzione all'individuazione degli eventuali nuovi problemi da essi introdotti;
+ *Risoluzione del problema*, che inizia con la stesura di un report per descrivere il problema riscontrato. Ogni problema deve essere poi analizzato e risolto secondo le procedure e con le accortezze identificate durante l'implementazione del processo.

=== Gestione dei rischi
All'interno del piano di progetto è presente una sezione dedicata all'individuazione dei rischi (sezione #link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/piano_progetto/piano-di-progetto.pdf#analisi-dei-rischi")[#glossario[Analisi dei rischi]] #footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/piano_progetto/piano-di-progetto.pdf#analisi-dei-rischi")) \[versione 2.0.0\]). Tale compito è assegnato al responsabile, che andrà quindi a scovare possibili cause di problemi, indicando inoltre la loro probabilità di occorrenza e le tecniche di mitigazione. 

Durante la pianificazione di ogni sprint i membri del gruppo si confrontano sui possibili rischi che potrebbero verificarsi sulla base della propria esperienza e delle task da eseguire, in modo da prevenirli e mitigarne gli effetti. Ad ogni retrospettiva, invece, il team valuta i rischi occorsi e l'efficacia delle strategie con cui sono stati affrontati. È compito del responsabile documentare i rischi previsti e occorsi per ogni sprint e, se necessario, aggiornare le tecniche di mitigazione e documentare le soluzioni intraprese nella sezione #link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/piano_qualifica/piano-di-qualifica.pdf#miglioramenti")[Miglioramenti] #footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/piano_qualifica/piano-di-qualifica.pdf#miglioramenti")) del piano di qualifica \[versione 2.0.0\].

==== Codifica dei rischi
Per identificare i rischi adottiamo la seguente struttura:
- *Codice*: 
#align(center, block[
  #set align(center)
  R[a][numero]
])
dove:
#set list(indent: 1em)
- R: indica che si tratta di un rischio;
- a: indica la prima lettera della categoria di appartenenza del rischio (se ritenuto necessario è possibile inserire le prime 2 lettere);
- numero: numero progressivo del rischio.
#set list(indent: 0em)
- *Descrizione*: descrizione del rischio;
- *Probabilità di occorrenza*: numero da 1 a 5, dove 5 indica altissima probabilità di occorrenza;
- *Pericolosità*: alta, media o bassa;
- *Tecniche di mitigazione*: azioni che permettono di arginare le possibili conseguenze del rischio.
