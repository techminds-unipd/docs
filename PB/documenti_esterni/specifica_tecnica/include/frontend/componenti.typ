#import "../backend/funzioni_ausiliarie.typ": declaration

===== Footer
In ogni pagina è presente un componente Footer che utilizza i seguenti componenti di MUI:
- Grid2 per il layout;
- GitHubIcon per l'icona di GitHub;
- Link per il link all'organizzazione GitHub del gruppo;
- Typography per il testo.

===== CustomLink
#figure(
    image("../../assets/frontend/CustomLink.svg", width: 55%),
  caption: [Componente CustomLink.],
)
Il componente CustomLink è un componente React personalizzato che gestisce la navigazione all'interno della web app utilizzando React Router. Il suo scopo principale è evitare la creazione di link circolari, ossia link che puntano alla pagina in cui ci si trova attualmente. Per questo motivo, CustomLink viene utilizzato, ad esempio, all'interno del componente Navbar (vedi @navbar), per gestire i collegamenti del menu di navigazione.

Il componente accetta due props:
- name: il testo da visualizzare nel link;
- link: l'URL di destinazione.
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

===== CustomNode
/*#figure(
    image("../../assets/frontend/CustomNode.svg", width: 65%),
  caption: [Componente PersonCard.],
)*/
// TODO inserire immagine

Il componente CustomNode è un componente React personalizzato che rappresenta un servizio. 
Ogni nodo, a seguito di un click su di esso, mostra sullo schermo una Dialog che contiene le informazioni del servizio (viene chiamata la funzione #declaration[handleOpen]).
Ogni nodo può essere di input (in), output (out) o entrambi (in-out), ciò è necessario per l'uso nella pagina di creazione del workflow.
Ogni nodo può essere trascinabile, utile nella pagina di creazione dei workflow.
Il nodo può assumere un'estetica differente se è disabilitato.

Il componente accetta le seguenti props:
- nodeTitle: il nome del servizio;
- dialogTitle: il titolo della Dialog;
- dialogContent: le informazioni del servizio mostrate dalla Dialog;
- type: il tipo di blocco, che può essere "in", "out" o "in-out";
- disabled: un booleano che indica se il servizio è disabilitato;
- draggable: un booleano che indica se il blocco è trascinabile.

Il componente CustomNode è composto da:
- Un bottone decorato dall'icona InfoOutlinedIcon;
- Una Dialog con titolo (DialogTitle), contenuto (DialogContent) e un bottone all'interno delle DialogActions utile per chiudere la Dialog stessa attraverso la funzione #declaration[handleClose];;
- Il contenuto della Dialog è composto da un #declaration[Typography] e un #declaration[Divider].

I servizi che vengono visualizzati attraverso CustomNode sono Pastebin, Calendar e Gmail attraverso i seguenti nodi ad-hoc:
- #declaration[PastebinNode]\;
- #declaration[CalendarNode]\;
- #declaration[GmailNode].