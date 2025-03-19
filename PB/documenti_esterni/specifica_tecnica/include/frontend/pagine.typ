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