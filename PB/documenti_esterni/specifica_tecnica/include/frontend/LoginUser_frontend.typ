#import "funzioni_ausiliarie.typ": declaration
==== LoginUser
L'autenticazione è realizzata da tre unità:
- LoginService, che interagisce con il backend per richiedere il login;
- AuthContext e AuthProvider, che rendono disponibili le informazioni e le funzioni per l'autenticazione all'interno della web app;
- #declaration("useAuth"), che consente di accedere al contesto fornito da AuthProvider nei componenti della web app in cui lo si vuole utilizzare.

*LoginService*
#figure(
  image("../../assets/frontend/LoginService.svg", width: 40%),
  caption: [Classe LoginService]
)
LoginService è una classe dotata di un unico metodo asincrono #declaration("login(user: UserDTO): Promise<LoginResponse>"). Tale metodo prende come parametro uno UserDTO, e ritorna una Promise di tipo LoginResponse. Quest'ultima è un'interfaccia che contiene come unico dato l'access token. Il metodo richiede di effetturare il login all'endpoint API offerto dalla funzionalità LoginUser del backend (vedi @login-user).
L'esecuzione prosegue in base al codice di risposta ricevuto:
- Se le credenziali sono corrette (codice HTTP 201) la Promise viene risolta e il token ricevuto dal backend viene ritornato tramite LoginResponse; 
- Se le credenziali sono errate (codice HTTP 401), viene lanciato un Error con il messaggio "wrong username or password";
- Se c'è stato un errore lato server (codice HTTP 500), viene lanciato un Error con il messaggio "Server error" e la Promise viene rifiutata;
- Se c'è stato un errore generico nell'esecuzione della richiesta, il metodo lancia un Error con il messaggio "Generic error" e la Promise viene rifiutata.

*AuthContext e AuthProvider*

AuthContext fornisce un contesto che, tramite l'uso dell'hook #declaration[createContext] di React, memorizza e rende disponibili le informazioni descritte dall'interfaccia AuthContextType, che contiene i dati:
- user, che può essere:
  - null se l'utente non è autenticato;
  - di tipo User se l'utente è autenticato. User è un'interfaccia che memorizza due stringhe: lo username e l'access token;
- #declaration("loginUser(userDTO: UserDTO): Promise<void>"), una funzione per effettuare il login;
- #declaration("logoutUser(): void"), una funzione per effettuare il logout;
- error, che contiene i messaggi di errore relativi all'autenticazione.
Per poter accedere a tale contesto, un componente deve essere figlio di AuthProvider e utilizzare l'hook personalizzato #declaration("useAuth()"). Data la necessità di inviare l'access token per l'utilizzo di molte funzionalità offerte dal backend, è stato deciso di rendere AuthProvider genitore di tutti i componenti presenti in App.

*useAuth*

#declaration("useAuth()") è un hook personalizzato da utilizzare nei componenti che necessitano delle informazioni e delle funzioni relative all'autenticazione dell'utente. #declaration("useAuth") restituisce un oggetto AuthContextType se il componente in cui è invocato è figlio di AuthProvider, altrimenti lancia un Error con un messaggio che informa della necessità di avere il Provider come genitore.