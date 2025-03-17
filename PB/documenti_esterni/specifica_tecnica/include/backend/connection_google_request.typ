#import "funzioni_ausiliarie.typ": *

==== ConnectionGoogleRequest
#figure(
    image("../../assets/backend_register_user_diagramma_classi.svg", width: 90%),
    caption: [Diagramma delle classi riguardante la funzionalità ConnectionGoogleRequest del backend.],
)

#linebreak()
*Classi e interfacce*
- *ConnectionGoogleRequestController*
    - Proprietà:
        - #declaration("- connectionGoogleRequestUseCase: ConnectionGoogleRequestUseCase") #arrow porta di input per il servizio di business dedicato alla creazione della richiesta per il collegamento dell'account Google.
    - Operazioni:
        - #declaration("+ googleAuth(): string") #arrow valida la richiesta verificando il _JWT_. Successivamente chiama il metodo _googleAuth_ di _connectionGoogleRequestUseCase_ e fa il redirect verso la stringa che ritorna.

- *ConnectionGoogleRequestUseCase*
    - #declaration("+ googleAuth(): string").

- *ConnectionGoogleRequestService*
    - Proprietà:
        - #declaration("- connectionGoogleRequestPort: ConnectionGoogleRequestPort") #arrow porta di output per la creazione dell'url per il redirect verso Google.
    - Operazioni:
        - #declaration("- getOAuth2ClientUrl(): string") #arrow chiama il metodo _getOAuthClientUrl_ di _connectionGoogleRequestPort_ e ritorna il risultato.

- *ConnectionGoogleRequestPort*
    - #declaration("+ getOAuthClientUrl(): string").

- *GoogleTokenPortAdapter*
    - Proprietà:
        - #declaration("- googleAuthRepository: GoogleAuthRepository") #arrow oggetto di persistence che si interfaccia con le librerie di Google.
    - Operazioni:
        - #declaration("+ getOAuthClientUrl(): string") #arrow chiama il metodo _getOAuthClientUrl_ di _googleAuthRepository_ e ritorna il risultato.

- *GoogleAuthRepository*
    - Proprietà:
      - #declaration("- scopesAPI: string*") #arrow lista degli scopes da richiedere alle API di Google.
      - #declaration("- credentialsPath: string") #arrow path del file contenente le varie credenziali necessarie per le Google API.
  - Operazioni:
      - #declaration("+ getOAuthClientUrl(): string") #arrow crea un oggetto di tipo _OAuth2Client_ con le credenziali lette dal file in _credentialsPath_. Successivamente chiama il metodo _getAuthUrl_ sull'oggetto creato precendentemente e ritorna il suo risultato.
  - Note:
      - sono state descritte solamente le operazioni utilizzate in questa funzionalità.
