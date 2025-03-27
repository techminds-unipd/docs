== Home
La pagina Home ha lo scopo di dare una visione d'insieme dell'applicativo. In particolare, viene descritto lo scopo di Agent Flow, come funziona e viene mostrato un esempio di un workflow.
#figure(
  image("../assets/Home.png"), caption: "Pagina Home."
)

* Navbar *

In tale pagina, le uniche interazioni possibili sono dettate della barra superiore di navigazione (Navbar).
Se si naviga il sito web senza aver effettuato l'accesso, nella Navbar saranno presenti i link per la sezione about us (vedi @about-us), la registrazione (vedi @signup) e l'accesso (vedi @signin).

#figure(
  image("../assets/not-logged-navbar.png"), caption: "Navbar di un utente non loggato."
)

Se è stato effettuato l'accesso, la Navbar mostrerà i link per la sezione about us (vedi @about-us), la dashboard (vedi @dashboard) e un'icona generica del profilo.

#figure(
  image("../assets/logged-navbar.png"), caption: "Navbar di un utente non loggato."
)

Facendo clic sull'icona del profilo, verrà visualizzato un menu a tendina con l'opzione per il logout e un link alla sezione services (vedi @services).

#figure(
  image("../assets/dropdown-menu-navbar.png"), caption: "Navbar con il menù a tendina."
)

Se si sceglie di effettuare il logout, sarà necessario confermare l'operazione e si verrà reindirizzati alla pagina di login.
