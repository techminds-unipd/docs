#import "../backend/funzioni_ausiliarie.typ": declaration

===== CreateWorkflow

*NewWorkflowService*
// TODO inserire immagine

NewWorkflowService è una classe TypeScript che si occupa di creare un nuovo workflow inviando una richiesta a un'API REST.

Quando viene istanziata, riceve un token di accesso che serve per autenticare la richiesta. Il metodo principale, #declaration("newWorkflow(name: string): Promise<newWorkflowResponse>"), invia una richiesta POST all'endpoint API corrispondente, includendo il nome del nuovo workflow nel corpo della richiesta.

Durante l'elaborazione, il servizio gestisce diversi scenari:
- Se la creazione ha successo (201), restituisce il nome e la struttura del workflow;
- Se il nome è già in uso (400), genera un errore specifico;
- Se si verifica un problema lato server (>=500), restituisce un errore generico;
- In qualsiasi altro caso, restituisce un messaggio d’errore predefinito.

*useCreateWorkflow*

useCreateWorkflow è un hook React personalizzato che permette di creare un workflow utilizzando NewWorkflowService, gestendo automaticamente lo stato del caricamento e gli eventuali errori.

All’interno dell’hook vengono utilizzate due variabili di stato:
- isLoading, che indica se l’operazione è in corso;
- error, che memorizza eventuali messaggi di errore.
L'hook recupera anche le informazioni dell’utente tramite #declaration("useAuth()"), assicurandosi che la richiesta venga inviata solo se l’utente è autenticato. In questo caso crea un’istanza di NewWorkflowService con il token di accesso dell'utente. Invoca poi il metodo #declaration("newWorkflow(name)") che, in caso di successo, restituisce i dati al chiamante; altrimenti aggiorna lo stato d'errore con il messaggio di errore corrispondente.

L'hook restituisce la funzione #declaration("createWorkflow(name:string)") per invocare la cancellazione, insieme ai valori di stato isLoading e error per la gestione della UI.