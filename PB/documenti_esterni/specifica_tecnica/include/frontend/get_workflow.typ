#import "../backend/funzioni_ausiliarie.typ": declaration

==== GetWorkflow
// TODO inserire immagine

*GetWorkflowService *

GetWorkflowService è una classe TypeScript che si occupa di recuperare un singolo workflow inviando una richiesta GET a un'API REST.

La classe contiene un unico metodo, #declaration("getWorkflow(name: string, accessToken: string): Promise<WorkflowDTO>"), che effettua una chiamata all'endpoint API corrispondente per ottenere i dettagli del workflow specificato dal parametro name e gestisce i diversi casi di risposta:
- Se la richiesta ha successo (200), istanzia e restituisce un oggetto WorkflowDTO con il nome, i nodi e gli archi del workflow;
- In caso di errore restituisce un Error con il messaggio di errore fornito dalla risposta.

*useGetWorkflow*

#declaration("useGetWorkflow(getWorkflowService: GetWorkflowService): Promise<WorkflowDTO>") è un hook React personalizzato che permette di recuperare un workflow specifico utilizzando il servizio GetWorkflowService, gestendo automaticamente il processo di recupero. L'hook restituisce una funzione #declaration("getWorkflow(name: string): Promise<WorkflowDTO>") che accetta il nome del workflow come parametro e restituisce un oggetto WorkflowDTO.

Grazie alla variabile user, recuperata tramite l'hook #declaration[useAuth()], l'hook si assicura che la richiesta venga eseguita solo se l'utente è autenticato.
In questo caso invoca il metodo #declaration("getWorkflow(name: string, accessToken: string): Promise<WorkflowDTO>") di GetWorkflowService, passando il nome del workflow e il token di accesso dell'utente.

Se la richiesta va a buon fine, la funzione restituisce l'oggetto WorkflowDTO contenente i dati del workflow. In caso contrario, la funzione rilancia gli errori lanciati da GetWorkflowService delegando il controllo al chiamante.

