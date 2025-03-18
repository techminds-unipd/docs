#import "funzioni_ausiliarie.typ": *

==== CreateWorkflow
#figure(
    image("../../assets/backend_register_user_diagramma_classi.svg", width: 90%),
    caption: [Diagramma delle classi riguardante la funzionalità CreateWorkflow del backend.],
)

#linebreak()
*Classi e interfacce*

- *CreateWorkflowController*
    - Proprietà:
        - #declaration("- createWorkflowUseCase: CreateWorkflowUseCase") #arrow porta di input per il servizio di business dedicato alla creazione di un workflow vuoto.
    - Operazioni:
        - #declaration("+ createWorkflow(workflowName: string, request: RequestHeader): WorkflowDTO") #arrow valida la richiesta verificando il JWT contenuto in _request_, da cui eventualmente recupera lo username. Successivamente crea un _CreateWorkflowCommand_ necessario per chiamare il metodo _createWorkflow_ definito in _createWorkFlowUseCase_ e, se non vengono lanciate eccezioni, converte il workflow creato per poi ritornare un _WorkflowDTO_, altrimenti gestisce le eccezioni sollevate.
    - Note:
        - in caso di eccezione di tipo _WorkflowAlreadyExistsError_ ritorna status http 400;
        - in caso di eccezione di tipo _WorkflowNotAddedError_ ritorna status http 500;
        - in caso di altre eccezioni ritorna status http 500;
        - è utile avere dei metodi helper privati per convertire da _Workflow_ a _WorkflowDTO_ e per creare il _CreateWorkflowCommand_.

- *CreateWorkflowUseCase* (interfaccia)
    - #declaration("+ createWorkflow(cmd: CreateWorkflowCommand): Workflow").

- *CreateWorkflowService*
    - Proprietà:
        - #declaration("- createWorkflowPort: CreateWorkflowPort") #arrow porta di output per la creazione di un _workflow_ vuoto sul database;
        #service_proprietà_get_workflow_port
    - Operazioni:
        - #declaration("+ createWorkflow(cmd: CreateWorkflowCommand): Workflow") #arrow controlla che il _workflow_ non esista già tramite la porta _getWorkflowPort_, in caso contrario lancia un'eccezione di tipo _WorkflowAlreadyExistsError_. Successivamente, crea il _workflow_ vuoto e procede a salvarlo tramite la _createWorkflowPort_. Nel caso in cui il salvataggio non andasse a buon fine lancia un'eccezione di tipo _WorkflowNotAddedError_, altrimenti ritorna il _workflow_ aggiunto.

- *CreateWorkflowPort* (interfaccia)
    - #declaration("+ addWorkflow(username: string, workflow: Workflow): Workflow[0..1]").

#get_workflow_port_interfaccia

- *WorkflowPortAdapter*
    - Proprietà:
        -  #declaration("- workflowRepository: WorkflowRepository") #arrow oggetto di persistence che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ addWorkflow(username: string, workflow: Workflow): Workflow[0..1]") #arrow metodo dichiarato nella porta _CreateWorkflowPort_. Chiama il metodo _addWorkflow_ del repository e poi, se l'output non è null, converte la _WorkflowEntity_ in _Workflow_ e lo ritorna, altrimenti ritorna null;
        #adapter_operazioni_get_workflow
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità;
        - è utile avere dei metodi helper privati per convertire da _Workflow_ ad _WorkflowEntity_ e viceversa.

- *WorkflowRepository*
    - Proprietà:
        -  #declaration("- userEntityModel: Model<UserEntity>") #arrow oggetto fornito dalla libreria _mongoose_ che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ addWorkflow(username: string, workflow: WorkflowEntity): WorkflowEntity[0..1]") #arrow attraverso il metodo _findOneAndUpdate_ di _userEntityModel_ e lo _username_, esegue una query sul database che cerca una _UserEntity_ con quel _username_ e, se la trova, aggiunge il _workflow_ alla lista dei _workflows_ della _UserEntity_ e lo ritorna come _WorkflowEntity_. Se non trova la _UserEntity_ o non riesce ad aggiungere il _workflow_ ritorna null;
        #repository_operazioni_get_workflow
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità.
