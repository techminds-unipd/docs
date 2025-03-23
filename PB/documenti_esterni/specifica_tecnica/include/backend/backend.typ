#set list(marker: ([-], [•], [‣]))
#import "funzioni_ausiliarie.typ": *

== Backend

=== Introduzione
Come architettura logica del backend abbiamo scelto di usare l'architettura esagonale, dopo averla confrontata con l'architettura layered.

L'architettura esagonale è un pattern architetturale che ha come obiettivo principale quello di creare applicazioni lascamente accoppiate, rendendo i suoi layer facilmente rimpiazzabili, testabili e manutenibili.

L'architettura esagonale ci permette di avere i seguenti vantaggi:
- La business logic non dipende da altri layer ed è isolata;
- La struttura rigida ben definita permette di ottenere codice ben strutturato, evitando di cascare facilmente in alcuni errori tipici della programmazione ad oggetti;
- Facile da testare, visto che ogni layer è isolato (vale anche per la layered in questo caso).

Questa scelta ha anche dei lati negativi, ad esempio:
- La struttura rigida potrebbe richiedere più ore di codifica;
- Presenza di più codice, causato ad esempio dall'astrazione con le varie porte e relativi adapter.

=== Diagramma delle classi
#figure(
    image("../../assets/backend/diagramma_classi.svg", width: 55%),
  caption: [Diagramma delle classi della componente backend.],
)

=== Classi dati
Le classi dati sono le classi che rappresentano i dati che vengono scambiati tra i vari layer dell'applicazione. Queste classi sono state create per mantere il layer di business logic isolato dagli altri layer, come previsto dall'architettura esagonale. In generale i dati principali che vengono scambiati riguardano gli _User_ e i _Workflow_.

==== Application logic

- *UserDTO*, rappresenta un utente:
  - username: string;
  - password: string.

- *WorkflowDTO*, rappresenta un workflow formato da nodi e archi:
  - name: string;
  - nodes: NodeDTO[];
  - edges: EdgeDTO[].

- *NodeDTO*, rappresenta un nodo di un workflow:
  - id: number;
  - position: PositionDTO;
  - data: NodeDataDTO.

- *PositionDTO*, rappresenta la posizione di un nodo:
  - x: number;
  - y: number.

- *NodeDataDTO*, rappresenta il tipo di nodo (Gmail/Calendar/Pastebin):
  - label: string.

- *EdgeDTO*, rappresenta un arco orientato tra due nodi:
  - label: string;
  - source: number;
  - target: number.

- *TokenDTO*, rappresenta l'oggetto contenente il token di autenticazione di Google:
  - token: string;
  - regreshToken: string;
  - expireDate: Date.

- *WorkflowDTOValidator*, rappresenta la classe che si occupa della validazione della struttura di un _WorkflowDTO_:
  - #declaration("+ validate(workflow: WorkflowDTO)"), metodo che controlla i vari elementi di un workflow e lancia un'eccezione con http status 412 nel caso in cui il workflow sia invalido.

- *WorkflowAdapterImplementation*, rappresenta la classe che si occupa della logica di adattamento tra _WorkflowDTO_ e _Workflow_, utilizzata poi dai vari controller:
  - #declaration("+ toDomain(workflow: WorkflowDTO): Workflow"), metodo che converte un _WorkflowDTO_ in un _Workflow_;
  - #declaration("+ toDTO(workflow: Workflow): WorkflowDTO"), metodo che converte un _Workflow_ in un _WorkflowDTO_.

- *RequestHeader*, rappresenta l'header di una richiesta http, da cui si estrae lo _username_ dell'utente:
  - username: string.

- *JWT*, alias di tipo per il token JWT:
  - accessToken: string.

==== Business logic

- *User*, rappresenta un utente:
  - username: string;
  - password: string;
  - hashPassword(): User, metodo che ritorna l'utente con la password sotto forma di hash.

- *Workflow*, rappresenta un workflow con i nodi ordinati per ordine di esecuzione:
  - name: string;
  - nodes: Node[].

- *Node*, rappresenta un nodo di un workflow:
  - type: NodeType;
  - action: string, fa riferimento all'azione da eseguire dal nodo corrente a quello successivo, per questo motivo l'ultimo nodo della lista non ha un'azione associata;
  - position: Point.

