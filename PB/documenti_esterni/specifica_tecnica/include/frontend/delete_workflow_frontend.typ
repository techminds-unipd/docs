#import "../backend/funzioni_ausiliarie.typ": declaration


===== DeleteWorkflow
// TODO inserire le immagini

*DeleteWorkflowService*

DeleteWorkflowService è una classe TypeScript che gestisce l'eliminazione di un workflow inviando una richiesta DELETE a un'API REST.

Quando viene istanziata, la classe richiede un token di accesso, necessario per autenticare la richiesta. Il metodo principale, #declaration("deleteWorkflowByName(name: string): Promise<deleteWorkflowResponse>"), invia una richiesta DELETE all'endpoint API appropriato, utilizzando il nome del workflow come parametro nella URL.

Durante l'elaborazione, il servizio gestisce vari scenari di risposta:
- Se la cancellazione ha successo (200), restituisce il nome del workflow eliminato;
- Se il workflow non viene trovato (404), genera un errore specifico;
- Se si verifica un problema lato server (>=500), restituisce un errore generico;
- In qualsiasi altro caso, restituisce un errore predefinito.

*useDeleteWorkflow*

useDeleteWorkflow è un hook React personalizzato che permette di eliminare un workflow utilizzando la classe DeleteWorkflowService, gestendo automaticamente lo stato del caricamento e gli eventuali errori.

L'hook utilizza due variabili di stato:
- isLoading, che indica se l'operazione è in corso;
- error, che memorizza eventuali messaggi di errore.
L'hook recupera le informazioni dell'utente tramite #declaration("useAuth()"), assicurandosi che la richiesta venga inviata solo se l'utente è autenticato. Se l'utente è autenticato, crea un'istanza di DeleteWorkflowService utilizzando il token di accesso dell'utente. Invoca poi il metodo #declaration("deleteWorkflowByName(name)") per inviare la richiesta di eliminazione del workflow. In caso di successo, restituisce il risultato; in caso di errore, aggiorna lo stato error con il messaggio di errore corrispondente.

L'hook restituisce la funzione #declaration("deleteWorkflow") per invocare la cancellazione, insieme ai valori di stato isLoading e error per la gestione della UI.