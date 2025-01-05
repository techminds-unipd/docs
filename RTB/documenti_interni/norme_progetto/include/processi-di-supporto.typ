#import "/template/template.typ": glossario
= Processi di supporto
I processi di supporto rappresentano un insieme di attività trasversali che aiutano a garantire la qualità e l'efficacia dei processi attivi durante lo sviluppo software. Le attività descritte all'interno di questa sezione seguono un processo di adattamento e miglioramento in base alle esigenze che sorgono e alla necessità di garantire qualità.

== Documentazione
=== Caratteristiche e finalità
La documentazione è l'insieme di tutte le informazioni utili al gruppo raccolte sotto forma di testo, diagrammi o immagini.

Secondo lo standard ISO/IEC 12207:1995, il processo di documentazione è un processo finalizzato alla registrazione delle informazioni prodotte da un processo o attività del ciclo di vita del software. Questo processo comprende un insieme di attività che pianificano, progettano, sviluppano, producono, modificano, distribuiscono e mantengono i documenti necessari per tutte le parti coinvolte nel progetto. 

In particolare lo standard definisce quattro attività principali:
+ Implementazione del processo: definisce un piano per identificare i documenti da produrre durante il ciclo di vita del software e stabilisce gli aspetti che ogni documento deve contenere;
+ Progettazione e sviluppo: definisce la struttura del documento e l'origine delle informazioni da includere al suo interno; crea e sviluppa del contenuto in base agli standard definiti;
+ Produzione: produce e distribuisce il documento finale nel formato prestabilito; 
+ Manutenzione: aggiorna il documento nel tempo in modo che sia sempre accurato e pertinente.

Per la natura di questo progetto, la prima e ultima attività non verranno svolte interamente.

=== Progettazione e sviluppo
==== Filosofia "Docs as code"
Abbiamo scelto di usare la filosofia "#link(<docs-as-code>)[Docs as code]" che si prescrive di trattare tutta la documentazione come se fosse del vero e proprio codice sorgente. \ Questo porta i seguenti vantaggi:
+ Supporto agli #glossario[issue tracking system];;
+ Controllo di versione con #glossario[git];;
+ Processi di revisione del codice;
+ Test e #glossario[integrazione continua].

==== Tecnologie utilizzate per la documentazione
Il team ha scelto di usare le seguenti tecnologie per redigere i documenti:
- #glossario[Typst]: linguaggio simile a #glossario[LaTeX] ma che permette di comporre documenti in modo più semplice.

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
  - data della modifica;
  - autore della modifica;
  - verificatore.
+ Indice;
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
- X rappresenta la versione principale (#glossario[major version]), che cambia con aggiornamenti significativi o modifiche radicali.
- Y indica la sottoversione (#glossario[minor version]), che viene aggiornata per miglioramenti o nuove funzionalità non critiche.
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
All'interno del branch main si trova un file README.md dove è possibile visionare la struttura delle cartelle del repository. Inoltre, per il repository della documentazione è disponibile una pagina web statica ospitata da #glossario[GitHub Pages], che permette di visionare tutti i documenti appartenenti alla documentazione generati attraverso delle #glossario[GitHub Action]. 
== Accertamento della qualità

== Verifica

== Validazione

== Revisioni congiunte con il cliente

== Verifiche ispettive interne

== Risoluzione dei problemi
=== Gestione dei cambiamenti