#import "funzioni_ausiliarie.typ": *

==== SaveWorkflow
#figure(
    image("../../assets/backend_register_user_diagramma_classi.svg", width: 90%),
    caption: [Diagramma delle classi riguardante la funzionalità SaveWorkflow del backend.],
)

#linebreak()
*Classi e interfacce*

- *SaveWorkflowController*
    - Proprietà:
        - #declaration("- saveWorkflowUseCase: SaveWorkflowUseCase") #arrow porta di input per il servizio di business dedicato al salvataggio di un workflow;
        - #declaration("- workflowDTOValidator: WorkflowDTOValidator") #arrow oggetto per la validazione di un _WorkflowDTO_. 
    - Operazioni:
        - #declaration("+ saveWorkflow(workflow: WorkflowDTO, request: RequestHeader): WorkflowDTO") #arrow valida la richiesta verificando il JWT contenuto in _request_, da cui eventualmente recupera lo username. Prosegue con la validazione del _WorkflowDTO_ passato nel corpo della richiesta tramite l'oggetto _workflowDTOValidator_, se non ha successo solleva un'eccezione. Successivamente crea un _SaveWorkflowCommand_ necessario per chiamare il metodo _saveWorkflow_ definito in _saveWorkFlowUseCase_ e, se non vengono lanciate eccezioni, converte il workflow salvato per poi ritornare un _WorkflowDTO_, altrimenti gestisce le eccezioni sollevate.
    - Note:
        - in caso di eccezione di tipo _WorkflowNotFoundError_ ritorna status http 404;
        - in caso di eccezione che occorre durante la validazione del _WorkflowDTO_ ritorna status http 412;
        - in caso di altre eccezioni ritorna status http 500;
        - è utile avere dei metodi helper privati per convertire da _Workflow_ a _WorkflowDTO_ e viceversa.

- *SaveWorkflowUseCase* (interfaccia)
    - #declaration("+ saveWorkflow(cmd: SaveWorkflowCommand): Workflow").

- *SaveWorkflowService*
    - Proprietà:
        - #declaration("- saveWorkflowPort: SaveWorkflowPort") #arrow porta di output per il salvataggio di un _workflow_ sul database.
    - Operazioni:
        - #declaration("+ saveWorkflow(cmd: CreateWorkflowCommand): Workflow") #arrow implementa il metodo _saveWorkflow_ di _SaveWorkFlowUseCase_. Chiama il metodo _saveWorkflow_ di _saveWorkflowPort_ e ritorna il _workflow_ salvato, se invece non trova un workflow creato in precedenza con quel nome ritorna un'eccezione di tipo _WorkflowNotFoundError_.

- *SaveWorkflowPort* (interfaccia)
    - #declaration("+ saveWorkflow(username: string, workflow: Workflow): Workflow[0..1]").

- *WorkflowPortAdapter*
    - Proprietà:
        -  #declaration("- workflowRepository: WorkflowRepository") #arrow oggetto di persistence che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ saveWorkflow(username: string, workflow: Workflow): Workflow[0..1]") #arrow implementa il metodo _saveWorkflow_ della porta _SaveWorkflowPort_. Chiama il metodo _saveWorkflow_ del repository e poi, se l'output non è null, converte la _WorkflowEntity_ in _Workflow_ e lo ritorna, altrimenti ritorna null.
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità;
        - è utile avere dei metodi helper privati per convertire da _Workflow_ ad _WorkflowEntity_ e viceversa.

- *WorkflowRepository*
    - Proprietà:
        -  #declaration("- userEntityModel: Model<UserEntity>") #arrow oggetto fornito dalla libreria _mongoose_ che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ saveWorkflow(username: string, workflow: WorkflowEntity): WorkflowEntity[0..1]") #arrow attraverso il metodo _findOneAndUpdate_ di _userEntityModel_, lo _username_ e il nome del workflow da salvare, esegue una query sul database che cerca una _UserEntity_ con quel _username_ e il nome del workflow, se la trova, aggiorna il _workflow_ nella lista dei _workflows_ della _UserEntity_ e lo ritorna come _WorkflowEntity_. Se non trova la _UserEntity_ o non riesce ad aggiornare il _workflow_ ritorna null.
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità.
