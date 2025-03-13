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
Grazie all'hook useLocation di React Router, il componente può ottenere il percorso corrente dell'utente. Se il valore di link corrisponde al percorso attuale, CustomLink mostra semplicemente il nome del link all'interno di un elemento Typography, evitando di generare un link cliccabile.
Se invece il percorso è diverso, viene restituito un componente Link di MUI, che utilizza LinkBehavior, una versione personalizzata di RouterLink di React Router. Questo permette di integrare correttamente la navigazione con MUI senza perdere le funzionalità offerte da React Router.

===== CustomButton
#figure(
    image("../../assets/frontend/CustomButton.svg", width: 55%),
  caption: [Componente CustomButton.],
)
Il componente CustomButton è un componente React personalizzato che gestisce i pulsanti di navigazione all'interno della web app. Il suo scopo è fornire un pulsante che consenta la navigazione tra le pagine.

Il componente accetta tre props:
- name: il testo da visualizzare sul pulsante;
- link: l'URL della pagina di destinazione;
- variant: il tipo di pulsante, che può essere "contained" o "outlined". 

In base alla prop "variant", la funzione #declaration("getButtonStyles(variant: string)") imposta i colori del pulsante in base alla variante selezionata.

Infine, come per CustomLink, utilizza ButtonBehavior per gestire correttamente la navigazione senza ricaricare la pagina.

===== LogoutMenuItem
#figure(
    image("../../assets/frontend/LogoutMenuItem.svg", width: 65%),
  caption: [Componente LogoutMenuItem.],
)
Il componente LogoutMenuItem è un componente React personalizzato che gestisce la procedura di logout. Utilizza MUI per l'interfaccia utente e React Router per la navigazione. Il suo scopo è mostrare un'opzione di logout in un menu, aprire un dialogo di conferma e, se confermato, eseguire la procedura di logout e reindirizzare l'utente alla homepage.

Il componente accetta una prop:
- handleCloseMenu: funzione che chiude il menu in cui è contenuto il pulsante di logout.

Il componente utilizza l'hook useState per gestire l'apertura e la chiusura della finestra di dialogo. Quando l'utente clicca su "Logout", viene aperto un dialogo di conferma con due pulsanti:
- "No" chiude il dialogo senza effettuare il logout;
- "Yes" esegue il logout (#declaration("onClick(handleLogout: function)")) e reindirizza l'utente alla pagina principale utilizzando l'hook useNavigate() di React Router..

// DA AGGIORNARE CON LA LOGICA DI LOGOUT

===== Navbar <navbar>
// SECONDO ME L'IMMAGINE DEL DIAGRAMMA VA INSERITO PIù AVANTI PER CAPIRE MEGLIO COSA METTERE PER LA GESTIONE DELL'AUTENTICAZIONE

Il componente Navbar è una barra di navigazione personalizzata, realizzata con MUI e React Router. Fornisce un'interfaccia intuitiva per la navigazione tra le diverse pagine dell'applicazione, distinguendo tra utenti autenticati e non autenticati.

Il componente Navbar include:
- Il logo sulla sinistra;
- Il nome della webapp;
- Una serie di link e bottoni di navigazione (gestiti con il componente CustomLink e CustomButton);
- Un'icona che apre un menu a tendina con opzioni aggiuntive.


Sono presenti due stati di visualizzazione in base all'autenticazione:
- Utente non autenticato: vengono mostrati i pulsanti "Sign In" e "Sign Up" (gestiti con CustomButton);
- Utente autenticato: vengono mostrati i link "Dashboard", "Workflow" e un'icona utente con menu a tendina. Quet'ultimo contiene un'opzione per accedere alla pagina "Services" e un'opzione di logout, gestita dal componente LogoutMenuItem, che apre una finestra di conferma.

// INSERIRE LA LOGICA DI NAVBAR LOGIN E NAVBAR LOGOUT

===== PersonCard