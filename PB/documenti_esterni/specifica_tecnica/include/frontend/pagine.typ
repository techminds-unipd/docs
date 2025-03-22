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