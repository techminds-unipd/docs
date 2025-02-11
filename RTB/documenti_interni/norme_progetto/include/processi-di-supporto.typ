#import "/template/template.typ": glossario
= Processi di supporto
I processi di supporto rappresentano un insieme di attività trasversali che aiutano a garantire la qualità e l'efficacia dei processi attivi durante lo sviluppo software. Le attività descritte all'interno di questa sezione seguono un processo di adattamento e miglioramento in base alle esigenze che sorgono e alla necessità di garantire qualità.

== Documentazione
=== Caratteristiche e finalità
La documentazione è l'insieme di tutte le informazioni utili al gruppo raccolte sotto forma di testo, diagrammi o immagini.

Secondo lo standard ISO/IEC 12207:1995, il processo di documentazione è un processo finalizzato alla registrazione delle informazioni prodotte da un processo o attività del ciclo di vita del software. Questo processo comprende un insieme di attività che pianificano, progettano, sviluppano, producono, modificano, distribuiscono e mantengono i documenti necessari per tutte le parti coinvolte nel progetto. 

In particolare lo standard definisce quattro attività principali:
+ Implementazione del processo: definisce un piano per identificare i documenti da produrre durante il ciclo di vita del software e stabilisce gli aspetti che ogni documento deve contenere;
+ Progettazione e sviluppo: definisce la struttura del documento e l'origine delle informazioni da includere al suo interno. Crea e sviluppa del contenuto in base agli standard definiti;
+ Produzione: produce e distribuisce il documento finale nel formato prestabilito; 
+ Manutenzione: aggiorna il documento nel tempo in modo che sia sempre accurato e pertinente.

Per la natura di questo progetto, la prima e ultima attività non verranno svolte interamente.

=== Progettazione e sviluppo
==== Filosofia "Docs as code" <docsascode>
Abbiamo scelto di usare la filosofia "Docs as code" che si prescrive di trattare tutta la documentazione come se fosse del vero e proprio codice sorgente. \ Questo porta i seguenti vantaggi:
+ Supporto agli #glossario[issue tracking system];;
+ Controllo di versione con #glossario[git];;
+ Processi di revisione del codice;
+ Test e #glossario[integrazione continua].

==== Tecnologie utilizzate per la documentazione
Il team ha scelto di usare le seguenti tecnologie per redigere i documenti:
- #glossario[Typst]: linguaggio simile a #glossario[LaTeX] ma che permette di comporre documenti in modo più semplice e intuitivo.

==== Organizzazione dei documenti
- Nomi dei file: i file iniziano sempre con lettera minuscola o con una data del tipo yyyy-mm-dd[-info] nel caso di #glossario[verbali] (info è un campo opzionale che contiene informazioni aggiuntive);
- Organizzazione delle cartelle: nel caso in cui il documento sia composto da più file, questi sono contenuti in una cartella chiamata ```/include```;
- Elenchi: in tutti gli elenchi gli elementi terminano con ";" tranne l'ultimo che termina con ".". Inoltre la prima lettera di ogni punto deve essere maiuscola, mentre se si tratta di un sottoelenco deve essere minuscola;
- Sezioni: viene seguita la convenzione di Typst, ovvero la sezione principale avrà un numero "X" e tutte le sottosezioni aggiungeranno ricorsivamente un altro ".X";
- Figure: ogni figura deve essere dotata di caption che ne spieghi brevemente il contenuto;
- Tabelle: ogni tabella deve essere dotata di caption che ne spieghi il contenuto;
- Termini nel glossario: si evidenziano le parole presenti nel glossario solamente nelle loro prime occorrenze nel documento.

==== Struttura dei documenti
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
  - gli elenchi e le liste possono non terminare col punto e virgola;
  - i termini presenti del glossario presenti nei verbali verranno evidenziati dalla sezione "Contenuto della riunione" in poi.

