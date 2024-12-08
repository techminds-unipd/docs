#import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge
#import fletcher.shapes: ellipse, rect
#import "@preview/cetz:0.3.0"
#import cetz.draw

#let empty-dash = (
    inherit: "}>",
    size: 10,
    fill: none,
    stealth: 0
)

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

    node((3,-0.25), align(center)[
            @inserimento-username Inserimento username
    ], shape: ellipse, name: <e>),

    edge(<b>, <e>, "--straight", [\<\<include\>\>]),

    node((3,0.25), align(center)[
            @inserimento-password Inserimento password
    ], shape: ellipse, name: <f>),

    edge(<b>, <f>, "--straight", [\<\<include\>\>]),

    node((2,0), align(center)[
            @login Login
    ], shape: ellipse, name: <b>),

    node((2,1), align(center)[
            @credenziali-errate Credenziali errate
    ], shape: ellipse, name: <c>),

    edge(<c>, <b>, "--straight", [\<\<extend\>\>]),

    node((3,1), align(center)[
             @login-google Login Google
    ], shape: ellipse, name: <d>),

    edge(<d>, <b>, marks: (none,empty-dash)),

    node(enclose: (<b>,<c>,<d>,<e>,<f>),
        align(top + right)[Sistema],
        width: 200pt,
        height: 250pt,
        snap: -1,
        name: <group>)
    ),

    caption: [Login UC diagram.]
) <login-diagram>

- *Attori principali*:
  - Utente.
- *Scenario principale*:
 - Utente:
   - avvia la procedura di login;
   - inserisce lo username (@inserimento-username);
   - inserisce la password (@inserimento-password).
 - Sistema:
   1. attende esito verifica delle credenziali da @inserimento-username e @inserimento-password;
   2. la verifica ha successo;
   3. viene assegnata una sessione all'utente.
- *Pre-condizioni*:
   - L'utente possiede un account;
   - L'utente non è già autenticato.
- *Post-condizioni*:
   - L'utente viene autenticato ed ottiene una sessione.
- *Estensioni*:
  - Credenziali errate (@credenziali-errate).
- *Generalizzazioni*:
  - Login Google (@login-google).

==== Inserimento username <inserimento-username>
- *Attori principali*:
  - Utente.
- *Scenario principale*:
 - Utente:
   - inserisce il proprio username.
 - Sistema:
   1. verifica la correttezza dello username;
   2. continua la procedura di login.
- *Pre-condizioni*:
   - L'utente possiede un account;
   - L'utente non è già autenticato.
- *Post-condizioni*:
   - L'utente ha inserito lo username correttamente.

==== Inserimento password <inserimento-password>
- *Attori principali*:
  - Utente.
- *Scenario principale*:
 - Utente:
   - inserisce la propria password.
 - Sistema:
   1. verifica la correttezza della password;
   2. continua la procedura di login.
- *Pre-condizioni*:
   - L'utente possiede un account;
   - L'utente non è già autenticato.
- *Post-condizioni*:
   - L'utente ha inserito la password correttamente.

=== Credenziali errate <credenziali-errate>

- *Attori principali*:
  - Utente.
- *Scenario principale*:
 - Utente:
   - l'utente inserisce credenziali errate in @inserimento-username o @inserimento-password.
 - Sistema:
    1. l'esito della verifica delle credenziali da @inserimento-username o @inserimento-password non ha successo;
    2. mostra un messaggio d'errore;
    3. dà la possibilità all'utente di riprovare il login.
- *Pre-condizioni*:
   - L'utente possiede un account;
   - L'utente non è già autenticato.
- *Post-condizioni*:
   - Viene segnalato all'utente che le credenziali inserite sono errate;
   - L'utente può riprovare ad eseguire il login.

