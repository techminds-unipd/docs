#import "/template/template.typ": glossario
= Tecnologie

== Linguaggi
=== TypeScript
Linguaggio di programmazione che aggiunge a JavaScript funzionalità come il supporto per i tipi, le interfacce e le classi.

- *Utilizzo*: codifica in #glossario[React] e #glossario[NestJS]\;
- *Versione*: 5.7.3;
- *Documentazione*: https://www.typescriptlang.org/docs/ [visitato il: 24/02/2025].
=== Python
Linguaggio di programmazione interpretato e multi-paradigma.

- *Utilizzo*: codifica dell'agente AI, dato che riteniamo sia il linguaggio più adatto per il framework #glossario[LangChain]\;
- *Versione*: 3.13.0;
- *Documentazione*: https://docs.python.org/3/ [visitato il: 24/02/2025].

=== HTML
Linguaggio di markup utilizzato per definire la struttura e il contenuto delle pagine web.

- *Utilizzo*: mediante React per la creazione di componenti;
- *Versione*: 5;
- *Documentazione*: https://www.w3schools.com/html/ [visitato il: 24/02/2025].

=== CSS
Linguaggio di stile utilizzato per definire l'aspetto e il layout delle pagine web.

- *Utilizzo*: mediante React per la creazione dello stile dei componenti;
- *Versione*: 3;
- *Documentazione*: https://www.w3schools.com/css/ [visitato il: 24/02/2025].

=== YAML
Linguaggio di serializzazione di dati human-readable.

- *Utilizzo*: configurazione di #glossario[Docker]\;
- *Versione*: 1.2;
- *Documentazione*: https://yaml.org/spec/1.2/spec.html [visitato il: 24/02/2025].
=== JSON
Linguaggio di serializzazione di dati human-readable.

- *Utilizzo*: configurazione di #glossario[ESLint], #glossario[TypeScript] e dei package di #glossario[Node.js]\;
- *Documentazione*: https://www.json.org/json-en.html [visitato il: 24/02/2025].

== Librerie e framework
=== React
Libreria JavaScript per la creazione di interfacce utente.

- *Funzionalità*:
  - suddivide l'interfaccia utente in componenti autonomi e riutilizzabili. Ogni componente corrisponde a una funzione o a una classe che accetta dati in input (props) e restituisce elementi React;
  - permette di scrivere componenti usando TSX, una sintassi che combina HTML e TypeScript. TSX rende il codice più leggibile e facile da scrivere, poiché consente di definire la struttura e il comportamento dell'interfaccia nello stesso posto;
  - ogni componente React può mantenere il proprio stato (State), consentendo di aggiornare dinamicamente l'interfaccia utente;
  - i React Hooks sono funzioni che permettono di gestire lo stato e il ciclo di vita dei componenti. Hooks base come useState, useEffect e useContext facilitano la gestione dello stato, degli effetti collaterali e del contesto in modo più semplice e conciso. \ \
- *Utilizzo*: creazione dell'interfaccia utente;
- *Versione*: 19.0.0;
- *Documentazione*: https://react.dev/learn [visitato il: 25/02/2025].

=== ReactFlow
Libreria React per la creazione di diagrammi interattivi.

- *Funzionalità*:
  - utilizza React per la creazione di diagrammi interattivi. Offre una vasta gamma di componenti per la creazione di diagrammi di flusso, organigrammi e mappe concettuali;
  - permette di personalizzare l'aspetto e il comportamento dei diagrammi;
  - supporta l'interattività, consentendo agli utenti di spostare, collegare e modificare i nodi e i collegamenti del diagramma. \ \
- *Utilizzo*: creazione dei workflow tramite nodi e archi;
- *Versione*: 12.4.3;
- *Documentazione*: https://reactflow.dev/learn [visitato il: 25/02/2025].

=== React Router
Libreria React utilizzata per la gestione della navigazione.

- *Utilizzo*: gestione delle route all'interno dell'applicazione React;
- *Versione*: 7.2.0;
- *Documentazione*: https://reactrouter.com/7.2.0/home [visitato il: 25/02/2025].

=== Material-UI
Libreria React che fornisce componenti React pronti all'utilizzo.

- *Utilizzo*: uso di componenti React con un design responsivo e coeso;
- *Versione*: 6.4.5;
- *Documentazione*: https://mui.com/material-ui/getting-started/ [visitato il: 25/02/2025].

=== NestJS
Framework per la creazione di applicazioni server-side in TypeScript.

