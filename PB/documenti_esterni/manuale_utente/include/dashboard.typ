== Dashboard
La pagina dashboard rappresenta il punto di partenza per l'utilizzo di Agent Flow. Per accedervi è sufficiente effettuare il login, dopo il quale si verrà immediatamente reindirizzati, oppure è presente il link all'interno della navbar. 

La @dashboard mostra la pagina dashboard non appena un utente senza workflow accede.

#figure(
  image("../assets/dashboard.png"), caption: "Pagina dashboard."
) <dashboard>

La dashboard offre tre funzionalità all'utente: creazione di un workflow, visualizzazione della lista dei workflow ed eliminazione di un workflow.

*Creazione di un workflow*
\ Per creare un workflow è sufficiente inserire il nome desiderato nel campo di input e premere il pulsante \"+\", come indicato in @add-workflow.

#figure(
  image("../assets/addWorkflow.png", width: 70%), caption: "Creazione di un workflow."
) <add-workflow>

Il nome inserito, per essere valido:
- Non deve essere vuoto;
- Deve essere univoco.

Se il nome non è valido verrà mostrato a schermo un messaggio di errore, come nei seguenti esempi:
#figure(
  image("../assets/nome-non-presente-workflow.png", width: 40%), caption: "Nome di un nuovo workflow non inserito."
)
#figure(
  image("../assets/nome-esistente-workflow.png", width: 40%), caption: "Nome di un nuovo workflow duplicato."
)

\
*Visualizzazione della lista dei workflow*
\ L'utente ha la possibilità di visualizzare tutti i workflow creati, dove per ogni workflow è presente un link che porta alla visualizzazione del singolo workflow e un bottone per eliminare il workflow.

#figure(
  image("../assets/lista-workflow.png", width: 90%), caption: "Lista dei workflow."
)

Se invece l'utente non ha creato nessun workflow verrà mostrato un messaggio.

#figure(
  image("../assets/lista-vuota.png", width: 90%), caption: "Lista vuota dei workflow."
)

\
*Eliminazione di un workflow*
\ Per eliminare un workflow è necessario schiacciare sul pulsante di eliminazione del workflow scelto. 

#figure(
  image("../assets/eliminazione-workflow.png", width: 90%), caption: "Eliminazione di un workflow."
)

Successivamente si aprirà una finestra di dialogo in cui si può confermare l'eliminazione del workflow.

#figure(
  image("../assets/conferma-eliminazione.png", width: 50%), caption: "Conferma di eliminazione di un workflow."
)