- *NodeType*, enumerazione che rappresenta il tipo di nodo:
  - Gmail;
  - GCalendar;
  - Pastebin.

- *Point*, rappresenta la posizione di un nodo:
  - x: number;
  - y: number.

- *Token*, rappresenta l'oggetto contenente il token di autenticazione di Google:
  - token: string;
  - refreshToken: string;
  - expireDate: Date.

- *BusinessError*, classe astratta da cui derivano tutti gli errori di business:
  - name: string;
  - message: string.
  Gli errori di business personalizzati sono:
  - *UserAlreadyExistsError*, errore che viene lanciato quando un utente è già presente nel database;
  - *UserNotFoundError*, errore che viene lanciato quando un utente non è presente nel database;
  - *WrongPasswordError*, errore che viene lanciato quando la password non è corretta;
  - *WorkflowNotAddedError*, errore che viene lanciato quando un workflow non è stato aggiunto correttamente al database;
  - *WorkflowAlreadyExistsError*, errore che viene lanciato quando un workflow è già presente nel database;
  - *WorkflowNotFoundError*, errore che viene lanciato quando un workflow non è presente nel database.

==== Persistence logic

- *UserEntity*, rappresenta un utente con i suoi workflow, corrisponde allo _schema_ salvato nel database:
  - username: string;
  - password: string;
  - workflows: WorkflowEntity[].

- *WorkflowEntity*, rappresenta un workflow con i nodi ordinati per ordine di esecuzione:
  - name: string;
  - nodes: NodeEntity[].

- *NodeEntity*, rappresenta un nodo di un workflow:
  - type: string;
  - action: string, fa riferimento all'azione da eseguire dal nodo corrente a quello successivo, per questo motivo l'ultimo nodo della lista non ha un'azione associata;
  - positionX: number;
  - positionY: number.

- *GoogleTokenEntity*, rappresenta l'oggetto contenente il token di autenticazione di Google:
  - email: string;
  - refreshToken: string;
  - accesstoken: string;
  - expireDate: Date.

=== Funzionalità
#include("register_user.typ")
#include("login_user.typ")
#include("create_workflow.typ")
#include("workflow_name_list.typ")
#include("delete_workflow.typ")
#include("workflow_name_list.typ")
#include("get_workflow.typ")
#include("save_workflow.typ")
#include("execute_workflow.typ")
#include("connection_google_request.typ")
#include("connection_google_response.typ")


=== Design pattern utilizzati
- *Object Adapter*: il suo utilizzo è previsto in seguito alla scelta dell'architettura esagonale, in quanto permette di adattare gli oggetti tra i vari layer dell'applicazione. Le porte parlano ad oggetti di business logic, mentre gli adapter si occupano dell'adattamento dei dati, in particolare nel layer di application si hanno i _DTO_ mentre nel layer di persistence le _Entity_;
- *Parameter Object*: in alcuni casi si è scelto di utilizzare un oggetto per passare i parametri ad un metodo, in modo da rendere più leggibile il codice. Un esempio di utilizzo è la creazione di alcuni oggetti come _SaveWorkflowCommand_ che contiene i parametri necessari per il salvataggio di un workflow;
- *Decorator*: implementato da _NestJS_, il framework utilizzato per lo sviluppo del backend, permette di aggiungere metadati a classi, metodi e proprietà. I decorator vengono inoltre utilizzati per definire i vari componenti dell'applicazione, come i moduli e i controller, inclusi i vari endpoint delle API REST;
- *Module*: implementato da _NestJS_ attraverso il decoratore _\@Module_. Ogni modulo contiene i vari componenti dell'applicazione, come i controller, i service e i repository al fine di semplificare la gestione delle dipendenze e promuovere il riutilizzo del codice;
- *Dependency Injection*: viene implementato da _NestJS_, il quale permette di iniettare le dipendenze in modo automatico attraverso i decoratori _\@Injectable_ e _\@Inject_. La dipendenza viene iniettata nel costruttore della classe, in modo che il framework possa gestire la creazione dell'oggetto;
- *Factory*: utilizzato da _Mongoose_ per creare i vari modelli che rappresentano le entità del database. La factory viene utilizzata per creare un modello a partire da uno schema, in modo da poter interagire con il database.