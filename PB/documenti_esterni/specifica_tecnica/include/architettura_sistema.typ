#import "/template/template.typ": glossario
= Architettura di sistema
La descrizione dell'architettura del prodotto adotta un approccio top-down, partendo dalla struttura
generale per poi scendere nel dettaglio delle singole componenti.

== Introduzione
L'architettura del sistema è composta da quattro componenti principali: il frontend, il backend, l'agente e il database.
#figure(
  image("../assets/architettura-sistema.svg", width: 75%), 
  caption: "Architettura di deploy."
) <architettura-deploy>
\
Il frontend è l'interfaccia grafica sviluppata in React che permette all'utente di interagire con i workflow e le operazioni a loro associate. Le richieste effettuate dall'utente vengono inoltrate al backend sviluppato con NestJS, che si occupa di gestire le operazioni richieste e di comunicare con l'agente.
L'agente è sviluppato in LangChain e comunica con il backend tramite un server #glossario[Flask]. Esso si occupa di eseguire i workflow mediante un #glossario[LLM] che interagisce con dei tool che si interfacciano con il mondo esterno. Infine, il database #glossario[MongoDB] è utilizzato per memorizzare i dati relativi ai workflow e agli utenti. Tutta l'infrastuttura è organizzata a container tramite Docker.

=== Architettura di deploy
L'architettura di deploy è composta da quattro container principali: frontend, backend, agente e database. Per ogni container è stato definito un _Dockerfile_ che quando viene costruito installa le dipendenze necessarie e copia il codice sorgente al suo interno. Ogni servizio è in ascolto su una porta, in particolare:
  - frontend - porta 5173;
  - backend - porta 3000;
  - agente - porta 5000;
  - database - porta 27017. 
Inoltre, è stato definito un file _compose.yaml_ che permette di avviare tutti i container e di definire le variabili d'ambiente necessarie per far comunicare i container tra loro. Per avviare l'intera infrastruttura è sufficiente eseguire il comando `docker compose up`.


#include "frontend/frontend.typ"
#include "backend/backend.typ"
#include "agente.typ"
#include "database.typ"