== Gestione della configurazione
=== Caratteristiche e finalità
La gestione della configurazione è un #glossario[processo] fondamentale per monitorare e controllare le modifiche ai componenti software durante il loro ciclo di vita. Il prodotto SW non è mai un monolite, infatti è composto da più componenti, ognuno dei quali è caratterizzato da un proprio ciclo di vita. Ogni singolo componente ha una storia individuale che viene gestita tramite controllo di versione, che aiuta a non perdere traccia di questa storia e a poter avanzare o retrocedere nelle versioni. Il processo di gestione della configurazione, dunque, aiuta a mantenere la coerenza e l'integrità del software, facilitando la collaborazione tra i membri del team.

Secondo lo standard ISO/IEC 12207:1995, questo processo include le seguenti attività:
+ Implementazione del processo: definisce un piano per la gestione della configurazione, che descrive le varie attività e l'organizzazione di queste attività;
+ Identificazione della configurazione: definisce uno schema per l'identificazione degli elementi relativi al progetto e delle loro versioni;
+ Controllo della configurazione: gestisce le richieste di modifica e il loro tracciamento;
+ Registrazione dello stato della configurazione: prepara i registri di gestione, i quali mostrano lo stato e la storia completa degli elementi relativi al progetto;
+ Valutazione della configurazione: valuta la completezza degli elementi relativi al progetto rispetto ai requisiti;
+ Gestione e consegna delle versioni: assicura che tutte le versioni degli elementi software e della documentazione siano correttamente gestite, conservate e distribuite in modo tracciabile.

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

=== Gestione Repository (Controllo della configurazione e registrazione dello stato)
La struttura del #glossario[repository] è composta da:
- *main*: è il ramo predefinito dove risiede la versione stabile del prodotto, su questo #glossario[branch] è stata impostata una regola di protezione per evitare che venga introdotto del codice non funzionante o non approvato;
- *branch di feature* creati secondo la pratica #glossario[GitHub Flow].
\
Il GitHub Flow è un flusso di lavoro semplice e leggero, considerato ideale dal nostro team per lo sviluppo. Si compone di cinque fasi principali:
	1.	*Creare un branch di feature*: iniziare creando un nuovo branch dal main per lavorare su nuove funzionalità senza influenzare il codice principale;
	2.	*Modificare i file nel nuovo branch*: effettuare modifiche e aggiungere #glossario[commit] per tenere traccia dei progressi;
	3.	*Creare una #glossario[Pull Request]*: una volta effettuati i commit e il #glossario[push], aprire una pull request per avviare la revisione del codice;
	4.	*Unire la Pull Request*: dopo la revisione, unire il branch al main facendo il merge;
	5.	*Eliminare il branch*: infine, eliminare il branch di feature per mantenere il repository pulito.
\
All'interno del branch main si trova un file README.md dove è possibile visionare la struttura delle cartelle del repository. Inoltre, per il repository della documentazione è disponibile una pagina web statica ospitata da #glossario[GitHub Pages], che permette di visionare tutti i documenti appartenenti alla documentazione generati attraverso delle #glossario[GitHub Actions]. 

== Accertamento della qualità
=== Caratteristiche e finalità
L'accertamento della qualità è un processo che ha lo scopo di garantire che il prodotto software soddisfi i requisiti concordati con il proponente e che sia conforme agli standard di qualità prefissati. Questo processo è fondamentale per garantire che il prodotto finale sia affidabile, sicuro e soddisfi le aspettative del cliente.

Secondo lo standard ISO/IEC 12207:1995, l'accertamento della qualità include le seguenti attività:
- Implementazione del processo: definisce un piano per l'accertamento della qualità, che descrive metodologie, procedure e strumenti da utilizzare. È necessario definire anche il coordinamento con le attività di verifica e validazione;
- Garanzia di prodotto: definisce le garanzie di qualità che il prodotto software deve soddisfare;
- Garanzia di processo: definisce le garanzie di qualità che i processi di ciclo di vita del software devono soddisfare;

