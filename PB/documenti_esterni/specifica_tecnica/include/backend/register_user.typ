#import "funzioni_ausiliarie.typ": *

==== RegisterUser <register-user>
#figure(
    image("../../assets/backend/register_user_diagramma_classi.svg", width: 90%),
    caption: [Diagramma delle classi riguardante la funzionalità RegisterUser del backend.],
)

#linebreak()
*Classi e interfacce*

- *RegisterUserController*
    - Proprietà:
        - #declaration("- registerUserUseCase: RegisterUserUseCase") #arrow porta di input per il servizio di business dedicato alla registrazione utente.
    - Operazioni:
        - #declaration("+ registerUser(req: UserDTO): UserDTO") #arrow valida i dati nella richiesta e la converte in _User_. Successivamente chiama il metodo registerUser definito in _RegisterUserUseCase_ e, se non vengono lanciate eccezioni, ritorna lo user registrato come _UserDTO_, altrimenti gestisce le eccezioni sollevate.
    - Note:
        - in caso di eccezione di tipo _UserAlreadyExistsError_ ritorna status http 400;
        - per le altre eccezioni ritorna status http 500;
        - la richiesta per registerUser viene validata attraverso le validation pipe di NestJS.
        - è utile avere dei metodi helper privati per convertire da _UserDTO_ ad _User_ e viceversa.

- *RegisterUserUseCase* (interfaccia)
    - #declaration("+ registerUser(user: User): User").

- *RegisterUserService*
    - Proprietà:
        - #declaration("- registerUserPort: RegisterUserPort") #arrow porta di output per la registrazione utente sul database;
        #service_proprietà_get_user_port
    - Operazioni:
        - #declaration("+ registerUser(user: User): User") #arrow controlla che lo _username_ utente che si vuole registrare non esista già, in caso contrario lancia una eccezione di tipo _UserAlreadyExistsError_. Successivamente, con il metodo _hashPassword_ di _User_, esegue l'hash della password e poi procede a salvarlo tramite la _RegisterUserPort_. Infine ritorna lo _user_ che ha appena salvato.

#get_user_port_interfaccia
- *RegisterUserPort* (interfaccia)
    - #declaration("+ registerUser(user: User): User").

- *UserPortAdapter*
    - Proprietà:
        -  #declaration("- userRepository: UserRepository") #arrow oggetto di persistence che si interfaccia con il database.
    - Operazioni:
        #adapter_operazioni_get_user
        - #declaration("+ registerUser(user: User): User") #arrow metodo dichiarato nella porta _RegisterUserPort_. Converte lo _user_ in input in uno _UserEntity_ e chiama il metodo _registerUser_ del repository. Successivamente converte l'output del metodo in _User_ e lo ritorna.
    - Note:
        - è utile avere dei metodi helper privati per convertire da _User_ ad _UserEntity_ e viceversa.

- *UserRepository*
    - Proprietà:
        -  #declaration("- userEntityModel: Model<UserEntity>") #arrow oggetto fornito dalla libreria _mongoose_ che si interfaccia con il database.
    - Operazioni:
        - #declaration("+ registerUser(user: UserEntity): UserEntity") #arrow attraverso il metodo _create_ salva l'utente sul database e lo ritorna come _UserEntity_;
        #repository_operazioni_get_user