- *Funzionalità*:
  - offre un'architettura basata su moduli, controller e provider, facilitando la creazione di applicazioni scalabili e manutenibili;
  - implementa la Dependency Injection, un design pattern che permette di iniettare le dipendenze di un componente esternamente;
  - offre un sistema di middleware per l'elaborazione delle richieste HTTP. I middleware possono essere utilizzati per eseguire operazioni comuni come l'autenticazione, la registrazione delle richieste e la gestione degli errori;
  - integra Mongoose per la gestione dei dati e la comunicazione con #glossario[MongoDB]\;
  - utilizza i decorators per definire i controller, i moduli e i provider. I decorators sono funzioni speciali che possono essere applicate a classi o metodi per modificare il loro comportamento. \ \
- *Utilizzo*: codifica in TypeScript del backend e delle #glossario[API]\;
- *Versione*: 11.0.0;
- *Documentazione*: https://docs.nestjs.com [visitato il: 25/02/2025].

=== Flask
Framework per la creazione di applicazioni web in #glossario[Python].

- *Utilizzo*: codifica in Python del server utilizzato dall'agente AI; 
- *Versione*: 3.1.0;
- *Documentazione*: https://flask.palletsprojects.com/en/stable/# [visitato il: 25/02/2025].

=== LangChain
Framework per la creazione di agenti AI in Python.

- *Funzionalità*:
  - permette di integrare #glossario[LLM] da diversi produttori;
  - permette di creare o utilizzare un insieme di tool da fornire agli agenti AI;
  - attraverso la libreria LangGraph, permette di creare degli agenti AI. \ \
- *Utilizzo*: creazione dell'agente AI;
- *Versione*: 0.3.19;
- *Documentazione*: https://python.langchain.com/docs/introduction/ [visitato il: 25/02/2025].


== Strumenti di analisi
=== ESLint
- *Utilizzo*: analisi statica del codice TypeScript;
- *Versione*: 9.21.0;
- *Documentazione*: https://eslint.org/docs/latest [visitato il: 25/02/2025].

=== Jest
- *Utilizzo*: analisi dinamica del codice TypeScript;
- *Versione*: 29.7.0;
- *Documentazione*: https://jestjs.io/docs/getting-started [visitato il: 25/02/2025]. 

=== Pylint
- *Utilizzo*: analisi statica del codice Python;
- *Versione*: 4.0.0;
- *Documentazione*: https://pylint.pycqa.org/en/latest/ [visitato il: 25/02/2025].

=== Pytest
- *Utilizzo*: analisi dinamica del codice Python;
- *Versione*: 8.3.4;
- *Documentazione*: https://docs.pytest.org/en/stable/#documentation [visitato il: 25/02/2025].

== Persistenza dati
=== MongoDB
Database NoSQL orientato ai documenti.

- *Utilizzo*: memorizzazione dei dati riguardanti i workflow e gli utenti;
- *Versione*: 8.0.0;
- *Documentazione*: https://www.mongodb.com/docs/ [visitato il: 25/02/2025]. 

== Strumenti di supporto
=== Node.js
- *Utilizzo*: esecuzione del codice TypeScript;
- *Versione*: 22.14.0;
- *Documentazione*: https://nodejs.org/docs/latest-v22.x/api/documentation.html [visitato il: 25/02/2025].

=== Vite
- *Utilizzo*: creazione di template per il progetto in React;
- *Versione*: 6.2.0;
- *Documentazione*: https://vitejs.dev/guide/ [visitato il: 25/02/2025].

=== Swagger
- *Utilizzo*: documentazione delle API nel formato OpenAPI;
- *Versione*: 3.0.0;
- *Documentazione*: https://swagger.io/docs/ [visitato il: 25/02/2025].

=== Groq
- *Utilizzo*: piattaforma che offre il modello Gemma-2-9b-it utilizzato dall'agente AI;
- *Documentazione*: https://console.groq.com/docs/overview [visitato il: 25/02/2025].

=== Docker
Piattaforma che attraverso la virtualizzazione a livello di sistema operativo permette di creare, testare e distribuire applicazioni.

- *Utilizzo*: creazione di container tramite immagini per l'esecuzione delle componenti del prodotto;
- *Versione*: 26.1.3;
- *Documentazione*: https://docs.docker.com/get-started/introduction/ [visitato il: 25/02/2025];
#set par(justify: false)
- *Immagini utilizzate per il prodotto*:
  - MongoDB: https://hub.docker.com/layers/library/mongo/8.0.0/images/sha256-b07755058fd9ee3478bdef0a2614e51f7b73a91c85e221233444456e4ad9671e [visitato il: 25/02/2025];
  - Node.js: https://hub.docker.com/layers/library/node/22.14.0/images/sha256-bfcb378574ec15a95d04a2b9a4df2690124cde268cf13a783775063e99af706f [visitato il: 25/02/2025];
  - Python: https://hub.docker.com/layers/library/python/3.13.0/images/sha256-94fbc9474bfd40b1231988d5afa08ac83eebf792dc9f89760c7b799c8101c2eb [visitato il: 25/02/2025].
#set par(justify: true)