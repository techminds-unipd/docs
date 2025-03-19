#import "funzioni_ausiliarie.typ": *

==== LoginUser <login-user>
#figure(
    image("../../assets/backend_login_user_diagramma_classi.svg", width: 70%),
    caption: [Diagramma delle classi riguardante la funzionalità LoginUser del backend.],
)

#linebreak()
*Classi e interfacce*

- *LoginUserController*
    - Proprietà:
        - #declaration("- loginUserUseCase: LoginUserUseCase") #arrow porta di input per il servizio di business dedicato al login dell'utente.
    - Operazioni:
        - #declaration("+ login(req: UserDTO): JWT") #arrow valida i dati nella richiesta e la converte in _User_. Successivamente chiama il metodo _login_ definito in _LoginUserUseCase_ e, se non vengono lanciate eccezioni, crea e ritorna il token di autenticazione attraverso un _JWT_, altrimenti gestisce le eccezioni sollevate.
    - Note:
        - in caso di eccezione _UserNotFoundError_ o _WrongPasswordError_ ritorna status http 400;
        - per le altre eccezioni ritorna status http 500;

- *LoginUserUseCase* (interfaccia)
    - #declaration("+ login(user: User): User").

- *LoginUserService*
    - Proprietà:
        #service_proprietà_get_user_port
        
    - Operazioni:
        - #declaration("+ login(user: User): User") #arrow riprende lo _user_ dalla persistenza attraverso la _GetUserPort_. Successivamente utilizza il metodo _compare_ della libreria _bcrypt_ per controllare che gli hash delle password dei due _user_ corrispondano. Se il controllo va a buon fine ritorna lo stesso _user_ della richiesta, altrimenti se non si trova lo _user_ o la password non corrisponde vengono lanciati rispettivamente _UserNotFoundError_ e _WrongPasswordError_.

#get_user_port_interfaccia

- *UserPortAdapter*
    - Proprietà:
        -  #declaration("- userRepository: UserRepository") #arrow oggetto di persistence che si interfaccia con il database.
    - Operazioni:
        #adapter_operazioni_get_user
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità;
        - è utile avere dei metodi helper privati per convertire da _User_ a _UserEntity_ e viceversa.

- *UserRepository*
    - Proprietà:
        -  #declaration("- userEntityModel: Model<UserEntity>") #arrow oggetto fornito dalla libreria _mongoose_ che si interfaccia con il database.
    - Operazioni:
        #repository_operazioni_get_user
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità.
