== Sign Up
La pagina di sign up permette all'utente di registrarsi. Per poter creare un account è necessario inserire uno username, una password e la conferma della password. Successivamente basta cliccare sul pulsante _Sign Up_ e l'utente viene automaticamente reindirizzato alla pagina di login. All'interno di quest'ultima è poi necessario seguire quanto indicato in @signin. Se l'utente possiede già un account può cliccare sul link _Sign In_ e verrà reindirizzato alla pagina di login.

#figure(
  image("../assets/SignUp.png"), caption: "Pagina di sign up."
)

Lo username inserito deve essere univoco, se lo username scelto non è disponibile verrà indicato con un messaggio di errore. In tal caso è sufficiente riprovare con un altro username.

#figure(
  image("../assets/username-non-valido.png"), caption: "Username non valido."
)

Per quanto riguarda la password, l'utente deve seguire delle regole per garantire una sicurezza maggiore:
- Deve avere almeno 8 caratteri;
- Deve includere almeno una lettere maiscola;
- Deve includere almeno una lettera minuscola;
- Deve contenere almeno un numero;
- Deve contenere almeno un carattere speciale.

Esempio di password valida: TechMinds.1

Se la password inserita non rispetta i vincola sopra descritti è mostrato un messaggio d'errore.

Infine se le due password inserite non coincidono l'utente visualizza il seguente errore:
#figure(
  image("../assets/password-diverse.png"), caption: "Password non coincidono."
)