== Backend

=== RegisterUser
#figure(
    image("../assets/backend_register_user_diagramma_classi.svg", width: 40%),
    caption: [Diagramma delle classi riguardante la funzionalità RegisterUser del backend.],
)

==== Application logic
La classe RegisterUserController gestisce le richieste dall'eserno.
Il metodo registerUser accetta uno UserDTO che contiene lo username e la password dell'utente che si vuole registrare.
Dopo aver validato lo UserDTO lo converte in User (business logic) e lo passa al metodo registerUser dell'interfaccia RegisterUserUseCase.

==== Business logic
La classe RegisterUserService implementa la porta di input RegisterUseCase.
Nel metodo registerUser verifica che non esistà già un altro utente registrato con lo stesso username (attraverso la GetUserPort) e si assicura che la password sia convertita in hash.
Se le operazioni precedenti hanno successo procede a registrare l'utente attraverso il metodo registerUser di RegisterUserPort.

==== Persistence logic
UserPortAdapter implementa le porte di output citate precedentemente e interfacciandosi con UserRepository va ad effettuare le operazioni sul database.