=== Login Google <login-google>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,

    node((0,0.5), [#image("../assets/actor.jpg") Utente], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((4,0.5), [#image("../assets/actor.jpg") Google], stroke: 0pt, name: <google>),
    edge(<google>, <b>),

    node((2,0.5), align(center)[
             @login-google Login Google
    ], shape: ellipse, name: <b>),


    node(enclose: (<b>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Login Google UC diagram.]
) <login-google-diagram>

- *Attori principali*:
  - Utente.
- *Attori secondari*:
  - Google.
- *Scenario principale*:
 - Utente:
   - richiede di accedere con il proprio account Google.
 - Sistema:
   1. redirige l'utente ai servizi di Google;
   2. controlla che il login con i servizi di Google sia avvenuto correttamente.
- *Pre-condizioni*:
   - L'utente possiede un account Google;
   - L'utente non è già autenticato.
- *Post-condizioni*:
   - L'utente viene autenticato ed ottiene una sessione.

=== Registrazione <registrazione>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,

    node((0,0.5), [#image("../assets/actor.jpg") Utente], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((1.8,0), align(center)[
            @registrazione Registrazione
    ], shape: ellipse, name: <b>),

    node((2.7,0.3), align(center)[
            @errore-registrazione Errore registrazione
    ], shape: ellipse, name: <c>),
    edge(<c>, <b>, "--straight", [\<\<extend\>\>]),

    node((1,1), align(center)[
            @creazione-username Creazione username
    ], shape: ellipse, name: <d>),
    edge(<b>, <d>, "--straight", [\<\<include\>\>]),

    node((1.5,1.3), align(center)[
            @inserimento-email Inserimento email
    ], shape: ellipse, name: <e>),
    edge(<b>, <e>, "--straight", [\<\<include\>\>]),

    node((2,1), align(center)[
            @creazione-password Creazione password
    ], shape: ellipse, name: <f>),
    edge(<b>, <f>, "--straight", [\<\<include\>\>]),

    node((2.7,1.3), align(center)[
            @conferma-password Conferma password
    ], shape: ellipse, name: <g>),
    edge(<b>, <g>, "--straight", [\<\<include\>\>]),

    node(enclose: (<b>,<c>,<d>,<e>,<f>,<g>),
        align(top + right)[Sistema],
        width: 200pt,
        height: 200pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Registrazione UC diagram.]
) <registrazione-diagram>

- *Attori principali*:
  - Utente.
- *Scenario principale*:
 - Utente:
   1. seleziona voce di registrazione;
   2. crea un username univoco nel sistema (@creazione-username);
   3. inserisce un'email valida (@inserimento-email);
   4. crea una password valida (@creazione-password);
   5. conferma la password (@conferma-password).
 - Sistema:
   1. attende l'esito di @creazione-username, @inserimento-email, @creazione-password e @conferma-password;
   2. crea un nuovo account;
   3. salva nel database i dati del nuovo account.
- *Pre-condizioni*:
   - L'utente non possiede un account.
- *Post-condizioni*:
   - L'utente possiede un account, contraddistinto da un username e da una password, e può effettuare il login.
- *Estensioni*:
  - Errore registrazione (@errore-registrazione).

==== Creazione username <creazione-username>

- *Attori principali*:
  - Utente.
- *Scenario principale*:
 - Utente:
   1. inserisce un username.
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
    1. inserisce un'email.
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
    1. crea una password.
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
    1. conferma la password inserita precedentemente.
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
    1. inserisce username, email, o password non validi in @creazione-username, @inserimento-email, @creazione-password, @conferma-password.
  - Sistema:
    1. l'esito della verifica da @creazione-username, @inserimento-email, @creazione-password o @conferma-password è negativo;
    2. mostra un messaggio d'errore all'utente;
    3. offre la possibilità all'utente di correggere i campi errati.
- *Pre-condizioni*:
  - L'utente non possiede un account.
- *Post-condizioni*:
  - L'utente non possiede un account;
  - Viene mostrato un messaggio d'errore esplicativo;
  - L'utente può riprovare a registrarsi modificando i campi errati.




=== Gestione servizi Google <gestione-servizi-google>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,

    node((0.5,0.1), [#image("../assets/actor.jpg") Utente], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((3.35,0.1), [#image("../assets/actor.jpg") Google], stroke: 0pt, name: <google>),
    edge(<google>, <b>),

    node((1.5,0.65), align(center)[
        @rimozione-account-google-associato Rimozione account \ Google associato
    ], shape: ellipse, name: <e>, inset: 10pt),

    node((2,0), align(center)[
            @gestione-servizi-google Gestione servizi Google
    ], shape: ellipse, name: <b>, inset: 10pt),

    node((2,1.25), align(center)[
            @inserimento-credenziali-google Inserimento\ credenziali Google
    ], shape: ellipse, name: <c>, inset: 10pt),

    node((2.5,0.8), align(center)[
            @errore-comunicazione-google Errore comunicazione \ Google
    ], shape: ellipse, name: <d>, inset: 10pt),

    edge(<c>, <b>, "--straight", [\<\<extend\>\>], label-side: right),

    edge(<d>, <b>, "--straight", [\<\<extend\>\>], label-side: right),

    edge(<e>, <b>, "--straight", [\<\<extend\>\>], label-side: left),

    node(enclose: (<b>,<c>, <d>, <e>),
        align(top + right)[Sistema],
        width: 200pt,
        height: 200pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Associazione servizi Google UC diagram.]
) <associazione-servizi-google-diagram>

- *Attori principali*:
  - Utente.
- *Attori secondari*:
  - Google.
- *Scenario principale*:
 - Utente:
   - apre la configurazione dei servizi Google (@gestione-servizi-google);
   - inserisce delle credenziali Google (@inserimento-credenziali-google).
 - Sistema:
   1. verifica se un account Google è già collegato;
   2. se è collegato, permette all'utente di rimuoverlo (@rimozione-account-google-associato);
   3. se non è collegato, chiede all'utente di accedere a Google (@inserimento-credenziali-google);
   4. se si verifica un errore nella comunicazione mostra un messaggio d'errore (@errore-comunicazione-google);

- *Pre-condizioni*:
   - L'utente è autenticato;
- *Post-condizioni*:
   - L'utente ha associato o rimosso un account Google.
- *Estensioni*:
  - Inserimento credenziali Google (@inserimento-credenziali-google);
  - Errore comunicazione Google (@errore-comunicazione-google).

=== Rimozione account Google associato <rimozione-account-google-associato>
- *Attori principali*:
  - Utente.
- *Attori secondari*:
  - Google.
- *Scenario principale*:
 - Utente:
   - avvia la procedura di rimozione dell'account Google associato.
 - Sistema:
   1. rimuove l'account Google associato all'esecuzione dei blocchi nei workflow (@rimozione-account-google-associato);
   2. notifica il completamento dell'operazione;
   3. se si verifica un errore nella comunicazione con Google mostra un messaggio d'errore (@errore-comunicazione-google).

- *Pre-condizioni*:
   - L'utente è autenticato;
   - L'utente ha associato un account Google.
- *Post-condizioni*:
   - L'utente non ha associato un account Google.

=== Inserimento credenziali Google <inserimento-credenziali-google>
- *Attori principali*:
  - Utente.
- *Attori secondari*:
  - Google.
- *Scenario principale*:
 - Utente:
   - avvia la procedura di associazione di un account Google;
   - inserisce le credenziali dell'account Google che vuole collegare.
 - Sistema:
   1. mostra la finestra di Google per la configurazione dell'account;
   2. notifica il completamento dell'operazione;
   3. se si verifica un errore nella comunicazione con Google mostra un messaggio d'errore (@errore-comunicazione-google).

- *Pre-condizioni*:
   - L'utente è autenticato;
   - L'utente non ha associato un account Google.
- *Post-condizioni*:
   - L'utente ha associato l'account Google di cui ha inserito le credenziali.

=== Errore comunicazione con Google <errore-comunicazione-google>
- *Attori principali*:
  - Utente.
- *Attori secondari*:
  - Google.
- *Scenario principale*:
 - Utente:
   - compie un'azione per la gestione dell'account Google associato (@gestione-servizi-google).
 - Sistema:
   1. notifica all'utente l'errore di comunicazione con Google e il mancato completamento dell'operazione corrente.

- *Pre-condizioni*:
   - Si verifica un errore di comunicazione con i sistemi di Google.
- *Post-condizioni*:
   - Il sistema notifica l'errore all'utente.

=== Esecuzione workflow <esecuzione-workflow>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,

    node((0,0.5), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((3.5,0.5), [#image("../assets/actor.jpg") LLM], stroke: 0pt, name: <llm>),
    edge(<llm>, <b>),

    node((1.7,0), align(center)[
            @esecuzione-workflow Esecuzione workflow 
    ], shape: ellipse, name: <b>),

    node((1,0.6), align(center)[
             @controllo-workflow Controllo workflow
    ], shape: ellipse, name: <c>),
    edge(<b>, <c>, "-->", [\<\<include\>\>]),

    node((1,1.4), align(center)[
            @vis-errore-workflow Vis. errore workflow
    ], shape: ellipse, name: <d>),
    edge(<d>, <c>, "-->", [\<\<extend\>\>]),

    node((1.7,1), align(center)[
            @vis-errore-runtime Vis. errore runtime
    ], shape: ellipse, name: <e>),
    edge(<e>, <b>, "-->", [\<\<extend\>\>]),

    node((2.5,0.6), align(center)[
            @vis-risultato-esecuzione Vis. risultato esecuzione
    ], shape: ellipse, name: <f>),
    edge(<b>, <f>, "-->", [\<\<include\>\>]),

    node(enclose: (<b>,<c>,<d>,<e>,<f>),
        align(top + right)[Sistema],
        width: 200pt,
        height: 200pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Esecuzione workflow UC diagram.]
) <esecuzione-diagram>

- *Attori principali*:
  - Utente autenticato.
- *Attori secondari*:
  - LLM.
- *Scenario principale*:
 - Utente autenticato:
   1. esegue il workflow.
 - Sistema:
   1. controlla che l'intero workflow sia valido (@controllo-workflow);
   2. attende l'esito del controllo;
   3. inoltra i dati all'agente che si interfaccia ad un LLM;
   4. restituisce il risultato dell'operazione (@vis-risultato-esecuzione).
- *Pre-condizioni*:
   - L'utente è autenticato;
   - L'utente ha creato un workflow con almeno due blocchi.
- *Post-condizioni*:    
  - L'operazione viene eseguita e il risultato viene restituito (@vis-risultato-esecuzione).
- *Estensioni*:
  - Visualizzazione errore runtime (@vis-errore-runtime).

==== Controllo workflow <controllo-workflow>

- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. esegue il workflow in @esecuzione-workflow.
  - Sistema:
    1. controlla che il workflow sia valido;
    2. ritorna l'esito del controllo.
- *Pre-condizioni*:
  - L'utente ha creato un workflow valido.
- *Post-condizioni*:
  - Restituisce l'esito del controllo.
- *Estensioni*
  - Visualizzazione errore workflow (@vis-errore-workflow).

==== Visualizzazione risultato esecuzione <vis-risultato-esecuzione>

- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. esegue il workflow in @esecuzione-workflow.
  - Sistema:
    1. riceve il risultato dell'operazione da @esecuzione-workflow;
    2. mostra il risultato all'utente.
- *Pre-condizioni*:
  - L'esecuzione termina senza errori.
- *Post-condizioni*:
  - Viene mostrato un messaggio all'utente con il risultato dell'operazione.

=== Visualizzazione errore workflow <vis-errore-workflow>
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. esegue il workflow in @esecuzione-workflow.
  - Sistema:
    1. il controllo in @controllo-workflow non ha successo;
    2. mostra un messaggio d'errore all'utente;
    3. termina l'esecuzione.
- *Pre-condizioni*:
  - L'utente ha creato un workflow senza rispettare i vincoli.
- *Post-condizioni*:
  - L'esecuzione termina e viene mostrato un messaggio d'errore all'utente.

=== Visualizzazione errore runtime <vis-errore-runtime>

- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. esegue il workflow in @esecuzione-workflow.
  - Sistema:
    1. risconta un problema durante l'esecuzione di @esecuzione-workflow;
    2. non conclude l'operazione;
    3. mostra un messaggio d'errore all'utente.
- *Pre-condizioni*:
  - L'utente è autenticato.
- *Post-condizioni*:
  - L'esecuzione termina e viene mostrato un messaggio d'errore all'utente.

  



=== Creazione nuovo workflow <creazione-nuovo-workflow>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,

    node((0,0), [#image("../assets/actor.jpg") Utente], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @creazione-nuovo-workflow Creazione workflow
    ], shape: ellipse, name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Creazione nuovo workflow UC diagram.]
) <creazione-nuovo-workflow-diagram>

- *Attori principali*:
  - Utente.
- *Scenario principale*:
 - Utente:
   1. naviga nella pagina workflow;
   2. seleziona l'opzione per creare un nuovo workflow;
   3. si ritrova in una nuova schermata in cui può gestire i blocchi e gli archi;
   4. seleziona il blocco di automazione che desidera;
   5. lo trascina all'interno dell'area drag and drop;
   6. ripete le due operazioni sopra finchè ha bisogno di nuovi blocchi;
   7. collega i blocchi con degli archi orientati;
   8. per ogni arco può descrivere un'automazione in linguaggio naturale.
 - Sistema:
   1. porta l'utente nella pagina per la creazione del workflow;
   2. gestisce gli input drag and drop dell'utente.
- *Pre-condizioni*:
   - L'utente è loggato.
   - L'utente ha collegato almeno un account esterno per poter utilizzare i blocchi ad esso associati.
- *Post-condizioni*:
   - Viene creato il workflow.

=== Salvataggio workflow <salvataggio-workflow>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,

    node((0,0.25), [#image("../assets/actor.jpg") Utente], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @salvataggio-workflow Salvataggio workflow
    ], shape: ellipse, name: <a>),

    node((2,0.5), align(center)[
            @errore-connessione-database Errore connessione database
    ], shape: ellipse, name: <b>),
    edge(<b>, <a>, "--straight", [\<\<extend\>\>]),

    node(enclose: (<a>,<b>),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Salvataggio workflow UC diagram.]
) <salvataggio-workflow-diagram>

- *Attori principali*:
  - Utente.
- *Scenario principale*:
 - Utente:
   1. seleziona l'opzione per salvare il workflow che ha creato.
 - Sistema:
   1. interagisce con il database per salvare il workflow dell'utente.
- *Pre-condizioni*:
   - L'utente è loggato.
- *Post-condizioni*:
   - Il workflow dell'utente viene salvato.
- *Estensioni*:
   - Errore connessione database (@errore-connessione-database).

=== Errore connessione database <errore-connessione-database>
- *Attori principali*:
  - Utente.
- *Scenario principale*:
 - Utente:
   1. esegue un'operazione che richiede l'accesso ai dati sul database.
 - Sistema:
   1. interagisce con il database;
   2. il database non è disponibile;
   3. viene visualizzato un messaggio d'errore.
- *Post-condizioni*:
   - Viene segnalato all'utente che non è possibile connettersi al database.