=== PDCA
Il ciclo #glossario[PDCA], noto anche come ciclo di Deming, è stato scelto come approccio per il miglioramento continuo di processi e prodotti, con l'obiettivo di attuare manutenzione migliorativa al proprio way of working. Per ottenere risultati concreti, è fondamentale seguire con attenzione le quattro fasi che lo compongono:

1. *Plan*: in questa fase si definiscono le attività necessarie per identificare quali processi avviare e in quale ordine, con l’obiettivo di raggiungere risultati specifici. Si stabiliscono obiettivi di miglioramento chiari e si progettano le azioni da intraprendere. Non riguarda pianificazione di progetto, ma bensì pianificazione di miglioramento;
2. *Do*: si passa all’azione, mettendo in pratica quanto pianificato. Durante l’esecuzione si raccolgono dati e si monitorano i risultati per valutare l’efficacia delle attività svolte. Non è sviluppo, ma dispiegamento (esplorativo) di azioni di miglioramento;
3. *Check*: qui si analizzano i dati raccolti nella fase di esecuzione, confrontandoli con gli obiettivi prefissati. Si utilizzano metriche specifiche per interpretare i risultati e individuare eventuali discrepanze o aree di miglioramento. Si verifica quindi l’esito delle azioni di miglioramento rispetto alle attese;
4. *Act*: sulla base delle valutazioni precedenti, si consolidano le pratiche che hanno prodotto risultati positivi, inserendole nel way of working. Si implementano poi azioni correttive per affrontare eventuali criticità. Si analizzano le cause dei problemi e si apportano miglioramenti, favorendo così un’evoluzione continua del processo.

Ogni ciclo PDCA rappresenta un’opportunità per raggiungere gli obiettivi di qualità fissati, creando un processo di miglioramento costante e progressivo.

=== Piano di qualifica
Il piano di qualifica è un documento che definisce le strategie e le metodologie che il team intende adottare per garantire la qualità del prodotto software. All'interno del piano di qualifica vengono descritti i processi di verifica e validazione con i relativi obiettivi di qualità. Inoltre, vengono fissati gli standard di qualità da rispettare e le metriche da utilizzare per misurare la qualità del prodotto. All'interno del piano di qualifica viene definito il cruscotto di controllo, che raccoglie un insieme di misurazioni per ogni metrica adottata, i dati rilevati da queste misurazioni poi vengono sottoposti a criteri di accettazione. Il cruscotto di controllo dunque consente di monitorare lo stato del progetto, rilevare problemi critici e prendere decisioni migliorative basate sui dati a disposizione.

=== Struttura metriche di qualità
- *Codice:* identificativo univoco della metrica;
#align(center, block[
  #set align(center)
  M[abc][numero]
])
dove:
#set list(indent: 1em)
- M: indica che si tratta di una metrica;
- abc: indica le prime 3 lettere della categoria di appartenenza della metrica (se ritenuto necessario è possibile inserire le prime 4 lettere);
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

=== Aggiornamento cruscotto
Il cruscotto è interamento gestito e generato in Typst. Ogni volta che viene compilato, il documento riprende tutti i valori aggiornati degli sprint da una funzione apposita (definita in costi.typ nella directory contenente il piano di progetto).
I valori ottenuti vengono usati per calcolare le varie metriche, che saranno successivamente visualizzate attraverso dei grafici, sempre generati in Typst con la libreria CeTZ.
C'è da precisare che questa è una procedura semi-automatica, ad esempio alcuni dati per le metriche devono essere inseriti a mano ad ogni sprint.
I dati in questione riguardano l'indice di Gulpease, rischi non previsti e l'#glossario[Earned Value].

== Verifica e validazione

