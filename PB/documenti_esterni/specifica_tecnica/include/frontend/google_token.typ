#import "../backend/funzioni_ausiliarie.typ": declaration
#import "../../../../../template/template.typ": glossario

===== ConnectionGoogleRequest e ConnectionGoogleResponse
*GoogleTokenContext e GoogleTokenProvider*

GoogleTokenContext fornisce, tramite l'hook di React #declaration[createContext], un contesto per memorizzare e gestire le informazioni relative al token Google dell'utente.
Queste informazioni sono descritte dall'interfaccia GoogleAccountTokenType e sono:
- googleToken: un oggetto Typescript GoogleAccountToken che contiene la stringa token e l'expireDate in formato ISO 8601;
- #declaration[addGoogleToken(GoogleAccountToken)]: memorizza un GoogleAccountToken nel contesto e nel #glossario[local storage] del browser;
- #declaration[removeGoogleToken(GoogleAccountToken)]: cancella un GoogleAccountToken nel contesto e nel local storage del browser;
- #declaration[isTokenExpired()]: ritorna true se il token non esiste oppure è scaduto;
- error: stringa che contiene eventuali errori accaduti durante l'aggiunta o la rimozione del token. Se non sono presenti errori è null.

Se un componente vuole accedere a questo context deve essere figlio di GoogleTokenProvider e utilizzare l'hook #declaration[useGoogleToken()]. Per questo motivo, nel componente App, GoogleTokenProvider è genitore di tutti gli altri componenti (ad eccezione di AuthProvider).

*useGoogleToken*

#declaration[useGoogleToken()] è un hook personalizzato da utilizzare nei componenti che necessitano di gestire il GoogleToken. Questo hook restituisce un oggetto GoogleTokenContextType o lancia un Error che avvisa che il componente in cui viene chiamato deve essere contenuto in un GoogleTokenProvider.