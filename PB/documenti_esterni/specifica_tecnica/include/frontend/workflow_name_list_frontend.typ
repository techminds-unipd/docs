#import "../backend/funzioni_ausiliarie.typ": declaration

==== WorkflowNameList

*AllWorkflowsService*
#figure(
  image("../../assets/frontend/AllWorkflowsService.svg", width: 50%),
  caption: [Classe AllWorkflowsService.]
)

AllWorkflowsService è una classe TypeScript che si occupa di recuperare la lista di tutti i workflow disponibili inviando una richiesta GET a un'API REST.

La classe contiene un unico metodo, #declaration("allWorkflows(accessToken: string): string*"), che effettua una chiamata all'endpoint API corrispondente e gestisce i diversi casi di risposta:
- Se la richiesta ha successo (200), restituisce un array contenente i nomi dei workflow disponibili;
- Se l'utente non è valido o non è autorizzato (400), genera un errore specifico;
- Se si verifica un problema lato server (>=500), restituisce un errore generico;
- In qualsiasi altro caso, restituisce un errore predefinito.

*useAllWorkflows*

#declaration("useAllWorkflow(allWorkflowsService: AllWorkflowsService): IUseAllWorkflow") è un hook React personalizzato che permette di ottenere la lista di tutti i workflow disponibili utilizzando AllWorkflowsService, gestendo automaticamente il caricamento e gli eventuali errori. L'hook restituisce una IUseAllWorkflow, ovvero un'interfaccia che contiene la lista dei workflow, i parametri isLoading e error per la gestione della UI e la funzione  #declaration("fetchWorkflows()").

L'hook utilizza tre variabili di stato:
- workflowList, che memorizza la lista dei workflow recuperati;
- isLoading, che indica se l'operazione è in corso;
- error, che contiene eventuali messaggi di errore.

L'hook recupera le informazioni dell’utente tramite #declaration("useAuth()"), assicurandosi che la richiesta venga eseguita solo se l’utente è autenticato. Se l’utente è autenticato invoca il metodo #declaration("allWorkflows(accessToken)"). Se la richiesta ha successo, aggiorna lo stato con la lista dei workflow altrimenti, aggiorna error con il messaggio corrispondente.

Al momento della prima visualizzazione del componente, l'hook avvia automaticamente il recupero dei workflow tramite #declaration("useEffect()"). Inoltre, fornisce la funzione #declaration("fetchWorkflows()"), che consente di eseguire nuovamente il recupero dei dati su richiesta.
