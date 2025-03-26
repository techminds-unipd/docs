#import "../backend/funzioni_ausiliarie.typ": declaration
== Frontend

=== Introduzione
L’architettura di Agent Flow non segue un pattern architetturale unico e predefinito. Invece, è stata adottata una combinazione di design pattern propri della libreria ReactJS, scelti e adattati in base alle specifiche esigenze del progetto. Questa strategia consente di mantenere separata la logica di business dalle diverse componenti, rendendo più semplice la gestione dello stato dell’applicazione.

Per ogni funzionalità offerta è stata creata una classe che ha lo scopo di comunicare con le API per recuperare i dati necessari. Le pagine contengono dei componenti personalizzati che utilizzano degli hooks custom e gli hooks di React, come  #declaration[useState] e #declaration[useEffect], per gestire lo stato in modo efficiente e aggiornare dinamicamente l’interfaccia utente. Questo approccio garantisce un’esperienza fluida e reattiva, capace di adattarsi in tempo reale alle esigenze dell’utente. Le chiamate API permettono di ottenere i dati in modo sicuro, scalabile ed efficace, mantenendo ben distinta la logica di business dall’interfaccia grafica. Inoltre, grazie agli hooks, la gestione dello stato avviene in modo dichiarativo e modulare, migliorando la leggibilità e la manutenzione del codice.

Le sezioni successive saranno quindi organizzate nel seguente modo:
- Componenti personalizzati: elenco dei componenti personalizzati creati per adattarsi alle scelte grafiche che il team ha individuato in fase di progettazione del mockup. All'interno di alcuni di questi componenti viene utilizzato un hook custom specifico per ognuna delle funzionalità offerte dall'applicazione;
- Pagine: questa sezione contiene le pagine fornite dalla web app, create grazie all'utilizzo di più componenti, sia quelli personalizzati, che quelli offerti dalla libreria MUI;
- Funzionalità: descrizione di ogni funzionalità, con relativa classe, hook ed eventualmente contesto. 

A livello logico, oltre alle classi sopra citate e meglio descritte nella specifica sezione, sono stati introdotti dei tipi specifici:
- *UserDTO*, rappresenta un utente:
  - username: string;
  - password: string.

- *WorkflowDTO*, rappresenta un workflow formato da nodi e archi:
  - name: string;
  - nodes: NodeDTO[];
  - edges: EdgeDTO[].

- *NodeDTO*, rappresenta un nodo di un workflow:
  - id: number;
  - position: PositionDTO;
  - data: NodeDataDTO.

- *PositionDTO*, rappresenta la posizione di un nodo:
  - x: number;
  - y: number.

- *NodeDataDTO*, rappresenta il tipo di nodo (Gmail/Calendar/Pastebin):
  - label: string.

- *EdgeDTO*, rappresenta un arco orientato tra due nodi:
  - label: string;
  - source: number;
  - target: number.

//INSERIRE DIAGRAMMA DELLE CLASSI PER I TIPI

=== Componenti personalizzati
#include("componenti.typ")

=== Pagine
#include("pagine.typ")

=== Funzionalità
#include("LoginUser_frontend.typ")
#include("create_workflow_frontend.typ")
#include("delete_workflow_frontend.typ")
#include("workflow_name_list_frontend.typ")
#include("google_token.typ")

// === Design Pattern