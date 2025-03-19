===== Autenticazione
L'autenticazione è realizzata da tre unità:
- LoginService, che interagisce con il backend per richiedere il login;
- AuthContext e AuthProvider, che rendono disponibili le informazioni e le funzioni per l'autenticazione all'interno della web app;
- useAuth, che consente di accedere al contesto fornito da AuthProvider nei componenti della web app in cui lo si vuole utilizzare.

*LoginService*

LoginService è una classe dotata di un unico metodo asincrono: login. Tale metodo prende come parametri due stringhe, una per l'username e una per la password, e ritorna una Promise di tipo LoginReponse. Quest'ultima è un'interfaccia che contiene come unico dato l'access token. Il metodo richiede alla funzionalità LoginUser del backend (vedi @login-user) di effettuare il login. Se le credenziali sono corrette la Promise viene risolta e il token ricevuto dal backend viene ritornato tramite LoginResponse. Nel caso in cui le credenziali siano errate, ci sia un errore lato server o il frontend non riesca a contattare il backend, il metodo lancia un Error contenente un apposito messaggio e la Promise viene rifiutata.

*AuthContext e AuthProvider*

AuthContext fornisce un contesto che, tramite l'uso dell'hook createContext di React, memorizza e rende disponibili le informazioni descritte dall'interfaccia AuthContextType, che contiene i dati:
- User, che può essere:
  - null se l'utente non è autenticato;
  - di tipo User se l'utente è autenticato. User è un'interfaccia che memorizza due stringhe: l'username e l'access token;
- LoginUser, una funzione per effettuare il login;
- LogoutUser, una funzione per effettuare il logout;
- Error, che contiene i messaggi di errore relativi all'autenticazione.
Per poter accedere a tale contesto, un componente deve essere figlio di AuthProvider e utilizzare l'hook personalizzato useAuth. Data la necessità di inviare l'access token per l'utilizzo di molte funzionalità offerte dal backend, è stato deciso di rendere AuthProvider genitore del componente App, che a sua volta contiene tutti i componenti della web app.

*useAuth*

useAuth è un hook personalizzato da utilizzare nei componenti che necessitano delle informazioni e delle funzioni relative all'autenticazione dell'utente. useAuth restituisce un oggetto AuthContextType se il componente in cui è invocato è figlio di AuthProvider, altrimenti lancia un Errore con un messaggio che informa della necessità di avere il Provider come genitore.