#import "funzioni_ausiliarie.typ": *

==== ConnectionGoogleResponse
#figure(
    image("../../assets/backend/register_user_diagramma_classi.svg", width: 90%),
    caption: [Diagramma delle classi riguardante la funzionalità ConnectionGoogleResponse del backend.],
)

#linebreak()
*Classi e interfacce*
- *ConnectionGoogleResponseController*
    - Proprietà:
        - #declaration("- connectionGoogleResponseUseCase: ConnectionGoogleResponseUseCase") #arrow porta di input per il servizio di business dedicato alla gestione della richiesta callback per il collegamento dell'account Google.
    - Operazioni:
        - #declaration("+ googleAuthCallback(code: string): TokenDTO") #arrow Chiama il metodo _getToken_ di _connectionGoogleResponseUseCase_ e converte il _Token_ ricevuto in un _TokenDTO_ per poi ritornarlo. Nel caso in cui la richiesta _getToken_ non andasse a buon fine ritorna status http 500.

- *ConnectionGoogleResponseUseCase* (interfaccia)
    - #declaration("+ getToken(code: string): Token").

- *ConnectionGoogleResponseService*
    - Proprietà:
        - #declaration("- connectionGoogleResponsePort: ConnectionGoogleResponsePort") #arrow porta di output per il recupero dei dati ricevuti nella callback.
    - Operazioni:
        - #declaration("+ getToken(code: string): Token") #arrow chiama il metodo _getAuthClientData_ di _connectionGoogleResponsePort_ e ritorna il risultato.

- *ConnectionGoogleResponsePort* (interfaccia)
    - #declaration("+ getAuthClientData(code: string): Token").

- *GoogleTokenPortAdapter*
    - Proprietà:
        - #declaration("- googleAuthRepository: GoogleAuthRepository") #arrow oggetto che si interfaccia con le librerie di Google.
    - Operazioni:
        - #declaration("+ getAuthClientData(code: string): Token") #arrow chiama il metodo _getAuthClientData_ di _googleAuthRepository_, converte il risultato in un _Token_ e infine lo ritorna.
  - Note:
      - sono state descritte solamente le operazioni utilizzate in questa funzionalità.

- *GoogleAuthRepository*
    - Proprietà:
      - #declaration("- scopesAPI: string*") #arrow lista degli scopes, ovvero la lista degli ambiti delle varie funzionalità da richiedere alle API di Google;
      - #declaration("- credentialsPath: string") #arrow path del file contenente le varie credenziali necessarie per le Google API.
  - Operazioni:
      - #declaration("+ getAuthClientData(code: string): GoogleTokenEntity") #arrow crea un oggetto di tipo _OAuth2Client_ con le credenziali lette dal file in _credentialsPath_. Successivamente chiama il metodo _getToken_ attraverso l'oggetto di tipo _OAuth2Client_ ottenendo _accessToken_, _refresh_token_ ed _expireDate_. Successivamente, attraverso il metodo _oauth2_ dell'oggetto _google_ fornito dalle _googleapis_ ottiene le info utente come la mail. Infine usa quello che ha ottenuto precedentemente per creare un _GoogleTokenEntity_ da ritornare.
  - Note:
      - sono state descritte solamente le operazioni utilizzate in questa funzionalità.
