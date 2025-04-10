#import "funzioni_ausiliarie.typ": *

==== ExecuteWorkflow
#figure(
    image("../../assets/backend/execute_workflow.svg", width: 110%),
    caption: [Diagramma delle classi riguardante la funzionalità ExecuteWorkflow del backend.],
)

#linebreak()
*Classi e interfacce*

- *ExecuteWorkflowController*
    - Proprietà:
        - #declaration("- executeWorkflowUseCase: ExecuteWorkflowUseCase") #arrow porta di input per il servizio di business dedicato all'esecuzione di un workflow;
        - #declaration("- httpService: HttpService") #arrow oggetto per la gestione delle chiamate HTTP;
        - #declaration("- workflowDTOValidator: WorkflowDTOValidator") #arrow oggetto per la validazione di un _WorkflowDTO_;
        - #declaration("- workflowAdapterImplementation: WorkflowAdapterImplementation") #arrow oggetto che si occupa della conversione tra _WorkflowDTO_ e _Workflow_.
    - Operazioni:
        - #declaration("+ executeWorkflow(executeReq: ExecuteWorkflowDTO): string") #arrow esegue tre tipi diversi di validazione prima di inoltrare la richiesta di esecuzione al service: verifica il JWT, la struttura del _workflowDTO_ tramite l'oggetto _workflowDTOValidator_ e infine la validità del _token_ di Google tramite l'oggetto _httpService_ che permette la chiamata HTTP ai servizi Google. Il _workflowDTO_ e il _token_ Google sono contenuti all'interno dell'oggetto di richiesta _executeReq_. Se qualche controllo fallisce viene lanciata un'eccezione esplicativa dell'errore. Se tutti i controlli vanno a buon fine, converte il _WorkflowDTO_ in _Workflow_ attraverso l'oggetto _workflowAdapterImplementation_ e crea un _ExecuteWorkflowCommand_ necessario per chiamare il metodo _executeWorkflow_ definito in _executeWorkFlowUseCase_. Se non vengono lanciate eccezioni, ritorna la stringa con il risultato dell'esecuzione del _workflow_, altrimenti gestisce le eccezioni sollevate.
    - Note:
        - in caso di invalidità del _token_ di Google ritorna status HTTP 401;
        - in caso di eccezione che occorre durante la validazione del _WorkflowDTO_ ritorna status HTTP 412;
        - in caso di altre eccezioni ritorna status HTTP 500.

- *ExecuteWorkflowUseCase* (interfaccia)
    - Operazioni:
        - #declaration("+ executeWorkflow(cmd: ExecuteWorkflowCommand): string").

- *ExecuteWorkflowService*
    - Proprietà:
        - #declaration("- executeWorkflowPort: ExecuteWorkflowPort") #arrow porta di output per l'esecuzione di un _workflow_.
    - Operazioni:
        - #declaration("+ executeWorkflow(cmd: ExecuteWorkflowCommand): string") #arrow implementa il metodo _executeWorkflow_ di _ExecuteWorkFlowUseCase_. Chiama il metodo _executeWorkflow_ di _ExecuteWorkflowPort_ e ritorna la stringa con il risultato dell'esecuzione del _workflow_.

- *ExecuteWorkflowPort* (interfaccia)
    - #declaration("+ executeWorkflow(workflow: Workflow, googleToken: Token): string").

- *WorkflowAgentAdapter*
    - Proprietà:
        -  #declaration("- agentRepository: AgentRepository") #arrow oggetto che si interfaccia con l'agente;
        -  #declaration("- configService: ConfigService") #arrow oggetto utilizzato per l'accesso alle variabili di configurazione.
    - Operazioni:
        - #declaration("+ executeWorkflow(workflow: Workflow, googleToken: Token): string") #arrow implementa il metodo _executeWorkflow_ della porta _ExecuteWorkflowPort_. Crea un oggetto di tipo _ExecuteData_, che contiene i dati necessari all'agente per l'esecuzione del _workflow_, come i nodi e le informazioni relative ai servizi Google, alcuni ottenuti da variabili di configurazione. Chiama il metodo _executeRequest_ del repository e ritorna la stringa con il risultato dell'esecuzione del _workflow_.

- *AgentRepository*
    - Proprietà:
        - #declaration("- httpService: HttpService") #arrow oggetto per la gestione delle chiamate HTTP.

    - Operazioni:
        - #declaration("+ executeRequest(executeData: ExecuteData): string") #arrow tramite l'oggetto _httpService_ esegue una chiamata HTTP all'agente con i dati necessari per l'esecuzione del _workflow_. Ritorna la stringa con il risultato dell'esecuzione, ottenuta dalla risposta dell'agente. Se la chiamata HTTP non va a buon fine lancia un'eccezione.
