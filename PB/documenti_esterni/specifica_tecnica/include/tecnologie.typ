#import "/template/template.typ": glossario
= Tecnologie

== Linguaggi
=== TypeScript
- *Utilizzo*: per la codifica in #glossario[React] e NestJS;
- *Versione*: 5.7.3;
- *Documentazione*: https://www.typescriptlang.org/docs/ [visitato il: 24/02/2025].
=== Python
- *Utilizzo*: per la codifica dell'agente AI, dato che riteniamo sia il linguaggio più adatto per il framework LangChain;
- *Versione*: 3.13.0;
- *Documentazione*: https://docs.python.org/3/ [visitato il: 24/02/2025].
=== HTML
- *Utilizzo*: mediante React per la creazione di componenti;
- *Versione*: 5;
- *Documentazione*: https://www.w3schools.com/html/ [visitato il: 24/02/2025].
=== CSS
- *Utilizzo*: mediante React per la creazione dello stile dei componenti;
- *Versione*: 3;
- *Documentazione*: https://www.w3schools.com/css/ [visitato il: 24/02/2025].
=== YAML
- *Utilizzo*: per la configurazione di #glossario[Docker]\;
- *Versione*: 1.2;
- *Documentazione*: https://yaml.org/spec/1.2/spec.html [visitato il: 24/02/2025].
=== JSON
- *Utilizzo*: per la configurazione di #glossario[ESLint], #glossario[TypeScript] e dei package di NodeJS;
- *Documentazione*: https://www.json.org/json-en.html [visitato il: 24/02/2025].

== Librerie e framework
=== React
- *Funzionalità*:
  - componenti: React suddivide l'interfaccia utente in componenti autonomi e riutilizzabili. Ogni componente corrisponde a una funzione o a una classe che accetta dati in input (props) e restituisce elementi React;
  - Virtual DOM: React utilizza un "DOM virtuale", una rappresentazione virtuale dell'interfaccia utente mantenuta in memoria. Quando lo stato dell'applicazione cambia, React aggiorna prima il Virtual DOM e poi confronta le differenze con il DOM reale, cambiando solo le parti necessarie, migliorando notevolmente le prestazioni;
  - TSX (TypeScript XML): React permette di scrivere componenti usando TSX, una sintassi che combina HTML e TypeScript. TSX rende il codice più leggibile e facile da scrivere, poiché consente di definire la struttura e il comportamento dell'interfaccia nello stesso posto;
  - gestione dello stato (State): ogni componente React può mantenere il proprio stato, consentendo di aggiornare dinamicamente l'interfaccia utente;
  - React Hooks: i React Hooks sono funzioni che permettono di gestire lo stato e il ciclo di vita dei componenti. Hooks base come useState, useEffect e useContext facilitano la gestione dello stato, degli effetti collaterali e del contesto in modo più semplice e conciso. \ \
- *Utilizzo*: libreria per la creazione dell'interfaccia utente;
- *Versione*: 19.0;
- *Documentazione*: https://react.dev/learn [visitato il: 25/02/2025].

=== ReactFlow
- *Funzionalità*:
  - diagrammi: ReactFlow è una libreria React per la creazione di diagrammi interattivi. Offre una vasta gamma di componenti per la creazione di diagrammi di flusso, organigrammi e mappe concettuali;
  - personalizzazione: ReactFlow permette di personalizzare l'aspetto e il comportamento dei diagrammi;
  - interattività: ReactFlow supporta l'interattività, consentendo agli utenti di spostare, collegare e modificare i nodi e i collegamenti del diagramma.
- *Utilizzo*: libreria per la creazione dei workflow tramite nodi e archi;
- *Versione*: 12.4.3;
- *Documentazione*: https://reactflow.dev/learn [visitato il: 25/02/2025].

=== React Router

=== NestJS
- *Funzionalità*:
  - architettura: NestJS è un framework Node.js che offre un'architettura basata su moduli, controller e provider, facilitando la creazione di applicazioni scalabili e manutenibili;
  - Dependency Injection: NestJS supporta la Dependency Injection, un design pattern che permette di iniettare le dipendenze di un componente esternamente;
  - middleware: NestJS offre un sistema di middleware per l'elaborazione delle richieste HTTP. I middleware possono essere utilizzati per eseguire operazioni comuni come l'autenticazione, la registrazione delle richieste e la gestione degli errori;
  - Mongoose: NestJS integra Mongoose per la gestione dei dati e la comunicazione con MongoDB;
  - decorators: NestJS utilizza i decorators per definire i controller, i moduli e i provider. I decorators sono funzioni speciali che possono essere applicate a classi o metodi per modificare il loro comportamento.
- *Utilizzo*: framework per la codifica in TypeScript del backend e delle API REST;
- *Versione*: 11.0;
- *Documentazione*: https://docs.nestjs.com [visitato il: 25/02/2025].

=== Flask
- *Utilizzo*: framework per la codifica in Python del server utilizzato dall'agente AI; 
- *Versione*: 3.1.0;
- *Documentazione*: https://flask.palletsprojects.com/en/stable/# [visitato il: 25/02/2025].

=== LangChain
- *Utilizzo*: framework per la creazione e l'utilizzo di tool da fornire all'agente AI;
- *Versione*: 0.3;
- *Documentazione*: https://python.langchain.com/docs/introduction/ [visitato il: 25/02/2025].

=== LangGraph
- *Utilizzo*: libreria per la creazione dell'agente AI;
- *Versione*: 0.2.74;
- *Documentazione*: https://langchain-ai.github.io/langgraph/ [visitato il: 25/02/2025].

== Strumenti di analisi
=== ESLint
- *Utilizzo*: per l'analisi statica del codice TypeScript;
- *Versione*: 9.21.0;
- *Documentazione*: https://eslint.org/docs/latest [visitato il: 25/02/2025].

=== Jest
- *Utilizzo*: framework per l'analisi dinamica del codice TypeScript;
- *Versione*: 29.7.0;
- *Documentazione*: https://jestjs.io/docs/getting-started [visitato il: 25/02/2025]. 

=== Pytest
- *Utilizzo*: framework per l'analisi dinamica del codice Python;
- *Versione*: 8.3.4;
- *Documentazione*: https://docs.pytest.org/en/stable/#documentation [visitato il: 25/02/2025].

== Persistenza dati
=== MongoDB
- *Utilizzo*: per la memorizzazione dei dati riguardanti i workflow e gli utenti;
- *Versione*: 8.0;
- *Documentazione*: https://www.mongodb.com/docs/ [visitato il: 25/02/2025]. 

== Strumenti di supporto
=== Docker

=== NodeJS
- *Utilizzo*: per l'esecuzione di codice TypeScript lato server;
- *Versione*: 22.14.0;
- *Documentazione*: https://nodejs.org/docs/latest-v22.x/api/documentation.html [visitato il: 25/02/2025].

=== Swagger
- *Utilizzo*: per la documentazione delle API (OpenAPI specification ???);
- *Versione*: 3.0.0;
- *Documentazione*: https://swagger.io/docs/ [visitato il: 25/02/2025].

=== Groq
- *Utilizzo*: piattaforma che offre il modello Gemma-2-9b-it utilizzato dall'agente AI;
- *Documentazione*: https://console.groq.com/docs/overview [visitato il: 25/02/2025].