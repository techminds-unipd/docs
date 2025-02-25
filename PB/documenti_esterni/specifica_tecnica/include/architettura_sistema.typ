= Architettura di sistema
La descrizione dell'architettura del prodotto adotta un approccio top-down, partendo dalla struttura
generale per poi scendere nel dettaglio delle singole componenti.

== Introduzione
L'architettura del sistema è composta da quattro componenti principali: il frontend, il backend, l'agente e il database.
#figure(
  image("../assets/architettura-sistema.svg", width: 75%), 
  caption: "Architettura di sistema"
) <architettura-sistema>
\
Il frontend è l'interfaccia grafica sviluppata in React che permette all'utente di interagire con i workflow e le operazioni a loro associate. Le richieste effettuate dall'utente vengono inoltrate al backend sviluppato con NestJS, che si occupa di gestire le operazioni richieste e di comunicare con l'agente.
L'agente è sviluppato in LangChain e comunica con il backend tramite un server Flask. Esso si occupa di eseguire i workflow mediante un LLM che interagisce con dei tool che si interfacciano con il mondo esterno. Infine, il database MongoDB è utilizzato per memorizzare i dati relativi ai workflow e agli utenti. Tutta l'infrastuttura è organizzata a container tramite Docker.


== Frontend

== Backend

== Agente

== Database