=== Caratteristiche e finalità
La verifica e la validazione sono due processi fondamentali per garantire la qualità e la correttezza del prodotto finale. La verifica viene eseguita su tutte le componenti del prodotto, siano esse documentazione o codice, durante tutta la durata del progetto, in modo tale da confermare che il lavoro svolto fino a quel momento sia corretto e rispetti gli standard prefissati. La validazione, invece, agisce solo a fine progetto, poiché si occupa di confermare che il prodotto finale nel suo complesso soddisfi le aspettative e i requisiti concordati con il proponente. La validazione rispecchia quindi l'insieme di tutte le verifiche effettuate durante il progetto, e per questo motivo la verifica è ciò che permette alla validazione di essere eseguita con successo.

Per il processo di verifica lo standard ISO/IEC 12207:1995 include i seguenti compiti:
- Verifica della documentazione, considerando i criteri di completezza, correttezza e coerenza;
- Verifica del design, considerando i criteri di correttezza, coerenza e tracciabilità rispetto ai requisiti;
- Verifica del codice, considerando i criteri di correttezza, tracciabilità rispetto al design e ai requisiti, testabilità e conformità agli standard di codifica.

La verifica può essere eseguita in due forme: analisi statica e analisi dinamica.

=== Analisi statica
L'analisi statica è una forma di verifica che non richiede l'esecuzione dell'oggetto di verifica e per questo può essere applicata a ogni componente del prodotto. Viene utilizzata per accertare il rispetto di regole di scrittura e di stile, l'assenza di difetti e la presenza di proprietà desiderate. Questa forma di verifica può essere eseguita tramite due modalità principali:
- Walkthrough: tecnica di lettura in cui l'oggetto in esame viene controllato nella sua totalità, senza svolgere una ricerca di un errore/proprietà specifica al suo interno, ad esempio la lettura di un documento per rilevare errori grammaticali. Questo tipo di esame è privo di assunzioni o presupposti;
- Inspection: tecnica di lettura in cui l'oggetto in esame viene controllato per verificare la presenza di difetti o proprietà specifiche, ad esempio la ricerca di termini particolari in un documento. L'esame è basato su presupposti e per questo permette una maggiore possibilità di automazione rispetto al Walkthrough.

=== Analisi dinamica
L'analisi dinamica è una forma di verifica che richiede l'esecuzione dell'oggetto di verifica e quindi può essere applicata solo a codice eseguibile. Viene utilizzata per accertare il corretto funzionamento dell'oggetto tramite test (prove), i quali verificano che l'oggetto produca i risultati attesi e individuano eventuali anomalie durante l'esecuzione. 
I test possono essere di vario tipo e per questo è necessario classificarli a seconda del loro scopo e del loro ambito di applicazione.

*Classificazione dei test*

Le tipologie di test principali sono, in ordine di esecuzione:
+ #glossario[Test di unità]: verificano il corretto funzionamento di singole unità di codice, come funzioni, metodi o classi. Poiché verificano piccole porzioni di codice, questi test devono essere eseguiti per primi, in modo tale da evitare l'introduzione di errori una volta che queste unità vengono integrate tra loro;
+ #glossario[Test di integrazione]: verificano il corretto funzionamento delle unità di codice integrate tra loro, con l'obiettivo di verificare che le unità funzionino correttamente anche una volta integrate;
+ #glossario[Test di sistema]: verificano il corretto funzionamento del sistema nel suo complesso, con l'obiettivo di verificare che il sistema soddisfi i requisiti software concordati con il proponente e stabiliti nel documento di analisi dei requisiti;
+ #glossario[Test di regressione]: verificano che le modifiche apportate al codice non abbiano introdotto difetti in altre parti del sistema prima funzionanti. Questi test vengono eseguiti ogni volta che viene apportata una modifica al codice e non sono altro che la ripetizione selettiva di test già eseguiti in precedenza;
+ #glossario[Test di accettazione]: verificano che il prodotto finale soddisfi i requisiti utente concordati con il proponente. Sono l'ultima fase di test prima del possibile rilascio del prodotto.

