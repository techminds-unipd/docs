== Home
La pagina Home ha lo scopo di dare una visione d'insieme dell'applicativo. In particolare, viene descritto lo scopo di Agent Flow, come funziona e viene mostrato un esempio di un workflow.
#figure(
  image("../assets/Home.png"), caption: "Pagina Home."
)

* Navbar *

In tale pagina, le uniche interazioni possibili sono dettate della barra di navigazione (Navbar) presente in alto.
Se è la prima volta che aprite il sito web non sarete loggati, nella Navbar troverete quindi i link about us (vedi @about-us) per registrarsi (vedi @signup) o effettuare il login (vedi @signin).
#figure(
  image("../assets/not-logged-navbar.png"), caption: "Navbar di un utente non loggato."
)



Se invece avete effettuato il login, nella Navbar troverete i link about us (vedi @about-us), dashboard (vedi @dashboard) e un icona generica di un profilo.
#figure(
  image("../assets/logged-navbar.png"), caption: "Navbar di un utente non loggato."
)

Al click sull'icona del profilo, verrà visualizzato un menù a tendina con le opzioni di logout e il link services (vedi @services).
#figure(
  image("../assets/dropdown-menu-navbar.png"), caption: "Navbar con il menù a tendina."
)

Se si sceglie di effettuare il logout, si dovrà confermare la scelta e si verrà reindirizzati alla pagina di login.
