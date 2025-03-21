#import "funzioni_ausiliarie.typ": *

==== DeleteWorkflow
#figure(
    image("../../assets/backend/register_user_diagramma_classi.svg", width: 90%),
    caption: [Diagramma delle classi riguardante la funzionalità DeleteWorkflow del backend.],
)

#linebreak()
*Classi e interfacce*

- *DeleteWorkflowController*
    - Proprietà:
        - #declaration("- deleteWorkflowUseCase: DeleteWorkflowUseCase") #arrow porta di input per il servizio di business dedicato all'eliminazione di un workflow;
        - #declaration("- workflowAdapterImplementation: WorkflowAdapterImplementation") #arrow oggetto che si occupa della conversione tra _Workflow_ e _WorkflowDTO_.
    - Operazioni:
        - #declaration("+ deleteWorkflow(workflowName: string, request: RequestHeader): WorkflowDTO") #arrow valida la richiesta verificando il JWT contenuto in _request_, da cui eventualmente recupera lo username. Successivamente crea un _DeleteWorkflowCommand_ necessario per chiamare il metodo _deleteWorkflow_ definito in _deleteWorkFlowUseCase_ e, se non vengono lanciate eccezioni, converte il workflow creato attraverso l'oggetto _workflowAdapterImplementation_ per poi ritornare un _WorkflowDTO_, altrimenti gestisce le eccezioni sollevate.
    - Note:
        - in caso di eccezione di tipo _WorkflowNotFoundError_ ritorna status http 400;
        - in caso di altre eccezioni ritorna status http 500.

- *DeleteWorkflowUseCase* (interfaccia)
    - #declaration("+ deleteWorkflow(cmd: DeleteWorkflowCommand): Workflow").

- *DeleteWorkflowService*
    - Proprietà:
        - #declaration("- deleteWorkflowPort: DeleteWorkflowPort") #arrow porta di output per l'eliminazione di un _workflow_ dal database.
    - Operazioni:
        - #declaration("+ deleteWorkflow(cmd: DeleteWorkflowCommand): Workflow") #arrow elimina il _workflow_ tramite la _deleteWorkflowPort_. Nel caso in cui il _workflow_ non esistesse, lancia un'eccezione di tipo _WorkflowNotFoundError_, altrimenti ritorna il _workflow_ eliminato.

- *DeleteWorkflowPort* (interfaccia)
    - #declaration("+ deleteWorkflow(username: string, workflowName: string): Workflow[0..1]").

- *WorkflowPortAdapter*
    - Proprietà:
        -  #declaration("- workflowRepository: WorkflowRepository") #arrow oggetto di persistence che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ deleteWorkflow(username: string, workflowName: string): Workflow[0..1]") #arrow metodo dichiarato nella porta _DeleteWorkflowPort_. Chiama il metodo _deleteWorkflow_ del repository e poi, se l'output non è null, converte la _WorkflowEntity_ in _Workflow_ e lo ritorna, altrimenti ritorna null.
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità;
        - è utile avere dei metodi helper privati per convertire da _WorkflowEntity_ a _Workflow_.

- *WorkflowRepository*
    - Proprietà:
        -  #declaration("- userEntityModel: Model<UserEntity>") #arrow oggetto fornito dalla libreria _mongoose_ che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ deleteWorkflow(username: string, workflowName: string): WorkflowEntity[0..1]") #arrow attraverso il metodo _getWorkflowByName_ di _WorkflowRepository_ cerca una _WorkflowEntity_ con quel _workflowName_ e, se non la trova, ritorna _null_ perché il _workflow_ non esiste. Successivamente, chiama il metodo _findOneAndUpdate_ di _userEntityModel_ con lo _username_, esegue una query sul database che cerca una _UserEntity_ con quel _username_, rimuove il _workflow_ dalla lista dei _workflows_ della _UserEntity_ e lo ritorna come _WorkflowEntity_. Se l'eliminazione del _workflow_ non va a buon fine ritorna null;
        #repository_operazioni_get_workflow
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità.
