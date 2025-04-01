#import "../backend/funzioni_ausiliarie.typ": declaration

==== ExecuteWorkflow
*ExecuteWorkflowService*
#figure(
  image("../../assets/frontend/ExecuteWorkflowService.svg"),
  caption: [Classe ExecuteWorkflowService.]
)

La classe ExecuteWorkflowService è una classe dotata di un unico metodo: #declaration("executeWorkflow(workflow: WorkflowDTO, accessToken: string, googleToken: GoogleAccountToken): string") che si occupa di eseguire un workflow inviando una richiesta POST a un'API REST.

Il metodo prende tre parametri:
- workflow: un oggetto di tipo WorkflowDTO che contiene i dati relativi al flusso di lavoro che deve essere eseguito;
- accessToken: una stringa che rappresenta l'access token utilizzato per autenticare la richiesta;
- googleToken: un oggetto di tipo GoogleAccountToken, un'interfaccia che contiene le informazioni necessarie per autenticare la richiesta con Google (inclusi il token, il refresh token e la data di scadenza).

Il metodo ritorna una Promise\<string\>, che rappresenta il risultato dell'esecuzione del flusso di lavoro. Se la richiesta ha esito positivo, la Promise restituisce una stringa che rappresenta la risposta del backend.

Gestione della risposta:
- Se la risposta ha un codice di stato 201 (creato con successo), il metodo attende la risposta come testo e restituisce questo testo come risultato della Promise;
- Se la risposta ha un codice di stato diverso da 201, viene generata un'eccezione con un messaggio di errore. Il messaggio di errore è prelevato dalla risposta JSON, che si aspetta contenga una proprietà message con la descrizione dell'errore.


*useExecuteWorkflow*

#declaration("useExecuteWorkflow(executeWorkflowService: ExecuteWorkflowService): UseExecuteWorkflowInterface") è un hook React personalizzato che permette di eseguire un workflow utilizzando la classe ExecuteWorkflowService, gestendo automaticamente lo stato del caricamento. L'hook restituisce una UseExecuteWorkflowInterface, ovvero un'interfaccia che contiene la funzione #declaration("executeWorkflow(workflow: WorkflowDTO): string") per invocare l'esecuzione di un workflow e il parametro isLoading per la gestione dello stato di caricamento.

L'hook utilizza la seguente variabile di stato:
- isLoading, che indica se l'operazione è in corso.

L'hook recupera le informazioni dell'utente tramite #declaration("useAuth()"), assicurandosi che la richiesta venga inviata solo se l'utente è autenticato. Inoltre, l'hook utilizza #declaration("useGoogleToken()") per ottenere il token Google necessario per l'esecuzione del workflow. Se l'utente è autenticato e il token Google è disponibile, l'hook invoca il metodo #declaration("executeWorkflow(workflow: WorkflowDTO, accessToken: string, googleToken: GoogleAccountToken): string") per inviare la richiesta di esecuzione del workflow. Se l'utente non è autenticato o non ha collegato un account Google, viene generato un Error con il messaggio "Connect your Google account first!". 

In caso di successo, restituisce il risultato e aggiorna lo stato isLoading a false.
