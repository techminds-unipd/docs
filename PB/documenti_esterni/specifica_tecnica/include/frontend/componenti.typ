#import "../backend/funzioni_ausiliarie.typ": declaration

===== Footer
In ogni pagina è presente un componente Footer che utilizza i seguenti componenti di MUI:
- Grid2 per il layout;
- GitHubIcon per l'icona di GitHub;
- Link per il link all'organizzazione GitHub del gruppo;
- Typography per il testo.

===== CustomLink
// TODO da inserire immagine modificata (facciamo quando siamo sicuri non cambierà più nulla)
Il componente CustomLink è un componente React personalizzato che gestisce la navigazione all'interno della web app utilizzando React Router. Il suo scopo principale è evitare la creazione di link circolari, ossia link che puntano alla pagina in cui ci si trova attualmente. Per questo motivo, CustomLink viene utilizzato, ad esempio, all'interno del componente Navbar (vedi @navbar), per gestire i collegamenti del menu di navigazione.

Il componente accetta due props:
- name: il testo da visualizzare nel link;
- link: l'URL di destinazione;
- color: il colore da applicare al link. Questo può avere tre valori: "black", "white" o "main-color".
Grazie all'hook #declaration("useLocation()") di React Router, il componente può ottenere il percorso corrente dell'utente. Se il valore del link corrisponde al percorso attuale, CustomLink ritorna un componente Typography, evitando di generare un link cliccabile.
Se invece il percorso è diverso, viene restituito un componente Link di MUI, che utilizza la logica del componente Link di React Router. Questo permette di integrare correttamente la navigazione con l'estitica di MUI e le funzionalità offerte da React Router.

===== CustomButton
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

===== LogoutMenuItem
#figure(
    image("../../assets/frontend/LogoutMenuItem.svg", width: 65%),
  caption: [Componente LogoutMenuItem.],
)
Il componente LogoutMenuItem è un componente React personalizzato che gestisce la procedura di logout. Utilizza MUI per l'interfaccia utente e React Router per la navigazione. Il suo scopo è mostrare un'opzione di logout in un menu, aprire un dialogo di conferma e, se confermato, eseguire la procedura di logout e reindirizzare l'utente alla homepage.

Il componente accetta una prop:
- #declaration("handleCloseMenu()"): funzione che chiude il menu in cui è contenuto il pulsante di logout.

Il componente utilizza l'hook #declaration("useState()") per gestire l'apertura e la chiusura della finestra di dialogo. Quando l'utente clicca su \"Logout\", viene aperto un dialogo di conferma con due pulsanti:
- \"No\" chiude il dialogo senza effettuare il logout;
- \"Yes\" esegue il logout (#declaration("onClick(handleLogout: function)")) e reindirizza l'utente alla pagina principale utilizzando l'hook #declaration("useNavigate()") di React Router.

// DA AGGIORNARE CON LA LOGICA DI LOGOUT

===== Navbar <navbar>
// SECONDO ME L'IMMAGINE DEL DIAGRAMMA VA INSERITO PIù AVANTI PER CAPIRE MEGLIO COSA METTERE PER LA GESTIONE DELL'AUTENTICAZIONE

Il componente Navbar è una barra di navigazione personalizzata, realizzata con MUI e React Router. Fornisce un'interfaccia intuitiva per la navigazione tra le diverse pagine dell'applicazione, distinguendo tra utenti autenticati e non autenticati.

Il componente Navbar include:
- Il logo sulla sinistra;
- Il nome della web app;
- Una serie di link e bottoni di navigazione (gestiti con i componenti CustomLink e CustomButton);
- Un'icona che apre un menu a tendina con opzioni aggiuntive.

Le voci della Navbar cambiano in base allo stato di autenticazione:
- Utente non autenticato: vengono mostrati i pulsanti \"Sign In\" e \"Sign Up\" (gestiti con CustomButton);
- Utente autenticato: viene mostrato il link \"Dashboard\" e un'icona utente con menu a tendina. Quest'ultimo contiene un'opzione per accedere alla pagina \"Services\" e un'opzione di logout, gestita dal componente LogoutMenuItem.

// INSERIRE LA LOGICA DI NAVBAR LOGIN E NAVBAR LOGOUT

===== PersonCard
#figure(
    image("../../assets/frontend/PersonCard.svg", width: 65%),
  caption: [Componente PersonCard.],
)
La PersonCard è un componente React il cui scopo è mostrare il nome di una persona e fornire un link al suo profilo GitHub.

Il componente accetta due props:
- name: il nome della persona;
- GitHubUsername: uno username esistente di GitHub.

Il componente PersonCard è composto da:
- Un Box che racchiude tutti gli altri componenti;
- Un Avatar che applica una maschera a cerchio sull'immagine del profilo GitHub;
- Un Typography che contiene il nome della persona;
- Un Link che contiene la foto profilo e il nome dell'utente e ha come attributo #declaration[href] il profilo GitHub.

===== AddWorkflow
// TODO inserire immagine

Il componente AddWorkflow è un componente React personalizzato che permette agli utenti di creare un nuovo workflow. Viene utilizzato all’interno della pagina Dashboard.

Il componente accetta una prop:
- setShouldReload: funzione per aggiornare lo stato della lista dei workflow dopo la creazione di un nuovo elemento.
Grazie all’hook personalizzato #declaration("useCreateWorkflow()"), il componente può accedere al servizio per creare un nuovo workflow. L'input dell'utente viene gestito attraverso un campo di testo (TextField di MUI), e la creazione avviene al click dell'IconButton, che utilizza l'icona di aggiunta fornita da MUI.

Se il nome del workflow è valido, viene inviato al servizio dedicato tramite la funzione #declaration("createWorkflow()"), definita all'interno dell'hook prima citato. Se la creazione ha successo, viene mostrato un messaggio di conferma e la lista dei workflow viene aggiornata. In caso di errore, viene visualizzato un messaggio di avviso tramite il componente Snackbar di MUI.
Quest'ultimo ha quindi due varianti:
- success: se la creazione è andata a buon fine;
- error: se si è verificato un problema (ad esempio, nome duplicato o errore generico).
