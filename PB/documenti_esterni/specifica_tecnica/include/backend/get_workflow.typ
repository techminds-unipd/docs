#import "functions.typ": declaration, arrow

==== GetWorkflow
#figure(
    image("../../assets/backend_login_user_diagramma_classi.svg", width: 70%),
    caption: [Diagramma delle classi riguardante la funzionalità GetWorkflow del backend.],
)

#linebreak()
*Classi e interfacce*

- *GetWorkflowController*
    - Proprietà:
        - #declaration("- getWorkflowUseCase: GetWorkflowUseCase") #arrow porta di input per il servizio di business dedicato al recupero di un workflow.
    - Operazioni:
        - #declaration("+ getWorkflow(workflowName: string, request: RequestHeader): WorkflowDTO") #arrow valida la richiesta verificando la validità del JWT contenuto in _request_, da cui eventualmente recupera lo username. Successivamente chiama il metodo _getWorkflow_ definito in _getWorkFlowUseCase_ e, se non vengono lanciate eccezioni, converte il workflow ottenuto per poi ritornare un _WorkflowDTO_, altrimenti gestisce le eccezioni sollevate.
    - Note:
        - la richiesta viene controllata dalla _AuthGuard_ offerta da NestJS che controlla la validità del JWT.
        - in caso di eccezione _WorkflowNotFoundError_ ritorna status http 404;
        - in caso di eccezione _InvalidTokenError_ ritorna status http 401;
        - per le altre eccezioni ritorna status http 500;
        - è utile avere dei metodi helper privati per convertire da _Workflow_ a _WorkflowDTO_ e viceversa.

- *GetWorkflowUseCase* (interfaccia)
    - Operazioni:
        - #declaration("+ getWorkflow(cmd: GetWorkflowCommand): Workflow").

- *GetWorkflowService*
    - Proprietà:
        - #declaration("- getUserPort: GetUserPort") #arrow porta di output per il recupero di uno _user_ dal database.
    - Operazioni:
        - #declaration("+ getWorkflow(cmd: GetWorkflowCommand): Workflow") #arrow riprende il _workflow_ dalla persistenza attraverso la _GetWorkflowPort_. Successivamente ritorna il _workflow_ se non è _null_, altrimenti lancia un'eccezione _WorkflowNotFoundError_.
    - Note:
        - GetWorkflowCommand è un oggetto che contiene lo _username_ e il _workflowName_.

- *GetWorkflowPort* (interfaccia)
    - #declaration("+ getWorkflowByName(username: string, workflowName: string): Workflow[0..1]").

- *WorkflowPortAdapter*
    - Proprietà:
        -  #declaration("- workflowRepository: WorkflowRepository") #arrow oggetto di persistence che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ getWorkflowByName(username: string, workflowName: string): Workflow[0..1]") #arrow metodo dichiarato nella porta _GetWorkflowPort_. Chiama il metodo _getWorkflowByName_ del repository e poi, se l'output non è _null_, lo converte in _Workflow_ e lo ritorna, altrimenti ritorna _null_.
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità;
        - è utile avere dei metodi helper privati per convertire da _Workflow_ a _WorkflowEntity_ e viceversa.

- *WorkflowRepository*
    - Proprietà:
        -  #declaration("- userEntityModel: Model<UserEntity>") #arrow oggetto fornito dalla libreria _mongoose_ che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ getWorkflowByName(username: string, workflowName: string): WorkflowEntity[0..1]") #arrow attraverso il metodo _findOne_ di _userEntityModel_, passandogli lo _username_ e il _workflowName_, esegue una query sul database che ritorna un oggetto che contiene una _WorkflowEntity_.
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità.
