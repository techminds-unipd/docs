#import "../backend/funzioni_ausiliarie.typ": declaration
== Frontend

=== Introduzione
L’architettura di Agent Flow non segue un pattern architetturale unico e predefinito. Invece, è stata adottata una combinazione di design pattern propri della libreria ReactJS, scelti e adattati in base alle specifiche esigenze del progetto. Questa strategia consente di mantenere separata la logica di business dalle diverse componenti, rendendo più semplice la gestione dello stato dell’applicazione.

Per ogni funzionalità offerta è stata creata una classe che ha lo scopo di comunicare con le API per recuperare i dati necessari. Le pagine contengono dei componenti personalizzati che utilizzano degli hooks custom e gli hooks di React, come  #declaration[useState] e #declaration[useEffect], per gestire lo stato in modo efficiente e aggiornare dinamicamente l’interfaccia utente. Questo approccio garantisce un’esperienza fluida e reattiva, capace di adattarsi in tempo reale alle esigenze dell’utente. Le chiamate API permettono di ottenere i dati in modo sicuro, scalabile ed efficace, mantenendo ben distinta la logica di business dall’interfaccia grafica. Inoltre, grazie agli hooks, la gestione dello stato avviene in modo dichiarativo e modulare, migliorando la leggibilità e la manutenzione del codice.

=== Diagrammi delle classi
// TODO
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