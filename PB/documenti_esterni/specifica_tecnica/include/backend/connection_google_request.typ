#import "funzioni_ausiliarie.typ": *

==== ConnectionGoogleRequest
#figure(
    image("../../assets/backend/connection_google_request.svg", width: 40%),
    caption: [Diagramma delle classi riguardante la funzionalità ConnectionGoogleRequest del backend.],
)

#linebreak()
*Classi e interfacce*
- *ConnectionGoogleRequestController*
    - Proprietà:
        - #declaration("- connectionGoogleRequestUseCase: ConnectionGoogleRequestUseCase") #arrow porta di input per il servizio di business dedicato alla creazione della richiesta per il collegamento dell'account Google.
    - Operazioni:
        - #declaration("+ googleAuth(): RedirectUrlDTO") #arrow valida la richiesta verificando il _JWT_. Successivamente chiama il metodo _googleAuth_ di _connectionGoogleRequestUseCase_ e fa il redirect verso l'oggetto _RedirectUrlDTO_ che ritorna.

- *ConnectionGoogleRequestUseCase* (interfaccia)
    - #declaration("+ googleAuth(): string").

- *ConnectionGoogleRequestService*
    - Proprietà:
        - #declaration("- connectionGoogleRequestPort: ConnectionGoogleRequestPort") #arrow porta di output per la creazione dell'url per il redirect verso Google.
    - Operazioni:
        - #declaration("+ googleAuth(): string") #arrow chiama il metodo _getOAuth2ClientUrl_ di _connectionGoogleRequestPort_ e ritorna il risultato.

- *ConnectionGoogleRequestPort* (interfaccia)
    - #declaration("+ getOauth2ClientUrl(): string").

- *GoogleTokenPortAdapter*
    - Proprietà:
        - #declaration("- googleAuthRepository: GoogleAuthRepository") #arrow oggetto che si interfaccia con le librerie di Google.
    - Operazioni:
        - #declaration("+ getOauth2ClientUrl(): string") #arrow chiama il metodo _getOAuth2ClientUrl_ di _googleAuthRepository_ e ritorna il risultato.
  - Note:
      - sono state descritte solamente le operazioni utilizzate in questa funzionalità.

- *GoogleAuthRepository*
    - Proprietà:
      - #declaration("- scopesAPI: string*") #arrow lista degli scopes, ovvero la lista degli ambiti delle varie funzionalità da richiedere alle API di Google;
      - #declaration("- credentialsPath: string") #arrow path del file contenente le varie credenziali necessarie per le Google API.
  - Operazioni:
      - #declaration("+ getOAuth2ClientUrl(): string") #arrow crea un oggetto di tipo _OAuth2Client_ con le credenziali lette dal file in _credentialsPath_. Successivamente chiama il metodo _getAuthUrl_ sull'oggetto creato precendentemente e ritorna il suo risultato.
  - Note:
      - sono state descritte solamente le operazioni utilizzate in questa funzionalità.
