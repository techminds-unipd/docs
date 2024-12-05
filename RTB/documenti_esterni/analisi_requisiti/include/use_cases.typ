#import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge
#import fletcher.shapes: ellipse, rect

= Casi d'uso

== Obiettivi

== Attori

== Definizione casi d'uso

#set heading(numbering: (..numbers) => {
  let level = numbers.pos().len()
  if (level == 3) {
    return numbering("UC1", numbers.pos().at(level - 1))
  }
  else if (level == 4) {
    return numbering("UC1.1", numbers.pos().at(level - 2), numbers.pos().at(level - 1))
  }
})
#set heading(supplement: none)

=== Login <login>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,

    node((0,0.5), [#image("../assets/actor.jpg") Utente], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((4,0.5), [#image("../assets/actor.jpg") Google], stroke: 0pt, name: <google>),
    edge(<google>, <d>),

    node((2,0), align(center)[
            @login Login
    ], shape: ellipse, name: <b>),

    node((2,1), align(center)[
            @credenziali-errate Credenziali errate
    ], shape: ellipse, name: <c>),

    edge(<c>, <b>, "-->", [\<\<extend\>\>]),

    node((3,0.5), align(center)[
             @login-google Login Google
    ], shape: ellipse, name: <d>),

    edge(<d>, <b>, "-|>"),

    node(enclose: (<b>,<c>,<d>),
        align(top + right)[Sistema],
        width: 200pt,
        height: 200pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Login UC diagram]
) <login-diagram>

- *Attori principali*:
  - Utente.
- *Attori secondari*:
  - Google.
- *Scenario principale*:
 - Utente:
   - inserisce lo username (@inserimento-username);
   - inserisce la password (@inserimento-password).
 - Sistema:
   1. verifica che le credenziali dell'utente siano corrette;
   2. se la verifica ha successo viene assegnata una sessione all'utente;
   3. se le credenziali sono sbagliate si mostra un messaggio d'errore (@credenziali-errate).
- *Pre-condizioni*:
   - L'utente possiede un account;
   - L'utente non è già autenticato.
- *Post-condizioni*:
   - L'utente viene autenticato ed ottiene una sessione.
- *Trigger*
- *Estensioni*:
  - Login Google (@login-google).

==== Inserimento username <inserimento-username>
==== Inserimento password <inserimento-password>

=== Credenziali errate <credenziali-errate>
=== Login Google <login-google>

=== Registrazione <registrazione>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,

    node((0,0.5), [#image("../assets/actor.jpg") Utente], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((2,0.5), [#image("../assets/actor.jpg") Database], stroke: 0pt, name: <db>),
    edge(<b>, <db>),

    node((1,0), align(center)[
            @registrazione Registrazione
    ], shape: ellipse, name: <b>),

    node((1, 1), align(center)[
            @errore-registrazione Errore registrazione
    ], shape: ellipse, name: <c>),
    edge(<c>, <b>, "-->", [\<\<extend\>\>]),

    node(enclose: (<b>,<c>),
        align(top + right)[Sistema],
        width: 200pt,
        height: 200pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Registrazione UC diagram]
) <registrazione-diagram>

- *Attori principali*:
  - Utente.
- *Attori secondari*:
  - Database.
- *Scenario principale*:
 - Utente:
   - seleziona voce di registrazione;
   - crea un username univoco nel sistema (@creazione-username);
   - inserisce un'email valida (@inserimento-email);
   - crea una password valida (@creazione-password);
   - conferma la password (@conferma-password).
 - Sistema:
   1. verifica che l'username non sia già in uso e che la password/email siano valide;
   2. se la verifica ha successo viene creato un nuovo account e salvato nel database;
   3. se la verifica fallisce si mostra un messaggio d'errore (@errore-registrazione).
- *Pre-condizioni*:
   - L'utente non possiede un account;
   - L'utente possiede un'email valida.
- *Post-condizioni*:
   - L'utente possiede un account, contraddistinto da un username e da una password, e può effettuare il login.
- *Estensioni*:
  - Visualizzazione errore (@errore-registrazione).

==== Creazione username <creazione-username>
- *Attori principali*:
  - Utente.
- *Scenario principale*:
 - Utente:
   - inserisce un username.
 - Sistema:
   1. verifica che l'username non sia già in uso.
- *Pre-condizioni*:
   - L'utente non possiede un account.
- *Post-condizioni*:
   - L'utente ha inserito un username valido.


==== Inserimento email <inserimento-email>
- *Attori principali*:
  - Utente.
- *Scenario principale*:
  - Utente:
    - inserisce un'email.
  - Sistema:
    1. verifica che l'email sia valida.
- *Pre-condizioni*:
  - L'utente non possiede un account.
- *Post-condizioni*:
  - L'utente ha inserito un'email valida.

==== Creazione password <creazione-password>
- *Attori principali*:
  - Utente.
- *Scenario principale*:
  - Utente:
    - crea una password.
  - Sistema:
    1. verifica che la password rispetti i vincoli.
- *Pre-condizioni*:
  - L'utente non possiede un account.
- *Post-condizioni*:
  - L'utente ha creato una password valida.

==== Conferma password <conferma-password>
- *Attori principali*:
  - Utente.
- *Scenario principale*:
  - Utente:
    - conferma la password inserita precedentemente.
  - Sistema:
    1. verifica che la password sia stata confermata correttamente.
- *Pre-condizioni*:
  - L'utente non possiede un account.
- *Post-condizioni*:
  - La password è stata confermata.

=== Errore registrazione <errore-registrazione>
- *Attori principali*:
  - Utente.
- *Scenario principale*:
  - Utente:
    - crea username;
    - inserisce email;
    - crea password;
    - conferma password.
  - Sistema:
    1. verifica che l'username non sia già in uso;
    2. verifica che l'email sia valida;
    3. verifica che la password rispetti i vincoli;
    4. verifica che la password sia stata confermata correttamente;
    5. una delle verifiche fallisce;
    6. viene mostrato un messaggio d'errore.
- *Pre-condizioni*:
  - L'utente non possiede un account.
- *Post-condizioni*:
  - L'utente non possiede un account;
  - Viene mostrato un messaggio d'errore esplicativo;
  - L'utente può riprovare a registrarsi modificando i campi errati.


