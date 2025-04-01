#import "../backend/funzioni_ausiliarie.typ": declaration


==== DeleteWorkflow

*DeleteWorkflowService*
#figure(
  image("../../assets/frontend/DeleteWorkflowService.svg", width: 70%),
  caption: [Classe DeleteWorkflowService.]
)

DeleteWorkflowService è una classe TypeScript che gestisce l'eliminazione di un workflow inviando una richiesta DELETE a un'API REST.

La classe contiene un unico metodo, #declaration("deleteWorkflowByName(name: string, accessToken: string): DeleteWorkflowResponse"), che invia una richiesta DELETE all'endpoint API appropriato, utilizzando il nome del workflow come parametro nella URL.

Durante l'elaborazione, il servizio gestisce vari scenari di risposta:
- Se la cancellazione ha successo (200), restituisce il nome del workflow eliminato;
- Se il workflow non viene trovato (404), genera un errore specifico;
- Se si verifica un problema lato server (>=500), restituisce un errore generico;
- In qualsiasi altro caso, restituisce un errore predefinito.

*useDeleteWorkflow*

#declaration("useDeleteWorkflow(deleteWorkflowService: DeleteWorkflowService): IUseDeleteWorkflow") è un hook React personalizzato che permette di eliminare un workflow utilizzando la classe DeleteWorkflowService, gestendo automaticamente lo stato del caricamento e gli eventuali errori. L'hook restituisce una IUseDeleteWorkflow, ovvero un'interfaccia che contiene la funzione #declaration("deleteWorkflow(name:string): DeleteWorkflowResponse[0..1]") per invocare l'eliminazione di un workflow e i parametri isLoading e error per la gestione della UI.

L'hook utilizza due variabili di stato:
- isLoading, che indica se l'operazione è in corso;
- error, che memorizza eventuali messaggi di errore.
L'hook recupera le informazioni dell'utente tramite #declaration("useAuth()"), assicurandosi che la richiesta venga inviata solo se l'utente è autenticato. Se l'utente è autenticato invoca il metodo #declaration("deleteWorkflowByName(name, accessToken)") per inviare la richiesta di eliminazione del workflow. In caso di successo, restituisce il risultato; in caso di errore, aggiorna lo stato error con il messaggio di errore corrispondente.