//Ogni test è costituito da:
// TODO: completare con l'identificazione dei test

=== Processo di verifica
In generale, il processo di verifica include le seguenti fasi:
+ *Apertura della pull request e assegnazione dei verificatori*: il redattore o sviluppatore apre una pull request per sottoporre il proprio lavoro a revisione, aggiungendo un titolo e una breve descrizione del lavoro svolto. Successivamente, assegna i due verificatori scelti durante la pianificazione dello sprint in corso. Se necessario, è possibile aggiungere un terzo verificatore o sostituire uno dei verificatori già assegnati;
+ *Conflitti*: se sono presenti conflitti con il ramo di destinazione, è compito del redattore risolverli prima di procedere con la verifica;
+ *GitHub Actions*: se sono presenti automazioni, queste vengono eseguite automaticamente una volta aperta la pull request. È compito del redattore verificare che tutte abbiano successo prima di procedere con la verifica. In caso di fallimento di una o più automazioni, il redattore deve correggere gli errori e ripetere l'operazione fino a quando tutte le automazioni non avranno esito positivo;
+ *Verifica*: ogni verificatore esegue un'attenta fase di verifica del lavoro svolto, seguendo norme precise a seconda del tipo di lavoro sottoposto a revisione. In caso di errori o dubbi, il verificatore può richiedere modifiche al redattore, aggiungendo commenti che citino parti specifiche del lavoro, in modo da facilitare la discussione e l'eventuale correzione;
+ *Discussione*: se necessario, il redattore e i verificatori possono discutere le modifiche richieste o i dubbi tramite la sezione apposita della pull request. Quando un dubbio viene chiarito, è compito del redattore marcare la conversazione come risolta, in modo da mantenere ordine nelle conversazioni ancora aperte;
+ *Correzione*: il redattore apporta le modifiche richieste dai verificatori, se presenti, e richiede nuovamente la verifica. In caso di necessità o di correzioni banali, anche il verificatore può modificare il lavoro, in modo da velocizzare il più possibile questa fase. Questo processo può essere ripetuto più volte, fino a quando i verificatori non approvano la pull request;
+ *Chiusura della pull request*: una volta che tutti i verificatori hanno approvato la pull request, è loro compito apportare l'ultima modifica al changelog, in modo da tracciare il lavoro svolto. Successivamente la pull request viene chiusa e il ramo di feature viene unito al ramo destinazione, concludendo così il processo di verifica.

=== Verifica della documentazione
Ogni documento relativo al progetto deve essere sottoposto a verifica. Questo compito è affidato al verificatore, che esegue un'analisi statica tramite Walkthrough.

In generale, la verifica dovrà controllare i seguenti aspetti:
- Correttezza tecnica: le informazioni contenute nel documento devono essere accurate e basate su fonti attendibili;
- Coerenza: le informazioni contenute nel documento devono essere coerenti tra loro e con gli altri documenti;
- Chiarezza: il documento deve essere facilmente comprensibile, senza ambiguità o termini tecnici non spiegati;
- Conformità agli standard: il documento deve rispettare le norme stilistiche e strutturali prestabilite;
- Correttezza ortografica e grammaticale: il documento deve essere privo di errori ortografici e grammaticali.

A supporto del verificatore, per il controllo di alcune norme strutturali, sono stati sviluppati degli script che effettuano un'analisi statica del documento mediante il metodo Inspection. Questi script vengono eseguiti automaticamente attraverso GitHub Actions, contribuendo a rendere la fase di verifica il più efficace ed efficiente possibile.

La verifica si conclude quando almeno due verificatori hanno approvato il documento, che può quindi essere esposto pubblicamente all'interno del repository.

//=== Verifica del design // TODO: non so se ci sia un modo, se lo facciamo lo mettiamo altrimenti si toglie

