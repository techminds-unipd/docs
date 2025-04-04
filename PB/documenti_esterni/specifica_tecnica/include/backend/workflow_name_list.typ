#import "funzioni_ausiliarie.typ": *

==== WorkflowNameList
#figure(
    image("../../assets/backend/workflow_name_list.svg", width: 110%),
    caption: [Diagramma delle classi riguardante la funzionalità WorkflowNameList del backend.],
)

#linebreak()
*Classi e interfacce*

- *WorkflowNameListController*
    - Proprietà:
        - #declaration("- workflowNameListUseCase: WorkflowNameListUseCase") #arrow porta di input per il servizio di business dedicato al recupero di tutti i nomi dei workflow di un utente.
    - Operazioni:
        - #declaration("+ getWorkflowNameList(request: RequestHeader): string*") #arrow valida la richiesta verificando il JWT contenuto in _request_, da cui eventualmente recupera lo username. Successivamente chiama il metodo _getWorkflowNameList_ definito in _WorkflowNameListUseCase_ e, se non vengono lanciate eccezioni, ottiene una lista di _string_ e la ritorna, altrimenti gestisce le eccezioni sollevate.
    - Note:
        - in caso di eccezione di tipo _UserNotFoundError_ ritorna status HTTP 400;
        - in caso di altre eccezioni ritorna status HTTP 500.

- *WorkflowNameListUseCase* (interfaccia)
    - #declaration("+ getWorkflowNameList(username: string): string*").

- *WorkflowNameListService*
    - Proprietà:
        - #declaration("- getUserWorkflowsPort: GetUserWorkflowsPort") #arrow porta di output per il recupero di tutti i workflow di un utente dal database.
    - Operazioni:
        - #declaration("+ getWorkflowNameList(username: string): string*") #arrow implementa _getWorkflowNameList_ di _WorkflowNameListUseCase_. Chiama il metodo _getAllWorkflowByUsername_ della porta _GetUserWorkflowsPort_, se restituisce null viene sollevata un'eccezione di tipo _UserNotFoundError_, altrimenti restituisce la lista dei _workflow_ dell'utente. Successivamente, per ogni _workflow_, ne recupera il nome e lo aggiunge alla lista di _string_ che verrà ritornata.

- *GetUserWorkflowsPort* (interfaccia)
    - #declaration("+ getAllWorkflowByUsername(username: string): Workflow*").

- *WorkflowPortAdapter*
    - Proprietà:
        -  #declaration("- workflowRepository: WorkflowRepository") #arrow oggetto di persistence che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ getAllWorkflowByUsername(username: string): Workflow*") #arrow metodo dichiarato nella porta _GetUserWorkflowsPort_. Chiama il metodo _getAllWorkflowByUsername_ del repository e poi, se l'output non è null, converte la lista di _WorkflowEntity_ in una lista di _Workflow_ e la ritorna, altrimenti ritorna null.
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità;
        - è utile avere dei metodi helper privati per convertire _WorkflowEntity_ in _Workflow_.

- *WorkflowRepository*
    - Proprietà:
        -  #declaration("- userEntityModel: Model<UserEntity>") #arrow oggetto fornito dalla libreria _mongoose_ che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ getAllWorkflowByUsername(username: string): WorkflowEntity*") #arrow attraverso il metodo _findOne_ di _userEntityModel_ e lo _username_, esegue una query sul database che cerca una _UserEntity_ con quello _username_, se la trova viene recuperata la lista di _WorkflowEntity_ associata alla _UserEntity_ e ritornata. Se non trova la _UserEntity_ ritorna null.
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità.
