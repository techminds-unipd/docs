#import "funzioni_ausiliarie.typ": declaration
==== RegisterUser
La registrazione è realizzata da 2 unità:
- RegisterService, che interagisce con il backend per richiedere la registrazione;
- #declaration("useRegister"), che consente di accedere al metodo #declaration("register") contenuto in RegisterService.

*RegisterService*
#figure(
  image("../../assets/frontend/RegisterService.svg", width: 40%),
  caption: [Classe RegisterService.]
)
RegisterService è una classe dotata di un unico metodo asincrono #declaration("register(user: UserDTO): Promise<UserDTO>"). Tale metodo prende come parametro uno UserDTO, e ritorna una Promise di tipo UserDTO. Il metodo richiede di effettuare la registrazione all'endpoint API offerto dalla funzionalità RegisterUser del backend (vedi @register-user).
L'esecuzione prosegue in base al codice di risposta ricevuto:
- Se le credenziali sono corrette (codice HTTP 201) la Promise viene risolta e lo username e la password criptata ricevuti dal backend vengono ritornati tramite un oggetto di tipo UserDTO;
- Se le credenziali sono errate (codice HTTP 401), viene lanciato un Error con il messaggio "Username already exists";
- Se c'è stato un errore lato server (codice HTTP 500), viene lanciato un Error con il messaggio "Server error" e la Promise viene rifiutata;
- Se c'è stato un errore generico nell'esecuzione della richiesta, il metodo lancia un Error con il messaggio "Generic error" e la Promise viene rifiutata.

*useRegister*

#declaration("useRegister(registerService: RegisterService): UseRegister") è un hook personalizzato da utilizzare nei componenti che necessitano delle informazioni e delle funzioni relative alla registrazione dell'utente. #declaration("useRegister") restituisce, attraverso l'interfaccia UseRegister, l'oggetto registerUser contenente uno UserDTO, e l'eventuale errore.
Se la registrazione non è andata a buon fine l'Error viene sovrascritto con \"Something went wrong\".