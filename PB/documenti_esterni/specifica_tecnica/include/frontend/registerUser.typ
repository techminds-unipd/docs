#import "funzioni_ausiliarie.typ": declaration
==== RegisterUser
La registrazione è realizzata da 2 unità:
- RegisterService, che interagisce con il backend per richiedere la registrazione;
- #declaration("useRegister"), che consente di accedere al metodo #declaration("register") contenuto da RegisterService.

*RegisterService*

RegisterService è una classe dotata di un unico metodo asincrono #declaration("register(username: string, password: string): Promise<RegisterResponse>"). Tale metodo prende come parametri due stringhe, una per lo username e una per la password, e ritorna una Promise di tipo RegisterResponse. Quest'ultima è un'interfaccia che contiene username e password. Il metodo richiede di effettuare la registrazione all'endpoint API offerto dalla funzionalità RegisterUser del backend (vedi @register-user).
L'esecuzione prosegue in base al codice di risposta ricevuto:
- Se le credenziali sono corrette (codice HTTP 201) la Promise viene risolta e lo username e la password criptata ricevuti dal backend vengono ritornati tramite un oggetto di tipo RegisterResponse;
- Se le credenziali sono errate (codice HTTP 401), viene lanciato un Error con il messaggio "Username already exists";
- Se c'è stato un errore lato server (codice HTTP 500), viene lanciato un Error con il messaggio "Server error" e la Promise viene rifiutata;
- Se c'è stato un errore generico nell'esecuzione della richiesta, il metodo lancia un Error con il messaggio "Generic error" e la Promise viene rifiutata.



*useRegister*

#declaration("useRegister()") è un hook personalizzato da utilizzare nei componenti che necessitano delle informazioni e delle funzioni relative alla registrazione dell'utente. #declaration("useRegister") restituisce l'oggetto registerUser contenente username e password, e l'eventuale errore.
Se la registrazione non è andata a buon fine l'Error viene sovrascritto con \"Something went wrong\".