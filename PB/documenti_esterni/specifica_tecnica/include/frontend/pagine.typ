#import "../backend/funzioni_ausiliarie.typ": declaration

===== Home
La pagina Home ha il compito di presentare le funzionalità dell'applicazione all'utente.

In particolare contiene:
- Due componenti Typography, uno per il nome dell'applicazione e uno per il motto;
- Tre card che presentano le caratteristiche principali dell'applicazione. Ciascuna card è realizzata con i componenti Card e CardContent di MUI. Quest'ultimo contiene:
  - un Typography per l'intestazione della card;
  - un Typography per il testo della card;
  - solo per una card, un'immagine di esempio di un workflow.

Questi componenti sono stati disposti nella schermata utilizzando più componenti Grid2 di MUI annidati.

===== About us
#figure(
    image("../../assets/frontend/AboutUs.svg", width: 65%),
  caption: [Pagina About us.],
)
Questa pagina si trova nel percorso \"/aboutus\" e mostra le persone che hanno partecipato alla costruzione del sito, nonché un link alla pagina GitHub del gruppo.

La pagina è composta dai seguenti componenti React:
- Un'immagine con il logo del gruppo;
- Sette PersonCard con i nostri nomi e i link ai nostri profili GitHub;
- Un Typography con del testo che parla del gruppo;
- Un Link che punta al profilo GitHub del gruppo Tech Minds;
- Grid per impaginare.

===== Sign in
Questa pagina si trova nel percorso \"/signin\" e contiene il form per l'autenticazione.

La pagina contiene un unico componente personalizzato SignInForm, che contiene il form per effettuare il login.

===== Dashboard
// TODO inserire immagine

Il componente Dashboard rappresenta la pagina principale per gli utenti autenticati. Qui, gli utenti possono aggiungere o eliminare un workflow, viualizzare quelli esistenti e selezionare un singolo workflow da poter modificare o eseguire.

Il componente utilizza #declaration("useState()") per gestire il ricaricamento della lista dei workflow:
- shouldReload: stato booleano che determina se la lista dei workflow deve essere aggiornata;
- setShouldReload: funzione per modificare lo stato, permettendo il refresh della lista dopo la creazione o eliminazione di un workflow.
\
L'interfaccia della Dashboard è strutturata in due sezioni principali, entrambe centrate grazie al sistema Grid di MUI:
- Sezione di benvenuto e creazione workflow:
  - mostra un messaggio di benvenuto personalizzato; 
  - contiene il componente AddWorkflow, che permette di aggiungere un nuovo workflow e aggiorna la lista tramite setShouldReload.
- Sezione della lista dei workflow:
  - contiene il componente WorkflowList, che visualizza tutti i workflow dell'utente;
  - si aggiorna in base al valore di shouldReload.

===== Services
// TODO inserire immagine
Il componente Services rappresenta la pagina che permette all'utente autenticato di gestire il collegamento col proprio account Google e vedere quali servizi che potrà utilizzare nel workflow.

Il componente usa #declaration[useGoogleToken()] per gestire il collegamento dell'account Google, in particolare:
- googleToken: variabile che permette di controllare se il collegamento a Google è stato effettuato;
- removeGoogleToken: funzione che rimuove il collegamento dell'account Google;
- isTokenExpired: funzione che ritorna un valore booleano che segnala che il collegamento è scaduto.

Il componente è composto da:
- Varie Grid per impaginare il contenuto;
- Un Button per collegare e scollegare l'account, il cui testo e il comportamento cambiano in base allo stato del GoogleToken;
- Un GmailNode;
- Un CalendarNode;
- Un PastebinNode.

===== Add account
// TODO inserire immagine anche se non so se sia necessaria in questo caso.
Questo componente rappresenta una pagina di servizio, necessaria per salvare il token dell'account Google e la data della sua scadenza. Questa pagina è la destinazione del redirect da parte del backend. Per accedere ai dati del token, contenuto nella query string, si fa uso dell'hook #declaration[useSearchParams()].

Nella query string sono presenti i seguenti parametri:
- token: il contenuto del token generato da Google durante la connessione dell'account;
- expireDate: la data e l'ora di scadenza del token in formato ISO 8601.

È infine presente un singolo Button da premere nel caso in cui il redirect non sia avvenuto automaticamente.