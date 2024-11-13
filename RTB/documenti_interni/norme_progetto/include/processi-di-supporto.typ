#import "/template/template.typ": glossario
= Processi di supporto

== Documentazione
=== Caratteristiche e finalità
La documentazione è l'insieme di tutte le informazioni utili al gruppo raccolte sotto forma di testo, diagrammi o immagini.
Il loro scopo è quello di documentare l'organizzazione e il #glossario[way of working] di un singolo progetto o di tutto il gruppo di lavoro.
=== Filosofia "Docs as code"
Abbiamo scelto di usare la filosofia "#link(<docs-as-code>)[Docs as code]" che si prescrive di trattare tutta la documentazione come se fosse del vero e proprio codice sorgente. \ Questo porta i seguenti vantaggi:
+ Supporto agli #glossario[issue tracking system];;
+ Controllo di versione con #glossario[git];;
+ Processi di revisione del codice;
+ Test e #glossario[integrazione continua].
=== Tecnologie utilizzate per la documentazione
Il team ha scelto di usare le seguenti tecnologie per redigere i documenti:
- Typst: linguaggio simile a LaTeX ma che permette di comporre documenti in modo più semplice.
=== Organizzazione dei documenti
- Nomi dei file: i file iniziano sempre con lettera minuscola o con una data del tipo yyyy-mm-dd[-info] nel caso di verbali (info è un campo opzionale che contiene informazioni aggiuntive);
- Organizzazione delle cartelle: el caso in cui il documento sia composto da più file, questi sono contenuti in una cartella chiamata ```/include```;
- Elenchi: in tutti gli elenchi gli elementi terminano con ";" tranne l'ultimo che termina con ".".
- Sezioni: viene seguita la convenzione di Typst, ovvero la sezione principale avrà un numero "X" e tutte le sottosezioni aggiungeranno ricorsivamente un altro ".X".

=== Struttura dei documenti
L'impaginazione e la struttura generale dei documenti è descritta nel file #raw("template.typ"). \ Tutti i documenti sono sempre divisi in almeno queste parti:
+ Intestazione:
  - Logo;
  - Mail del gruppo;
  - Nome del documento;
  - Sommario (breve descrizione del contenuto del documento).
+ #glossario[Changelog], tabella che contiene tutti i cambiamenti effettuati al documento:
  - Versione del documento;
  - Data della modifica;
  - Autore della modifica;
  - Verificatore.
+ Indice;
+ Contenuto.
=== Struttura dei verbali
I verbali hanno informazioni aggiuntive oltre a quelle descritte nella sezione di struttura dei documenti. Tali informazioni sono già presenti nella funzione #raw("verbale") presente file #raw("template.typ"). Invocando la funzione e impostando i parametri indicati è possibile ottenere un verbale già formattato.
Le informazioni vanno a modificare la sezione del contenuto.
- Nei verbali interni vengono aggiunti:
  + Partecipanti;
  + Data, ora e luogo;
  + Ordine del giorno;
  + Riassunto con le decisioni prese.
- Nei verbali esterni vengono aggiunti:
  + Tutte le informazioni dei verbali interni;
  + Lo spazio per la firma di chi non fa parte del gruppo.
== Gestione della configurazione
=== Caratteristiche e finalità

=== Versionamento

=== Gestione Repository

== Accertamento della qualità

== Verifica

== Validazione

== Revisioni congiunte con il cliente

== Verifiche ispettive interne

== Risoluzione dei problemi
=== Gestione dei cambiamenti