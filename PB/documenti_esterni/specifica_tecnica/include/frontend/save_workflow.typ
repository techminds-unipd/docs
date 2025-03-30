#import "../backend/funzioni_ausiliarie.typ": declaration

==== SaveWorkflow
*SaveWorkflowService*
#figure(
  image("../../assets/frontend/SaveWorkflowService.svg", width: 70%),
  caption: [Classe SaveWorkflowService.]
)

SaveWorkflowService è una classe che si occupa di salvare un workflow inviando una richiesta PUT a un'API REST.

La classe contiene un unico metodo, #declaration("saveWorkflow(workflow: WorkflowDTO, accessToken: string): Promise<WorkflowDTO>"), che invia una richiesta al server con i dati del workflow da salvare, ovvero nome, nodi e archi.
Gestisce le risposte del server nel seguente modo:
- Se la richiesta ha successo (200), restituisce un oggetto WorkflowDTO con i dati aggiornati del workflow, inclusi il nome, i nodi e gli archi;
- Se si verifica un errore, genera un Error specifico utilizzando il messaggio fornito dalla risposta.

*useSaveWorkflow*

#declaration("useSaveWorkflow(saveWorkflowService: SaveWorkflowService): Promise<WorkflowDTO>") è un hook React personalizzato che permette di salvare un workflow utilizzando il servizio SaveWorkflowService, gestendo automaticamente il processo di salvataggio. L'hook restituisce una funzione #declaration("saveWorkflow(workflow: WorkflowDTO): Promise<WorkflowDTO>") che accetta un oggetto WorkflowDTO come parametro e restituisce un oggetto WorkflowDTO.

L'hook utilizza la variabile user recuperata tramite l'hook #declaration[useAuth()] per verificare che l'utente sia autenticato prima di eseguire il salvataggio del workflow. Se l'utente è autenticato, invoca il metodo #declaration("saveWorkflow(workflow: WorkflowDTO, accessToken: string): Promise<WorkflowDTO>") di SaveWorkflowService passando il workflow e il token di accesso dell'utente.

Se la richiesta ha successo, la funzione restituisce l'oggetto WorkflowDTO aggiornato con i dati del workflow. In caso contrario, la funzione rilancia gli errori lanciati da SaveWorkflowService delegando il controllo al chiamante.

Il funzionamento del salvataggio è quindi gestito all'interno della funzione #declaration[saveWorkflow], che può essere invocata da qualsiasi componente React che utilizza questo hook.