//=== Verifica del codice // TODO

=== Validazione
Secondo lo standard ISO/IEC 12207:1995, la validazione è il processo che serve a determinare se i requisiti e il sistema/prodotto software finale, per come è stato costruito, soddisfano l'uso specifico previsto. Il prodotto finale deve quindi soddisfare tutti i requisiti concordati con il proponente e funzionare correttamente nel suo ambiente finale.
// TODO: da completare con quello che faremo per validare

== Revisioni congiunte
Secondo lo standard ISO/IEC 12207:1995, il processo di revisione congiunta ha l'obiettivo di valutare lo stato e i prodotti di un'attività di un progetto.
Tali revisioni congiunte si svolgono per tutta la durata del rapporto con il proponente. Questo processo può essere impiegato da tutte le parti coinvolte, dove una "parte revisionante" esamina una "parte revisionata".

Questo processo si compone delle seguenti attività:
- Implementazione del processo;
- Revisioni della gestione del progetto;
- Revisioni tecniche.

=== Implementazione del processo
Vengono programmate delle revisioni con il proponente quando lo svolgimento del lavoro ha raggiunto un buon grado di avanzamento rispetto all'incontro precedente. Durante tali revisioni rappresentiamo la parte revisionata, mentre il proponente rappresenta la parte revisionante. Oltre a concentrarsi sugli avanzamenti raggiunti, si discutono eventuali problematiche e le corrispettive azioni correttive necessarie.

I risultati di tali revisioni sono poi documentati tramite i verbali esterni, i quali verranno firmati dalla parte revisionante per garantire l'approvazione di quanto revisionato e discusso.

//== Audit process da aggiungere dopo perchè da come ho capito parla di test

== Risoluzione dei problemi
Mira ad analizzare e risolvere i problemi (incluse le non conformità), qualunque sia la loro natura o origine. Tali problemi possono essere scoperti durante l'esecuzione dello sviluppo, dell'operatività, della manutenzione o di altri processi. L'obiettivo è fornire un mezzo tempestivo, responsabile e documentato per garantire che tutti i problemi scoperti siano analizzati e risolti, riconoscendo le cause scatenanti.

Il processo di risoluzione dei problemi ha l’obiettivo di garantire un approccio rapido, responsabile e ben documentato per analizzare e risolvere le criticità riscontrate durante l’intero ciclo di vita del prodotto. Questo processo non si limita a gestire i problemi nell’immediato, ma punta anche a riconoscere eventuali tendenze e a comprendere le cause profonde delle non conformità, adottando misure preventive per evitarne il ripetersi in futuro.

L’intento principale è affrontare ogni problematica in modo efficace, promuovendo al contempo una cultura del miglioramento continuo. L’esperienza derivante dall’analisi degli errori passati diventa così una risorsa preziosa per ottimizzare i processi e favorire la crescita organizzativa.

Per garantire risultati concreti, è fondamentale adottare metodologie strutturate e strumenti adeguati, come la raccolta sistematica dei dati, l’analisi delle cause, la valutazione degli impatti e la definizione di piani d’azione correttivi e preventivi.

Infine, la gestione accurata della documentazione relativa ai problemi riscontrati e alle soluzioni adottate è cruciale per assicurare trasparenza, tracciabilità e la possibilità di effettuare revisioni periodiche, contribuendo così a un costante miglioramento della qualità.

=== Gestione dei rischi
All'interno del Piano di Progetto è presente una sezione dedicata all'individuazione dei rischi (sezione #link("https://techminds-unipd.github.io/docs/RTB/documenti_esterni/piano_progetto/piano-di-progetto.pdf#analisi-dei-rischi")[#glossario[Analisi dei rischi]]). Tale compito è assegnato al responsabile, che andrà quindi a scovare possibili cause di problemi, indicando inoltre la loro probabilità di occorrenza e le tecniche di mitigazione. 

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
