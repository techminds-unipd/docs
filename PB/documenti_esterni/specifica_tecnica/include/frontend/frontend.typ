#set list(marker: ([-], [•], [‣]))
#import "../backend/funzioni_ausiliarie.typ": declaration
== Frontend

=== Introduzione
L’architettura di Agent Flow non segue un pattern architetturale unico e predefinito. Invece, è stata adottata una combinazione di design pattern propri della libreria React, scelti e adattati in base alle specifiche esigenze del progetto. Questa strategia consente di mantenere separata la logica di business dalle diverse componenti, rendendo più semplice la gestione dello stato dell’applicazione.

Per ogni funzionalità offerta è stata creata una classe che ha lo scopo di comunicare con le API per recuperare i dati necessari. Le pagine contengono dei componenti personalizzati che utilizzano degli hooks custom e gli hooks di React, come #declaration[useState] e #declaration[useEffect], per gestire lo stato in modo efficiente e aggiornare dinamicamente l’interfaccia utente. Questo approccio garantisce un’esperienza fluida e reattiva, capace di adattarsi in tempo reale alle esigenze dell’utente. Le chiamate API permettono di ottenere i dati in modo sicuro, scalabile ed efficace, mantenendo ben distinta la logica di business dall’interfaccia grafica. Inoltre, grazie agli hooks, la gestione dello stato avviene in modo dichiarativo e modulare, migliorando la leggibilità e la manutenibilità del codice.

Per evitare ripetizioni e un'elevata verbosità, nei diagrammi delle classi abbiamo deciso di omettere le props grafiche passate ai componenti della libreria MUI e ai componenti personalizzati.

Le sezioni successive sono organizzate nel seguente modo:
- Tipi: descrizione dei tipi specifici creati per modellare i workflow e gli utenti;
- Componenti personalizzati: elenco dei componenti personalizzati creati per adattarsi alle scelte grafiche che il team ha individuato in fase di progettazione del mockup. All'interno di alcuni di questi componenti viene utilizzato un hook custom specifico per ognuna delle funzionalità offerte dall'applicazione;
- Pagine: questa sezione contiene le pagine fornite dalla web app, create grazie all'utilizzo di più componenti, sia  personalizzati che offerti dalla libreria MUI;
- Funzionalità: descrizione di ogni funzionalità, con relativa classe, hook ed eventualmente contesto. 

=== Tipi
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
Sono stati definiti dei componenti React custom per le seguenti ragioni:
- Possibilità di riutilizzarli in più parti dell'applicazione;
- Migliore leggibilità e organizzazione del codice;
- Separazione delle responsabilità: i componenti React si occupano della UI, mentre la logica di business e le chiamate API sono delegate a hook personalizzati e classi dedicate.
In alcuni componenti sono citati degli hook personalizzati che si occupano di fornire una certa funzionalità, meglio approfonditi nella @hook.

#include("componenti.typ")

=== Pagine
#include("pagine.typ")

=== Funzionalità <hook>
#include ("registerUser.typ")
#include("LoginUser_frontend.typ")
#include("create_workflow_frontend.typ")
#include("delete_workflow_frontend.typ")
#include("workflow_name_list_frontend.typ")
#include("get_workflow.typ")
#include("save_workflow.typ")
#include("execute_workflow.typ")
#include("google_token.typ")

=== Design pattern utilizzati
Questa sezione illustra i design pattern adottati nell’applicazione basata su React, con l’obiettivo di modularizzare le componenti e adattarle alle specifiche esigenze di sviluppo e integrazione. In particolare, sono stati implementati:
- *Controlled Components*: i valori di input dei componenti vengono gestiti direttamente dai componenti genitore e passati ai componenti figli tramite props. Ogni input riceve il proprio valore e una funzione di callback per aggiornare i dati nel componente padre, garantendo così la sincronizzazione dello stato tra i vari componenti. Controlled Components è stato adottato per l'aggiornamento si WorkflowList e all'interno della pagina Workflow;
- *React Hooks*: vengono impiegati per gestire lo stato in modo efficiente e aggiornare dinamicamente l’interfaccia. Oltre agli hook nativi di React (useState, useEffect, useContext), vengono sviluppati anche hook personalizzati in base alle esigenze delle diverse viste e componenti;
- *Provider/Context*: incapsula l’intera applicazione per fornire il contesto di autenticazione a tutti i componenti. Questo facilita la gestione di autenticazione e autorizzazioni, garantendo un’unica istanza centralizzata e accessibile a livello globale. Questo è stato utilizzato per gestire l'autenticazione dell'utente e il collegamento ai servizi Google;
- *Conditional Rendering*: permette di mostrare contenuti diversi in base alla verità di una condizione specificata. Alcuni componenti lo sfruttano per visualizzare i dati in base allo stato di autenticazione dell'utente.
