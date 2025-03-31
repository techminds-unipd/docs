#import "../backend/funzioni_ausiliarie.typ": declaration

==== CreateWorkflow

*CreateWorkflowService*
#figure(
  image("../../assets/frontend/CreateWorkflowService.svg", width: 70%),
  caption: [Classe CreateWorkflowService.]
)

CreateWorkflowService è una classe TypeScript che si occupa di creare un nuovo workflow inviando una richiesta a un'API REST.

Quando viene istanziata, riceve un token di accesso che serve per autenticare la richiesta. Il metodo principale, #declaration("newWorkflow(name: string, accessToken: string): Promise<CreateWorkflowResponse>"), invia una richiesta POST all'endpoint API corrispondente, includendo il nome del nuovo workflow e l'access token nel corpo della richiesta. Tale metodo ritorna una Promise di tipo CreateWorkflowResponse, ovvero un'interfaccia che contiene come unico dato il nome del workflow creato.

Durante l'elaborazione, il servizio gestisce diversi scenari:
- Se la creazione ha successo (201), restituisce il nome e la struttura del workflow;
- Se il nome è già in uso (400), genera un errore specifico;
- Se si verifica un problema lato server (>=500), restituisce un errore generico;
- In qualsiasi altro caso, restituisce un messaggio d’errore predefinito.

*useCreateWorkflow*

#declaration[useCreateWorkflow(createWorkflowsService: CreateWorkflowService): IUseCreateWorkflow] è un hook React personalizzato che permette di creare un workflow utilizzando CreateWorkflowService, gestendo automaticamente lo stato del caricamento e gli eventuali errori. L'hook restituisce una IUseCreateWorkflow, ovvero un'interfaccia che contiene la funzione #declaration("createWorkflow(name:string): Promise<CreateWorkflowResponse | undefined>") per invocare la creazione di un nuovo workflow e i parametri isLoading e error per la gestione della UI.

All’interno dell’hook vengono utilizzate due variabili di stato:
- isLoading, che indica se l’operazione è in corso;
- error, che memorizza eventuali messaggi di errore.
L'hook recupera anche le informazioni dell’utente tramite #declaration("useAuth()"), assicurandosi che la richiesta venga inviata solo se l’utente è autenticato. In questo caso invoca il metodo #declaration("newWorkflow(name, accessToken)") che, in caso di successo, restituisce i dati al chiamante; altrimenti aggiorna lo stato d'errore con il messaggio di errore corrispondente.