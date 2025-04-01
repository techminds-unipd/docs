#import "../backend/funzioni_ausiliarie.typ": declaration

=== Pagine
==== Home
La pagina Home ha il compito di presentare le funzionalità dell'applicazione all'utente.

In particolare contiene:
- Due componenti Typography, uno per il nome dell'applicazione e uno per il motto;
- Tre card che presentano le caratteristiche principali dell'applicazione. Ciascuna card è realizzata con i componenti Card e CardContent di MUI. Quest'ultimo contiene:
  - un Typography per l'intestazione della card;
  - un Typography per il testo della card;
  - solo per una card, un'immagine di esempio di un workflow.

Questi componenti sono stati disposti nella schermata utilizzando più componenti Grid2 di MUI annidati.

==== About us
Questa pagina si trova nel percorso \"/aboutus\" e mostra le persone che hanno partecipato alla costruzione del sito, nonché un link alla pagina GitHub del gruppo.

La pagina è composta dai seguenti componenti React:
- Un'immagine con il logo del gruppo;
- Sette PersonCard con i nostri nomi e i link ai nostri profili GitHub;
- Un Typography con del testo che parla del gruppo;
- Un Link che punta al profilo GitHub del gruppo Tech Minds;
- Grid2 per impaginare.

==== Sign up
Questa pagina si trova nel percorso \"/signup\" e contiene un unico componente personalizzato, SignUpForm, che contiene il form per effettuare la registrazione.

==== Sign in
Questa pagina si trova nel percorso \"/signin\" e contiene il form per l'autenticazione.

La pagina contiene un unico componente personalizzato SignInForm, che contiene il form per effettuare il login.

==== Dashboard
La pagina Dashboard rappresenta la pagina principale per gli utenti autenticati. Qui, gli utenti possono aggiungere o eliminare un workflow, visualizzare quelli esistenti e selezionare un singolo workflow da poter modificare o eseguire.

Il componente utilizza #declaration("useState()") per gestire il ricaricamento della lista dei workflow:
- shouldReload: stato booleano che determina se la lista dei workflow deve essere aggiornata;
- setShouldReload: funzione per modificare lo stato, permettendo il refresh della lista dopo la creazione o eliminazione di un workflow.

L'interfaccia della Dashboard è strutturata in due sezioni principali, entrambe centrate grazie al sistema Grid di MUI:
- Sezione di benvenuto e creazione workflow:
  - mostra un messaggio di benvenuto personalizzato; 
  - contiene il componente AddWorkflow, che permette di aggiungere un nuovo workflow e aggiorna la lista tramite setShouldReload.
- Sezione della lista dei workflow:
  - contiene il componente WorkflowList, che visualizza tutti i workflow dell'utente;
  - si aggiorna in base al valore di shouldReload.

==== Services
La pagina Services rappresenta la pagina che permette all'utente autenticato di gestire il collegamento col proprio account Google e vedere quali servizi potrà utilizzare nel workflow.

Il componente usa #declaration[useGoogleToken()] per gestire il collegamento dell'account Google, in particolare:
- googleToken: variabile che permette di controllare se il collegamento a Google è stato effettuato;
- removeGoogleToken: funzione che rimuove il collegamento dell'account Google;
- isTokenExpired: funzione che ritorna un valore booleano che segnala che il collegamento è scaduto.

Il componente è composto da:
- Varie Grid per impaginare il contenuto;
- Un Button per collegare e scollegare l'account, il cui testo e il cui comportamento cambiano in base allo stato del GoogleToken;
- Un Typography che viene mostrato quando il token è scaduto;
- Un GmailNode;
- Un CalendarNode;
- Un PastebinNode.

Se il token non è presente o è scaduto il Button ha come destinazione il percorso del backend che si occupa di effettuare il redirect verso Google (nel nostro caso \http:\/\/localhost:3000/google/auth).

==== AddAccount
La pagina AddAccount è necessaria per salvare il token dell'account Google e la data della sua scadenza. Questa pagina è la destinazione del redirect da parte del backend. Per accedere ai dati del token, contenuto nella query string, si fa uso dell'hook #declaration[useSearchParams()].

Nella query string sono presenti i seguenti parametri:
- token: il contenuto del token generato da Google durante la connessione dell'account;
- expireDate: la data e l'ora di scadenza del token in formato ISO 8601.

È infine presente un singolo Button da premere nel caso in cui il redirect verso Services non sia avvenuto automaticamente.

==== Workflow
La pagina Workflow rappresenta un'interfaccia interattiva dove l'utente può visualizzare e modificare un workflow attraverso un'area canvas dinamica. In questa pagina, vengono visualizzati i nodi, gli archi e la descrizione dell'automazione di un workflow, permettendo di modificarlo grazie alla libreria ReactFlow. La pagina si costruisce attorno a un layout ben definito che utilizza un componente Grid fornito da MUI, che include un'area principale per l'interazione e una barra laterale per offrire funzionalità aggiuntive.

L'intera pagina è contenuta in un ReactFlowProvider, fornito dalla libreria ReactFlow.
Inoltre utilizza anche un context personalizzato chiamato DnDProvider. Questo contesto è utilizzato per definire lo stato e le operazioni relative al drag-and-drop, permettendo ai componenti figli di leggere e aggiornare lo stato DnD grazie all'hook personalizzato #declaration[useDnD()]. 

L'interazione principale avviene all'interno del componente WorkflowCanvas. Qui, l'utente può visualizzare e modificare il workflow. I nodi sono interattivi: l'utente può spostarli, aggiungere nuove connessioni o rimuovere quelle esistenti. Le modifiche ai nodi e alle connessioni vengono immediatamente riflesse nel modello di dati sottostante, mantenendo la pagina aggiornata in tempo reale.

Accanto a WorkflowCanvas, si trova la WorkflowSidebar, una barra laterale che fornisce i nodi da trascinare nella canvas.

Infine nella parte superiore della pagina si trova il componente WorkflowHeader, che visualizza il nome del workflow e due Button forniti da MUI, uno per l'esecuzione del workflow e uno per il salvataggio.

Quando un utente accede alla pagina, il workflow viene caricato dinamicamente grazie all'hook personalizzato #declaration("useGetWorkflow(getWorkflowService: GetWorkflowService): WorkflowDTO") che si occupa di recuperare il workflow tramite la funzione #declaration("getWorkflow(name: string): WorkflowDTO"). La funzione restituisce un oggetto di tipo WorkflowDTO, che viene poi convertito in un formato utilizzabile da ReactFlow.

Una volta che i dati sono stati recuperati e mappati, vengono salvati nello stato del componente tramite i metodi #declaration[setNodes] e #declaration[setEdges]. Questi stati contengono rispettivamente i nodi e gli archi del workflow, che vengono visualizzati nella canvas. Ogni nodo ha una posizione specifica, un'etichetta e un tipo.

