#import "../backend/funzioni_ausiliarie.typ": declaration

==== Footer
In ogni pagina è presente un componente Footer che utilizza i seguenti componenti di MUI:
- Grid2 per il layout;
- GitHubIcon per l'icona di GitHub;
- Link per il link all'organizzazione GitHub del gruppo;
- Typography per il testo.

==== CustomLink
// TODO da inserire immagine modificata (facciamo quando siamo sicuri non cambierà più nulla)
Il componente CustomLink è un componente React personalizzato che gestisce la navigazione all'interno della web app utilizzando React Router. Il suo scopo principale è evitare la creazione di link circolari, ossia link che puntano alla pagina in cui ci si trova attualmente. Per questo motivo, CustomLink viene utilizzato, ad esempio, all'interno del componente Navbar (vedi @navbar), per gestire i collegamenti del menu di navigazione.

Il componente accetta due props:
- name: il testo da visualizzare nel link;
- link: l'URL di destinazione;
- color: il colore da applicare al link. Questo può avere tre valori: "black" (di default), "white" o "main-color";
- fontSize: indica la dimensione del testo del link.
Grazie all'hook #declaration("useLocation()") di React Router, il componente può ottenere il percorso corrente dell'utente. Se il valore del link corrisponde al percorso attuale, CustomLink ritorna un componente Typography, evitando di generare un link cliccabile.
Se invece il percorso è diverso, viene restituito un componente Link di MUI, che utilizza la logica del componente Link di React Router. Questo permette di integrare correttamente la navigazione con l'estitica di MUI e le funzionalità offerte da React Router.

==== CustomButton
#figure(
    image("../../assets/frontend/CustomButton.svg", width: 55%),
  caption: [Componente CustomButton.],
)
Il componente CustomButton è un componente React personalizzato che gestisce i pulsanti di navigazione all'interno della web app. Il suo scopo è fornire un pulsante che consenta la navigazione tra le pagine.

Il componente accetta tre props:
- name: il testo da visualizzare sul pulsante;
- link: l'URL della pagina di destinazione;
- variant: il tipo di pulsante, che può essere \"contained\" o \"outlined\". 

In base alla prop \"variant\", la funzione #declaration("getButtonStyles(variant: string)") imposta i colori del pulsante in base alla variante selezionata.

Infine, come per CustomLink, utilizza il componente Link (rinominato RouterButton) di React Router per gestire correttamente la navigazione senza ricaricare la pagina.

==== LogoutMenuItem
#figure(
    image("../../assets/frontend/LogoutMenuItem.svg", width: 65%),
  caption: [Componente LogoutMenuItem.],
)
Il componente LogoutMenuItem è un componente React personalizzato che gestisce la procedura di logout. Utilizza MUI per l'interfaccia utente e React Router per la navigazione. Il suo scopo è mostrare un'opzione di logout in un menu, aprire un dialogo di conferma e, se confermato, eseguire la procedura di logout e reindirizzare l'utente alla homepage.

Il componente accetta una prop:
- #declaration("handleCloseMenu()"): funzione che chiude il menu in cui è contenuto il pulsante di logout.

Il componente utilizza l'hook #declaration("useState()") per gestire l'apertura e la chiusura della finestra di dialogo. Quando l'utente clicca su \"Logout\", viene aperto un dialogo di conferma con due pulsanti:
- \"No\", che chiude il dialogo senza effettuare il logout quando cliccato;
- \"Yes\", che quando cliccato esegue il logout chiamando la funzione #declaration("handleLogout()"). Quest'ultima invoca le funzioni #declaration("logoutUser()") e #declaration("removeGoogleToken()") fornite dai custom hook #declaration("useAuth()") e #declaration("useGoogleToken()") e reindirizza l'utente alla pagina principale utilizzando l'hook #declaration("useNavigate()") di React Router.

