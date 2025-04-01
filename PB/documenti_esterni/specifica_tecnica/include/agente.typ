#import "backend/funzioni_ausiliarie.typ": *
== Agente

=== Introduzione
Come architettura logica dell'agente abbiamo scelto di usare un'architettura layered, ritenendola più adatta per il nostro caso di utilizzo.
Data la complessità del backend e la scelta dell'architettura esagonale per esso, l'agente è stato progettato per essere più semplice, in modo da non appesantire in maniera significativa la codifica.

I layer che compongono l'architettura sono:
- *Application*: si occupa di gestire la validazione della richiesta;
- *Business*: contiene la logica di business dell'agente;
- *Persistence*: contiene i vari tool, i quali si interfacciano con gli attori esterni, che l'agente utilizza durante l'esecuzione dei workflow.

=== Diagramma delle classi
#figure(
    image("../assets/diagramma-agente.svg", width: 120%),
  caption: [Diagramma delle classi della componente agente.],
)

=== Application logic
- *WorkflowDTO*, rappresenta i dati della richiesta ricevuta dall'agente:
    - workflowNodes: ExecuteNode[];
    - googleTokenFile: GoogleTokenFile.

- *ExecuteNode*, rappresenta un nodo del workflow:
    - type: string;
    - action: string.

- *GoogleTokenFile*, rappresenta il token di autenticazione per l'accesso ai servizi Google:
    - token: string;
    - refresh_token: string;
    - tokenUri: string;
    - client_id: string;
    - client_secret: string;
    - scope: string[];
    - universeDomain: string;
    - account: string.

- *WorkflowController*
    - Proprietà:
        - #declaration("- workflowService: WorkflowService") #arrow servizio di business dedicato all'esecuzione dei workflow.
    - Operazioni:
        - #declaration("+ executeWorkflow(req: Request): string") #arrow crea un oggetto di tipo _WorkflowDTO_ a partire dalla richiesta ricevuta, se la richiesta non è valida ritorna un errore, altrimenti chiama il metodo _run_ definito in _workflowService_ e ritorna il risultato ottenuto.
    - Note:
        - nel caso la richiesta sia invalida oppure il workflow contenuto nella richiesta non sia valido ritorna status HTTP 400;
        - in caso di altre eccezioni ritorna status HTTP 500;
        - è utile avere dei metodi privati per la validazione della richiesta e del workflow.

=== Business logic
- *AgentResponse*, type alias per rappresentare la risposta dell'agente:
    - result: string;
- *WorkflowService*
    - Proprietà:
        - #declaration("- llm: BaseLanguageModel") #arrow modello di linguaggio base.
    - Operazioni:
        - #declaration("- run(workflowData: WorkflowDTO): AgentResponse") #arrow crea un token file temporaneo, recupera le credenziali per accedere ai servizi Google e crea i tools necessari per l'esecuzione del workflow. Successivamente itera su ogni coppia di nodi selezionando i tool adatti, dopodiché crea l'agente e lo esegue. Infine ritorna il risultato ottenuto.
    - Note:
        - è utile avere dei metodi privati per la creazione del token file e per la creazione dell'agente;
        - _BaseLanguageModel_ è un tipo fornito dalla libreria LangChain.

=== Persistence logic

- *BinSchema*
    - Proprietà:
        - #declaration("- message: string") #arrow schema che descrive il messaggio all'interno di un bin.
    
- *PastebinCreateBinTool*
    - Proprietà:
        - #declaration("- name: string") #arrow nome del tool;
        - #declaration("- description: string") #arrow descrizione del tool;
        - #declaration("- args_schema: BinSchema") #arrow schema degli argomenti del tool;
        - #declaration("- token: string") #arrow token di autenticazione per l'accesso ai servizi di Pastebin.
    - Operazioni:
        - #declaration("# _run(message): string") #arrow esegue la creazione di un bin contenente il messaggio di input su Pastebin.
    - Note:
        - la classe deriva da _BaseTool_, tipo offerto dalla libreria LangChain.

- *GCalendarCreateEventSchema*
    - Proprietà:
        - #declaration("- summary: string") #arrow titolo dell'evento;
        - #declaration("- location: string") #arrow luogo dell'evento;
        - #declaration("- description: string") #arrow descrizione dell'evento;
        - #declaration("- startDateTime: string") #arrow data di inizio dell'evento;
        - #declaration("- endDateTime: string") #arrow data di fine dell'evento.

- *GCalendarCreateEventTool*
    - Proprietà:
        - #declaration("- name: string") #arrow nome del tool;
        - #declaration("- description: string") #arrow descrizione del tool;
        - #declaration("- args_schema: EventSchema") #arrow schema degli argomenti del tool;
        - #declaration("- creds: Credentials") #arrow credenziali di autenticazione per l'accesso ai servizi di Google Calendar.
    - Operazioni:
        - #declaration("# _run(summary: string, location: string, description: string, startDateTime: string, endDateTime: string): string") #arrow esegue la creazione di un evento su Google Calendar.
    - Note:
        - la classe deriva da _BaseTool_, tipo offerto dalla libreria LangChain.

- *GCalendarSearchEventSchema*
    - Proprietà:
        - #declaration("- query: string") #arrow query di ricerca;
        - #declaration("- timeMin: string") #arrow data minima di inizio della ricerca;
        - #declaration("- timeMax: string") #arrow data massima di fine della ricerca.

- *GCalendarSearchEventTool*
    - Proprietà:
        - #declaration("- name: string") #arrow nome del tool;
        - #declaration("- description: string") #arrow descrizione del tool;
        - #declaration("- args_schema: SearchEventSchema") #arrow schema degli argomenti del tool;
        - #declaration("- creds: Credentials") #arrow credenziali di autenticazione per l'accesso ai servizi di Google Calendar.
    - Operazioni:
        - #declaration("# _run(query: string, timeMin: string, timeMax: string): string") #arrow esegue la ricerca di eventi su Google Calendar.
    - Note:
        - la classe deriva da _BaseTool_, tipo offerto dalla libreria LangChain.

#set list(marker: ([-], [•], [‣]))
=== Design pattern utilizzati
- *Strategy*: la classe _WorkflowService_ utilizza un _llm_ di tipo _BaseModel_ che funge da interfaccia per tutti i tipi di modelli LLM di _LangChain_, permettendo di scegliere il modello più adatto.
