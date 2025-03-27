#import "../backend/funzioni_ausiliarie.typ": declaration

==== WorkflowNameList
// TODO inserire immagine

*AllWorkflowsService*

AllWorkflowsService è una classe TypeScript che si occupa di recuperare la lista di tutti i workflow disponibili inviando una richiesta GET a un'API REST.

Quando viene istanziata, riceve un token di accesso necessario per autenticare la richiesta. Il metodo principale, #declaration("allWorkflows(): Promise<Array<string>>"), effettua una chiamata all'endpoint API corrispondente e gestisce i diversi casi di risposta:
- Se la richiesta ha successo (200), restituisce un array contenente i nomi dei workflow disponibili;
- Se l'utente non è valido o non è autorizzato (400), genera un errore specifico;
- Se si verifica un problema lato server (>=500), restituisce un errore generico;
- In qualsiasi altro caso, restituisce un errore predefinito.

*useAllWorkflows*

useAllWorkflow è un hook React personalizzato che permette di ottenere la lista di tutti i workflow disponibili utilizzando AllWorkflowsService, gestendo automaticamente il caricamento e gli eventuali errori.

L'hook utilizza tre variabili di stato:
- workflowList, che memorizza la lista dei workflow recuperati;
- isLoading, che indica se l'operazione è in corso;
- error, che contiene eventuali messaggi di errore.

L'hook recupera le informazioni dell’utente tramite #declaration("useAuth()"), assicurandosi che la richiesta venga eseguita solo se l’utente è autenticato. Se l’utente è autenticato, crea un'istanza di AllWorkflowsService con il token di accesso e invoca il metodo #declaration("allWorkflows()"). Se la richiesta ha successo, aggiorna lo stato con la lista dei workflow; altrimenti, aggiorna error con il messaggio corrispondente.

Al momento della prima visualizzazione del componente, l'hook avvia automaticamente il recupero dei workflow tramite #declaration("useEffect()"). Inoltre, fornisce la funzione #declaration("fetchWorkflows()"), che consente di eseguire nuovamente il recupero dei dati su richiesta.

L'hook restituisce quindi l'array workflowList contenente la lista dei workflow, insieme ai valori di stato isLoading e error e la funzione #declaration("fetchWorkflows()") per la gestione della UI.