==== Navbar <navbar>
// SECONDO ME L'IMMAGINE DEL DIAGRAMMA VA INSERITO PIù AVANTI PER CAPIRE MEGLIO COSA METTERE PER LA GESTIONE DELL'AUTENTICAZIONE

Il componente Navbar è una barra di navigazione personalizzata, realizzata con MUI e React Router. Fornisce un'interfaccia intuitiva per la navigazione tra le diverse pagine dell'applicazione, distinguendo tra utenti autenticati e non autenticati.

Il componente Navbar include:
- Il logo sulla sinistra;
- Il nome della web app;
- Una serie di link e bottoni di navigazione (gestiti con i componenti CustomLink e CustomButton);
- Un'icona che apre un menu a tendina con opzioni aggiuntive.

Le voci della Navbar cambiano in base allo stato di autenticazione fornito dal contesto AuthContext:
- Utente non autenticato: vengono mostrati i pulsanti \"Sign In\" e \"Sign Up\" (gestiti con CustomButton);
- Utente autenticato: viene mostrato il link \"Dashboard\" e un'icona utente con menu a tendina. Quest'ultimo contiene un'opzione per accedere alla pagina \"Services\" e un'opzione di logout, gestita dal componente LogoutMenuItem.

==== PersonCard
/*#figure(
    image("../../assets/frontend/PersonCard.svg", width: 65%),
  caption: [Componente PersonCard.],
)*/
// TODO inserire immagine
La PersonCard è un componente React il cui scopo è mostrare il nome di una persona e fornire un link al suo profilo GitHub.

Il componente accetta due props:
- name: il nome della persona;
- GitHubUsername: uno username esistente di GitHub.

Il componente PersonCard è composto da:
- Un Box che racchiude tutti gli altri componenti;
- Un Avatar che applica una maschera a cerchio sull'immagine del profilo GitHub;
- Un Typography che contiene il nome della persona;
- Un Link che contiene l'Avatar e il Typography e ha come attributo #declaration[href] il profilo GitHub.

==== CustomNode
/*#figure(
    image("../../assets/frontend/CustomNode.svg", width: 65%),
  caption: [Componente PersonCard.],
)*/
// TODO inserire immagine

