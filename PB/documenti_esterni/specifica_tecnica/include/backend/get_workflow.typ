#import "funzioni_ausiliarie.typ": *

==== GetWorkflow
#figure(
    image("../../assets/backend/get_workflow.svg", width: 110%),
    caption: [Diagramma delle classi riguardante la funzionalità GetWorkflow del backend.],
)

#linebreak()
*Classi e interfacce*

- *GetWorkflowController*
    - Proprietà:
        - #declaration("- getWorkflowUseCase: GetWorkflowUseCase") #arrow porta di input per il servizio di business dedicato al recupero di un workflow;
        - #declaration("- workflowAdapterImplementation: WorkflowAdapterImplementation") #arrow oggetto che si occupa della conversione tra _Workflow_ e _WorkflowDTO_.
    - Operazioni:
        - #declaration("+ getWorkflow(workflowName: string, request: RequestHeader): WorkflowDTO") #arrow valida la richiesta verificando il JWT contenuto in _request_, da cui eventualmente recupera lo username. Successivamente crea un _GetWorkflowCommand_ necessario per chiamare il metodo _getWorkflow_ definito in _getWorkFlowUseCase_ e, se non vengono lanciate eccezioni, converte il workflow ottenuto attraverso l'oggetto _workflowAdapterImplementation_ per poi ritornare un _WorkflowDTO_, altrimenti gestisce le eccezioni sollevate.
    - Note:
        - la richiesta viene controllata dalla _AuthGuard_ offerta da NestJS che controlla la validità del JWT. Successivamente crea l'argomento _request_ che contiene lo _username_ per il metodo _getWorkflow_ del _GetWorkflowController_;
        - in caso di eccezione _WorkflowNotFoundError_ ritorna status HTTP 404;
        - per le altre eccezioni ritorna status HTTP 500.

- *GetWorkflowUseCase* (interfaccia)
    - #declaration("+ getWorkflow(cmd: GetWorkflowCommand): Workflow").

- *GetWorkflowService*
    - Proprietà:
        #service_proprietà_get_workflow_port
    - Operazioni:
        - #declaration("+ getWorkflow(cmd: GetWorkflowCommand): Workflow") #arrow riprende il _workflow_ dalla persistenza attraverso la _GetWorkflowPort_. Successivamente ritorna il _workflow_ se non è _null_, altrimenti lancia un'eccezione _WorkflowNotFoundError_.
    - Note:
        - GetWorkflowCommand è un oggetto che contiene lo _username_ e il _workflowName_.

#get_workflow_port_interfaccia

- *WorkflowPortAdapter*
    - Proprietà:
        -  #declaration("- workflowRepository: WorkflowRepository") #arrow oggetto di persistence che si interfaccia con il database.
    - Operazioni:
        #adapter_operazioni_get_workflow
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità;
        - è utile avere dei metodi helper privati per convertire da _Workflow_ a _WorkflowEntity_ e viceversa.

- *WorkflowRepository*
    - Proprietà:
        -  #declaration("- userEntityModel: Model<UserEntity>") #arrow oggetto fornito dalla libreria _mongoose_ che si interfaccia con il database.
    - Operazioni:
        #repository_operazioni_get_workflow
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità.
