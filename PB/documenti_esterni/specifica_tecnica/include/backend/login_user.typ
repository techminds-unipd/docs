#import "functions.typ": declaration, arrow

==== LoginUser
#figure(
    image("../../assets/backend_login_user_diagramma_classi.svg", width: 70%),
    caption: [Diagramma delle classi riguardante la funzionalità LoginUser del backend.],
)

#linebreak()
*Classi e interfacce*

- *LoginUserController*
    - Proprietà:
        - #declaration("- loginUserService: LoginUserUseCase") #arrow porta di input per il servizio di business dedicato al login dell'utente.
    - Operazioni:
        - #declaration("+ login(req: UserDTO): JWT") #arrow valida i dati nella richiesta e la converte in _User_. Successivamente chiama il metodo _loginUser_ definito in _LoginUserUseCase_ e, se non vengono lanciate eccezioni, crea e ritorna il token di autenticazione attraverso un _JWT_, altrimenti gestisce le eccezioni sollevate.

- *LoginUserUseCase* (interfaccia)
    - Operazioni:
        - #declaration("+ login(user: User): User").

- *LoginUserService*
    - Proprietà:
        - #declaration("- getUserPort: GetUserPort") #arrow porta di output per il recupero di uno user dal database.
    - Operazioni:
        - #declaration("+ login(user: User): User") #arrow riprende lo _user_ dalla persistenza attraverso la _GetUserPort_. Successivamente utilizza il metodo _compare_ della libreria _bcrypt_ per controllare che gli hash delle password dei due _user_ corrispondano. Se il controllo va a buon fine ritorna lo stesso _user_ della richiesta, altrimenti se non si trova lo _user_ o la password non corrisponde vengono lanciati rispettivamente _UserNotFoundError_ e _WrongPasswordError_.

- *GetUserPort* (interfaccia)
    - #declaration("+ getUserByUsername(username: string): User[0..1]").

- *UserPortAdapter*
    - Proprietà:
        -  #declaration("- userRepository: UserRepository") #arrow oggetto di persistence che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ getUserByUsername(username: string): User[0..1]") #arrow metodo dichiarato nella porta _GetUserPort_. Chiama il metodo _getUserByUsername_ del repository e poi, se l'output non è _null_, lo converte in _User_ e lo ritorna, altrimenti ritorna _null_.
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità;
        - è utile avere dei metodi helper privati per convertire da _User_ ad _UserEntity_ e viceversa.

- *UserRepository*
    - Proprietà:
        -  #declaration("- userEntityModel: Model<UserEntity>") #arrow oggetto fornito dalla libreria _mongoose_ che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ getUserByUsername(in username:string): UserEntity[0..1]") #arrow attraverso il metodo _findOne_ di _userEntityModel_, passandogli lo _username_, esegue una query sul database che ritorna una _UserEntity_.
    - Note:
        - sono state descritte solamente le operazioni utilizzate in questa funzionalità.