Il componente CustomNode è un componente React personalizzato che rappresenta un servizio tra Pastebin, Calendar e Gmail. 
Ogni nodo, a seguito di un click su di esso, apre una Dialog che contiene le informazioni del servizio (viene chiamata la funzione #declaration[handleOpen]).

I CustomNode vengono utilizzati nelle seguenti pagine:
- Workflow, dove i CustumNode vengono visualizzati e usati per creare un workflow;
- Services, dove i CustomNode vengono solo visualizzati.

Ogni nodo può essere:
- Di input (in), output (out) o entrambi (in-out);
- Trascinabile;
- Disabilitato (modifica solamente l'estetica del nodo).

Il componente accetta le seguenti props:
- nodeTitle: il nome del servizio;
- dialogTitle: il titolo della Dialog;
- dialogContent: le informazioni del servizio mostrate dalla Dialog;
- type: il tipo di nodo, che può essere \"in\", \"out\" o \"in-out\";
- disabled: un booleano che indica se il nodo è disabilitato;
- draggable: un booleano che indica se il nodo è trascinabile.

Il componente CustomNode è composto da:
- Un Button decorato dall'icona InfoOutlinedIcon;
- Una Dialog con titolo (DialogTitle), contenuto (DialogContent) e un bottone all'interno delle DialogActions utile per chiudere la Dialog stessa attraverso la funzione #declaration[handleClose];;
- Il contenuto della Dialog è composto da un Typography e un Divider.

I componenti che utilizzano CustomNode sono:
- PastebinNode;
- CalendarNode;
- GmailNode.

==== SignUpForm
// TODO inserire immagine

SignUpForm è un componente React che mostra il form per la registrazione.

Il componente usa i componenti di MUI:
- Un Card, per racchiudere tutto in una card grafica;
- Un Typography, per mostrare il titolo e il testo \"Don't have an account?\";
- Un Alert, per mostrare gli eventuali messaggi d'errore;
- Un Box, per contenere gli input del form;
- Un FormControl, un FormLabel e un TextField, per le label e gli input dello username, della password e della password di conferma;
- Un Button, per il bottone di submit;
- Un Divider, per visualizzare una linea orizzontale tra il form e il link al login.

I componenti personalizzati usati sono invece:
- Un CustomLink, per il link alla pagina di login;
- Un SignUpContainer, per la grafica del container del form.

SignUpForm si occupa di invocare la funzione #declaration("registerUser(user: UserDTO): Promise<{ user: UserDTO } | null>") fornita dal custom hook #declaration("useRegister(registerService: RegisterService): UseRegister"). Quando l'utente inserisce lo username, la passoword e la conferma della password, il componente SignUpForm verifica se i campi inseriti sono validi e rispettino i criteri di accettazione. Se il controllo va a buon fine viene istanziato uno UserDTO che viene poi passato come parametro alla funzione #declaration("registerUser").

==== SignInForm
SignInForm è un componente React che mostra il form per il login.

Il componente usa i componenti di MUI:
- Un Card, per racchiudere tutto in una card grafica;
- Un Typography, per mostrare il titolo e il testo \"Don't have an account?\";
- Un Alert, per mostrare gli eventuali messaggi d'errore;
- Un Snackbar e MuiAlert per mostrare il messaggio di successo, dopo il reindirizzamento a seguito di una registrazione avvenuta correttamente;
- Un Box, per contenere gli input del form;
- Un FormControl, FormLabel e TextField, per le label e gli input dello username e della password;
- Un Button, per il bottone di submit;
- Un Divider, per visualizzare una linea orizzontale tra il form e il link alla registrazione.

I componenti personalizzati usati sono invece:
- Un CustomLink, per il link alla registrazione;
- Un SignInContainer, per la grafica del container del form.

SignInForm si occupa di invocare la funzione #declaration("loginUser(user: UserDTO): Promise<void>") fornita dal custom hook #declaration("useAuth()"). Quando l'utente inserisce lo username e la password, il componente SignInForm verifica se i campi inseriti sono validi. Se il controllo va a buon fine viene istanziato uno UserDTO che viene poi passato come parametro alla funzione #declaration("login").

==== AddWorkflow
// TODO inserire immagine

Il componente AddWorkflow è un componente React personalizzato che permette agli utenti di creare un nuovo workflow. Viene utilizzato all’interno della pagina Dashboard.

Il componente accetta una prop:
- setShouldReload: funzione per aggiornare lo stato della lista dei workflow dopo la creazione di un nuovo elemento.
Grazie all’hook personalizzato #declaration("useCreateWorkflow(createWorkflowsService: CreateWorkflowService): IUseCreateWorkflow"), il componente può accedere al servizio per creare un nuovo workflow. L'input dell'utente viene gestito attraverso un campo di testo (TextField di MUI), e la creazione avviene al click dell'IconButton, che utilizza l'icona di aggiunta fornita da MUI.

Se il nome del workflow è valido, viene inviato al servizio dedicato tramite la funzione #declaration("createWorkflow(name: string): Promise<CreateWorkflowResponse | undefined>"), definita all'interno dell'hook prima citato. Se la creazione ha successo, viene mostrato un messaggio di conferma e la lista dei workflow viene aggiornata. In caso di errore, viene visualizzato un messaggio di avviso tramite il componente Snackbar di MUI.
Quest'ultimo ha quindi due varianti:
- success: se la creazione è andata a buon fine;
- error: se si è verificato un problema (ad esempio nome duplicato o errore generico).


==== WorkflowItem 
// TODO inserire immagine

Il componente WorkflowItem è un componente React personalizzato che rappresenta un singolo workflow all’interno della lista dei workflow. Viene utilizzato all’interno della pagina Dashboard.

Il componente accetta varie prop:
- name: il nome del workflow da visualizzare;
- setShouldReload: funzione per aggiornare lo stato della lista dei workflow dopo l'eliminazione di un elemento;
- setSnackBarSetMessage: funzione per impostare il messaggio per il componente Snackbar;
- setAlertColor: funzione per impostare il colore del componente Snackbar;
- setOpenSnackBar: funzione per rendere visibile il componente Snackbar.

Grazie all’hook personalizzato #declaration("useDeleteWorkflow(deleteWorkflowService: DeleteWorkflowService): IUseDeleteWorkflow"), il componente può accedere al servizio per eliminare un workflow. Il nome del workflow viene visualizzato come un CustomLink, mentre l'utente può avviare la procedura di eliminazione tramite un’IconButton contenente l'icona di cancellazione fornita da MUI.

Quando l’utente clicca sul pulsante di eliminazione, viene aperto un Dialog di MUI, che richiede una conferma prima di procedere con l'eliminazione. Se l'utente conferma, viene chiamata la funzione #declaration("deleteWorkflow(name: string): Promise<DeleteWorkflowResponse | undefined>"), definita all'interno dell'hook personalizzato. Se la cancellazione ha successo, la lista dei workflow viene aggiornata tramite setShouldReload.

==== WorkflowList
// TODO inserire immagine

Il componente WorkflowList è un componente React personalizzato che visualizza la lista dei workflow dell'utente. Viene utilizzato all’interno della pagina Dashboard.

Il componente accetta due prop:
- shouldReload: valore booleano che indica se la lista dei workflow deve essere ricaricata;
- setShouldReload: funzione per aggiornare lo stato e ricaricare la lista dei workflow dopo modifiche come l'aggiunta o l'eliminazione di un workflow.
Grazie all’hook personalizzato #declaration("useAllWorkflow(allWorkflowsService: AllWorkflowsService): IUseAllWorkflow"), il componente può recuperare l'elenco dei workflow dell'utente. Quando shouldReload è attivo, la funzione #declaration("refetch()") viene chiamata per aggiornare i dati e  setShouldReload viene impostato su false per evitare richiami ripetuti.

L’interfaccia mostra:
- Un titolo che introduce la sezione;
- Un Box di MUI contenente la lista dei workflow;
- Un messaggio informativo se l'utente non ha workflow disponibili;
- Un CircularProgress durante il caricamento;
- Un messaggio di errore se si verifica un problema nel recupero dei dati;
- L'elenco dei workflow, ciascuno rappresentato da un componente WorkflowItem.


==== PrivateRoute
// non credo serva l'immagine

Il componente PrivateRoute è un componente React personalizzato che viene utilizzato all'interno della configurazione di React Router per gestire l'area dedicata all'utente autenticato.

Il componente si basa sull'hook personalizzato #declaration("useAuth()") per verificare se l'utente ha effettuato il login. In tal caso, viene renderizzato il componente figlio attraverso Outlet.
Se l'utente non è autenticato, viene eseguito un reindirizzamento automatico alla pagina di SignIn tramite il componente Navigate di React Router. \
Viene utilizzato per proteggere le seguenti pagine:
- Dashboard;
- Workflow;
- Services.

==== AnonymousRoute
// non credo serva l'immagine

Il componente AnonymousRoute è un componente React personalizzato che impedisce agli utenti autenticati di accedere a determinate pagine pubbliche.

Il componente tilizza l'hook personalizzato #declaration("useAuth()") per verificare lo stato dell'autenticazione.
Se l'utente non è autenticato, viene renderizzato il componente figlio attraverso Outlet.
Se l'utente è autenticato, viene reindirizzato automaticamente alla pagina Dashboard tramite Navigate di React Router. \
AnonymousRoute viene utilizzato per proteggere le seguenti pagine, impedendo agli utenti autenticati di accedervi:
- SignIn;
- SignUp.

