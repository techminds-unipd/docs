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

=== Funzionalità obbligatorie richieste

=== Funzionalità opzionali richieste

=== Tecnologie da utilizzare

=== Aspetti positivi

=== Aspetti negativi e rischi

=== Aiuto fornito dall'azienda

=== Contatti avuti con l’azienda

=== Conclusione

== #text("C4 - NearYou (Sync Lab)", rgb("#f16610"))

=== Descrizione generale

=== Funzionalità obbligatorie richieste

=== Funzionalità opzionali richieste

=== Tecnologie da utilizzare

=== Aspetti positivi

=== Aspetti negativi e rischi

=== Aiuto fornito dall'azienda

=== Contatti avuti con l’azienda

=== Conclusione

== #text("C5 - 3Dataviz (Sanmarco Informatica)", rgb("#f16610"))

=== Descrizione generale

=== Funzionalità obbligatorie richieste

=== Funzionalità opzionali richieste

=== Tecnologie da utilizzare

=== Aspetti positivi

=== Aspetti negativi e rischi

=== Aiuto fornito dall'azienda

=== Contatti avuti con l’azienda

=== Conclusione

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