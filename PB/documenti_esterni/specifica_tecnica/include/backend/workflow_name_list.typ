//#import "funzioni_ausiliarie.typ": *
#import "functions.typ": declaration, arrow

==== WorkflowNameList
#figure(
    image("../../assets/backend_register_user_diagramma_classi.svg", width: 90%),
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
        - in caso di eccezione di tipo _UserNotFoundError_ ritorna status http 400;
        - in caso di altre eccezioni ritorna status http 500.

- *WorkflowNameListUseCase* (interfaccia)
    - Operazioni:
        - #declaration("+ getWorkflowNameList(username: string): string*").

- *WorkflowNameListService*
    - Proprietà:
        - #declaration("- getUserWorkflowPort: GetUserWorkflowPort") #arrow porta di output per il recupero di tutti i workflow di un utente dal database.
    - Operazioni:
        - #declaration("+ getWorkflowNameList(username: string): string*") #arrow implementa _getWorkflowNameList_ di _WorkflowNameListUseCase_. Chiama il metodo _getAllWorkflowByUsername_ della porta _GetUserWorkflowPort_, se restituisce null viene sollevata un'eccezione di tipo _UserNotFoundError_, altrimenti restituisce la lista dei _workflow_ dell'utente. Successivamente, per ogni _workflow_, ne recupera il nome e lo aggiunge alla lista di _string_ che verrà ritornata.

- *GetUserWorkflowPort* (interfaccia)
    - #declaration("+ getAllWorkflowByUsername(username: string): Workflow[0..1]").


- *WorkflowPortAdapter*
    - Proprietà:
        -  #declaration("- workflowRepository: WorkflowRepository") #arrow oggetto di persistence che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ getAllWorkflowByUsername(username: string): Workflow[0..1]") #arrow metodo dichiarato nella porta _GetUserWorkflowPort_. Chiama il metodo _getAllWorkflowByUsername_ del repository e poi, se l'output non è null, converte la lista di _WorkflowEntity_ in una lista di _Workflow_ e la ritorna, altrimenti ritorna null.
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità;
        - è utile avere dei metodi helper privati per convertire da _Workflow_ ad _WorkflowEntity_ e viceversa.

- *WorkflowRepository*
    - Proprietà:
        -  #declaration("- userEntityModel: Model<UserEntity>") #arrow oggetto fornito dalla libreria _mongoose_ che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ getAllWorkflowByUsername(username: string): WorkflowEntity[0..1]") #arrow attraverso il metodo _findOne_ di _userEntityModel_ e lo _username_, esegue una query sul database che cerca una _UserEntity_ con quel _username_, se la trova viene recuperata la lista di _WorkflowEntity_ associata all'_UserEntity_ e ritornata. Se non trova l'_UserEntity_ ritorna null.
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità.
