#import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge
#import fletcher.shapes: ellipse, rect
#import "@preview/cetz:0.3.0"
#import cetz.draw
#import "/template/template.typ": glossario

#let empty-dash = (
    inherit: "}>",
    size: 10,
    fill: none,
    stealth: 0
)

= Casi d'uso

== Obiettivi
Questa sezione è dedicata all'identificazione e alla descrizione 
dei casi d'uso emersi dall'analisi. I casi d'uso servono a 
descrivere nel dettaglio le operazioni che l'utente può compiere 
all'interno dell'applicativo, offrendo una panoramica completa 
delle funzionalità disponibili. Inoltre, permettono di definire 
chiaramente le interazioni tra l'utente e il sistema, evidenziando come avviene il 
dialogo tra questi due. Infine, si occupano anche di delineare le modalità di interazione 
tra il sistema e i servizi esterni, garantendo così una comprensione precisa delle connessioni e delle dipendenze tecnologiche.
== Attori
- *Attori principali*:
  - Utente non autenticato;
  - Utente autenticato;
  - Frontend;
  - Backend.
- *Attori secondari*:
  - Google;
  - #glossario[LLM].
== Sistema
  Il sistema è composto dai seguenti elementi:
    - Frontend;
    - Backend;
    - #glossario[Agente];
    - Database.
== Definizione casi d'uso

#set heading(numbering: (..numbers) => {
  let level = numbers.pos().len()
  if (level == 3) {
    return numbering("UC1", numbers.pos().at(level - 1))
  }
  else if (level == 4) {
    return numbering("UC1.1", numbers.pos().at(level - 2), numbers.pos().at(level - 1))
  } else if(level == 5){
    return numbering("UC1.1.1", numbers.pos().at(level - 3), numbers.pos().at(level - 2), numbers.pos().at(level - 1))
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
    node-inset: 10pt,
    node-shape: ellipse,

    node((0.25,0.5), [#image("../assets/actor.jpg") Utente non#linebreak() autenticato], stroke: 0pt, name: <utente>),
    edge(<utente>, <login>),

    node((2,0), align(center)[
            @login Login
    ], name: <login>),
    edge(<login-interno>, <login>,marks: (none,empty-dash)),

    node((2,0.5), align(center)[
            @login-interno Login interno
    ], name: <login-interno>),

    edge(<login-interno>, <ins-user>, "--straight", [\<\<include\>\>]),

    node((3,0.75), align(center)[
            @inserimento-username Inserimento username
    ], name: <ins-user>),

    edge(<login-interno>, <ins-pass>, "--straight", [\<\<include\>\>]),

    node((3,0.25), align(center)[
            @inserimento-password Inserimento password
    ], name: <ins-pass>),



    node((2,1.5), align(center)[
            @credenziali-errate Credenziali errate
    ], name: <credenziali-errate>),

 
   node((2,1), align(center)[
    ], name: <nf>,width:1pt, height:1pt),

  edge(<nf>,<pnf>, "--"),

  node((2.9,1.25), align(center)[
    L'utente inserisce delle #linebreak()credenziali errate o inesistenti
    ], shape: rect, name: <pnf>),
 


    edge(<credenziali-errate>,<login-interno>, "--straight", [\<\<extend\>\>]),

    node((2.75,0), align(center)[
             @login-google Login Google
    ], name: <login-google>),

    edge(<login-google>, <login>, marks: (none,empty-dash)),

    node(enclose: (<login>,<login-interno>,<login-google>,<ins-user>,<ins-pass>,<credenziali-errate>,<nf>,<pnf>),
        align(top + right)[Sistema],
        width: 200pt,
        height: 250pt,
        snap: -1,
        name: <group>),

    node((4,0.25), [#image("../assets/actor.jpg") Google], stroke: 0pt, name: <google>),
    edge(<google>, <login-google>),
    ),
  
    caption: [Login UC diagram.]
) <login-diagram>
- *Descrizione*:
  - Questo caso d'uso descrive le operazioni di login di un utente.
- *Attori principali*:
  - Utente non autenticato.
- *Scenario principale*:
 - Utente non autenticato:
   1. avvia la procedura di login.
 - Sistema:
   1. attende esito verifica login;
   2. la verifica ha successo;
   3. viene assegnata una sessione all'utente.
- *Pre-condizioni*:
    - L'utente possiede un account.
- *Post-condizioni*:
    - L'utente viene autenticato ed ottiene una sessione.
- *Generalizzazioni*:
  - Login Google (@login-google);
  - Login interno (@login-interno).

=== Login interno <login-interno>
- *Descrizione*:
  - Questo caso d'uso descrive le operazioni di login interno di un utente.
- *Attori principali*:
  - Utente non autenticato.
- *Scenario principale*:
 - Utente non autenticato:
   1. sceglie la procedura di login interno;
   2. inserisce lo username (@inserimento-username);
   3. inserisce la password (@inserimento-password).
 - Sistema:
   1. attende esito verifica delle credenziali da @inserimento-username e @inserimento-password;
   2. la verifica ha successo;
   3. viene assegnata una sessione all'utente.
- *Pre-condizioni*:
    - L'utente possiede un account.
- *Post-condizioni*:
    - L'utente viene autenticato ed ottiene una sessione.
- *Estensioni*:
  - Credenziali errate (@credenziali-errate).



==== Inserimento username <inserimento-username>
- *Descrizione*:
  - Questo caso d'uso descrive le operazioni di inserimento dello username di un utente.
- *Attori principali*:
  - Utente non autenticato.
- *Scenario principale*:
 - Utente non autenticato:
   1. inserisce il proprio username.
 - Sistema:
   1. verifica la correttezza dello username;
   2. continua la procedura di login.
- *Pre-condizioni*:
    - L'utente possiede un account.
- *Post-condizioni*:
   - L'utente ha inserito lo username correttamente.

==== Inserimento password <inserimento-password>
- *Descrizione*:
  - Questo caso d'uso descrive le operazioni di inserimento della password di un utente.
- *Attori principali*:
  - Utente non autenticato.
- *Scenario principale*:
 - Utente non autenticato:
   1. inserisce la propria password.
 - Sistema:
   1. verifica la correttezza della password;
   2. continua la procedura di login.
- *Pre-condizioni*:
    - L'utente possiede un account.
- *Post-condizioni*:
   - L'utente ha inserito la password correttamente.

=== Credenziali errate <credenziali-errate>

- *Attori principali*:
  - Utente non autenticato.
- *Scenario principale*:
 - Utente non autenticato:
   1. l'utente inserisce credenziali errate in @inserimento-username o @inserimento-password.
 - Sistema:
    1. l'esito della verifica delle credenziali da @inserimento-username o @inserimento-password non ha successo;
    2. mostra un messaggio d'errore;
    3. dà la possibilità all'utente di riprovare il login.
- *Post-condizioni*:
   - Viene segnalato all'utente che le credenziali inserite sono errate;
   - L'utente può riprovare ad eseguire il login.

=== Login Google <login-google>

- *Attori principali*:
  - Utente non autenticato.
- *Attori secondari*:
  - Google.
- *Scenario principale*:
 - Utente non autenticato:
   1. richiede di accedere con il proprio account Google.
 - Sistema:
   1. redirige l'utente ai servizi di Google;
   2. il login ha successo;
   3. viene assegnata una sessione all'utente.
- *Post-condizioni*:
   - L'utente viene autenticato ed ottiene una sessione.

=== Registrazione <registrazione>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0.5), [#image("../assets/actor.jpg") Utente non #linebreak() autenticato], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((1.6,0), align(center)[
            @registrazione Registrazione
    ], name: <b>),

    node((2.65,0.05), align(center)[
            @errore-registrazione Errore registrazione
    ], name: <c>),
    edge(<c>, <b>, "--straight", [\<\<extend\>\>]),

    node((1,1), align(center)[
            @creazione-username Creazione username
    ], name: <d>),
    edge(<b>, <d>, "--straight", [\<\<include\>\>]),

    node((1.5,1.3), align(center)[
            @inserimento-email Inserimento email
    ], name: <e>),
    edge(<b>, <e>, "--straight", [\<\<include\>\>]),

    node((1.91,1), align(center)[
            @creazione-password Creazione password
    ], name: <f>),
    edge(<b>, <f>, "--straight", [\<\<include\>\>]),

    node((2.7,1.3), align(center)[
            @conferma-password Conferma password
    ], name: <g>),
    edge(<b>, <g>, "--straight", [\<\<include\>\>]),

    node((2.6,0.35), align(center)[
            Utente inserisce #linebreak() dati non validi
    ], shape: rect, name: <le>),
    node((2.1,0.025), align(center)[
    ], name: <nf>, width: 1pt, height: 1pt),
    edge(<le>, <nf>, "--"),

    node(enclose: (<b>,<c>,<d>,<e>,<f>,<g>),
        align(top + right)[Sistema],
        width: 200pt,
        height: 250pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Registrazione UC diagram.]
) <registrazione-diagram>
- *Descrizione*:
  - Questo caso d'uso descrive la procedura di registrazione di un utente.
- *Attori principali*:
  - Utente non autenticato.
- *Scenario principale*:
 - Utente non autenticato:
   1. seleziona voce di registrazione;
   2. crea un username univoco nel sistema (@creazione-username);
   3. inserisce un'email valida (@inserimento-email);
   4. crea una password valida (@creazione-password);
   5. conferma la password (@conferma-password).
 - Sistema:
   1. attende l'esito di @creazione-username, @inserimento-email, @creazione-password e @conferma-password;
   2. tutte le verifiche hanno successo;
   3. crea un nuovo account;
   4. salva nel database i dati del nuovo account.
- *Pre-condizioni*:
   - L'utente non possiede un account.
- *Post-condizioni*:
   - L'utente possiede un account, contraddistinto da un username e da una password, e può effettuare il login.
- *Estensioni*:
  - Errore registrazione (@errore-registrazione).

==== Creazione username <creazione-username>
- *Descrizione*:
  - Questo caso d'uso descrive la procedura di creazione di uno username da parte di un utente.
- *Attori principali*:
  - Utente non autenticato.
- *Scenario principale*:
 - Utente non autenticato:
   1. inserisce un username.
 - Sistema:
   1. verifica che l'username non sia già in uso.
- *Pre-condizioni*:
   - L'utente non possiede un account.
- *Post-condizioni*:
   - L'utente ha inserito un username.


==== Inserimento email <inserimento-email>
- *Descrizione*:
  - Questo caso d'uso descrive la procedura di inserimento di un'email da parte di un utente.
- *Attori principali*:
  - Utente non autenticato.
- *Scenario principale*:
  - Utente non autenticato:
    1. inserisce un'email.
  - Sistema:
    1. verifica che l'email sia valida.
- *Pre-condizioni*:
  - L'utente non possiede un account.
- *Post-condizioni*:
  - L'utente ha inserito un'email.

==== Creazione password <creazione-password>
- *Descrizione*:
  - Questo caso d'uso descrive la procedura di creazione di una password da parte di un utente.
- *Attori principali*:
  - Utente non autenticato.
- *Scenario principale*:
  - Utente non autenticato:
    1. crea una password.
  - Sistema:
    1. verifica che la password rispetti i vincoli.
- *Pre-condizioni*:
  - L'utente non possiede un account.
- *Post-condizioni*:
  - L'utente ha creato una password.

==== Conferma password <conferma-password>
- *Descrizione*:
  - Questo caso d'uso descrive la procedura di conferma della password da parte di un utente.
- *Attori principali*:
  - Utente non autenticato.
- *Scenario principale*:
  - Utente non autenticato:
    1. conferma la password inserita precedentemente.
  - Sistema:
    1. verifica che la password sia stata confermata correttamente.
- *Pre-condizioni*:
  - L'utente non possiede un account.
- *Post-condizioni*:
  - La password è stata ripetuta per la conferma.

=== Errore registrazione <errore-registrazione>
- *Descrizione*:
  - Questo caso d'uso descrive la procedura di gestione dell'errore di registrazione.
- *Attori principali*:
  - Utente non autenticato.
- *Scenario principale*:
  - Utente non autenticato:
    1. inserisce username, email, o password non validi.
  - Sistema:
    1. l'esito della verifica da @creazione-username, @inserimento-email, @creazione-password o @conferma-password è negativo;
    2. mostra un messaggio d'errore all'utente;
    3. offre la possibilità all'utente di correggere i campi errati.
- *Pre-condizioni*:
  - L'utente non possiede un account.
- *Post-condizioni*:
  - L'utente non possiede un account;
  - Viene mostrato un messaggio d'errore esplicativo;

=== Aggiunta account Google associato ai workflow
<aggiunta-account-google-associato>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0.2,0.5), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((3.5,0.5), [#image("../assets/actor.jpg") Google], stroke: 0pt, name: <google>),
    edge(<google>, <b>),

    node((2,0.5), align(center)[
             @aggiunta-account-google-associato Aggiunta account Google associato
    ], name: <b>),

    node((2,1.3), align(center)[
            @errore-comunicazione-google Errore comunicazione Google
    ], name: <e>),
    edge(<e>, <b>, "--straight", [\<\<extend\>\>]),

    node((1.6,0.9), align(center)[
            Google trasmette #linebreak() un errore
    ], shape: rect, name: <le>),
    node((2,0.9), align(center)[
    ], name: <nf>, width: 1pt, height: 1pt),
    edge(<le>, <nf>, "--"),

    node(enclose: (<b>,<e>,<le>,<nf>),
        align(top + right)[Sistema],
        width: 240pt,
        height: 200pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Aggiunta account Google diagram.]
) <aggiunta-account-google-diagram>
- *Descrizione*: 
  - Questo caso d'uso descrive la procedura di aggiunta di un account Google associato all'utente autenticato. Grazie a questa associazione, l'utente può utilizzare i servizi offerti dai blocchi dei workflow.
- *Attori principali*:
  - Utente autenticato.
- *Attori secondari*:
  - Google.
- *Scenario principale*:
 - Utente autenticato:
   1. avvia la procedura di associazione di un account Google.
 - Sistema:
   1. redirige l'utente alla finestra di Google per l'aggiunta dell'account da associare all'esecuzione dei blocchi nei workflow;
   2. attende il completamento dell'operazione;
   3. l'operazione ha esito positivo.
- *Pre-condizioni*:
   - L'utente non ha associato un account Google.
- *Post-condizioni*:
   - L'utente ha associato l'account Google di cui ha inserito le credenziali.
- *Estensioni*:
  - Errore comunicazione Google (@errore-comunicazione-google).

=== Errore comunicazione con Google <errore-comunicazione-google>
- *Descrizione*: 
  - Questo caso d'uso descrive la procedura di gestione dell'errore di comunicazione con Google.
- *Attori principali*:
  - Utente autenticato.
- *Attori secondari*:
  - Google.
- *Scenario principale*:
 - Utente autenticato:
   1. avvia la procedura di associazione di un account Google.
 - Sistema:
   1. redirige l'utente alla finestra di Google per l'aggiunta dell'account;
   2. attende il completamento dell'operazione;
   3. l'operazione ha esito negativo;
   4. mostra un messaggio d'errore all'utente.
- *Pre-condizioni*:
   - L'utente non ha associato un account Google.
- *Post-condizioni*:
   - Il sistema notifica l'errore all'utente;
   - L'utente può riprovare ad associare l'account Google.

=== Rimozione account Google associato ai workflow <rimozione-account-google-associato>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0.5), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((2,0.5), align(center)[
             @rimozione-account-google-associato Rimozione account Google associato
    ], name: <b>),


    node(enclose: (<b>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Rimozione account Google diagram.]
) <rimozione-account-google-diagram>
- *Descrizione*: 
  - Questo caso d'uso descrive la procedura di rimozione dell'account Google associato ai servizi offerti dai workflow. 
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. avvia la procedura di rimozione dell'account Google associato.
 - Sistema:
   1. rimuove l'account Google associato all'esecuzione dei blocchi nei workflow;
   2. mostra un messaggio di conferma all'utente.
- *Pre-condizioni*:
   - L'utente ha associato un account Google.
- *Post-condizioni*:
   - L'utente non ha più un account Google associato.

=== Esecuzione workflow <esecuzione-workflow>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-shape: ellipse,
    node-inset: 10pt,

    node((-0.5,0.5), [#image("../assets/actor.jpg") Utente #linebreak() autenticato], stroke: 0pt, name: <utente-autenticato>),
    edge(<utente-autenticato>, <esecuzione-workflow>),

    node((3,0.5), [#image("../assets/actor.jpg") LLM], stroke: 0pt, name: <llm>),
    edge(<llm>, <esecuzione-workflow>),



    node((1.25,0), align(center)[
            @esecuzione-workflow Esecuzione workflow 
    ],  name: <esecuzione-workflow>),

    node((1,1.5), align(center)[
            @vis-errore-workflow Vis. errore workflow
    ],  name: <vis-errore-workflow>),

    edge(<vis-errore-workflow>, <esecuzione-workflow>, "--straight", [\<\<extend\>\>]),

    node((.6,0.5), align(center)[
            Il workflow non è valido
    ], shape: rect, name: <post-it>),

    node((1.15,0.5), align(center)[
    ], name: <nf>, width: 1pt, height: 1pt),
    edge(<post-it>, <nf>, "--"),

    node((1.7,1.25), align(center)[
            @vis-errore-runtime Vis. errore runtime
    ],  name: <vis-errore-runtime>),
    edge(<vis-errore-runtime>, <esecuzione-workflow>, "--straight", [\<\<extend\>\>]),
    
    node((2,0.8), align(center)[
            L'agente non riesce a #linebreak() completare l'operazione
    ], shape: rect, name: <post-it2>),

    node((1.53,0.8), align(center)[
    ], name: <nf2>, width: 1pt, height: 1pt),
    edge(<post-it2>, <nf2>, "--"),

    node(enclose: (<esecuzione-workflow>,<vis-errore-workflow>,<vis-errore-runtime>,<nf>,<nf2>,<post-it2>,<post-it>,),
        align(top + right)[Sistema],
        width: 200pt,
        height: 200pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Esecuzione workflow UC diagram.]
) <esecuzione-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive le operazioni di esecuzione di un workflow e i suoi scenari alternativi.
- *Attori principali*:
  - Utente autenticato.
- *Attori secondari*:
  - LLM.
- *Scenario principale*:
 - Utente autenticato:
   1. esegue il workflow.
 - Sistema:
   1. controlla che il workflow sia valido;
   2. inoltra i dati all'agente che si interfaccia ad un LLM;
   3. restituisce il risultato dell'operazione.
- *Pre-condizioni*:
   - L'utente ha creato un workflow con almeno due blocchi.
- *Post-condizioni*:
  - L'esecuzione del workflow termina con successo.
- *Estensioni*:
  - Visualizzazione errore runtime (@vis-errore-runtime).
  - Visualizzazione errore workflow (@vis-errore-workflow).
  

=== Visualizzazione errore workflow <vis-errore-workflow>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione dell'errore causato dall'avvio dell'esecuzione di un workflow non valido.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. ha avviato l'esecuzione del workflow.
  - Sistema:
    1. rileva che almeno un requisito nella struttura del workflow non è stato soddifatto;
    2. mostra un messaggio d'errore all'utente;
    3. termina l'esecuzione.
- *Pre-condizioni*:
  - L'utente ha creato un workflow senza rispettare i vincoli.
- *Post-condizioni*:
  - L'esecuzione termina e viene mostrato un messaggio d'errore all'utente.

=== Visualizzazione errore runtime <vis-errore-runtime>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione dell'errore di runtime durante l'esecuzione di un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Attori secondari*:
  - LLM.
- *Scenario principale*:
  - Utente autenticato:
    1. ha avviato l'esecuzione di un workflow valido.
  - Sistema:
    1. riscontra un problema durante l'esecuzione del workflow;
    2. non conclude l'operazione;
    3. mostra un messaggio d'errore all'utente.
- *Pre-condizioni*:
  - L'utente ha creato un workflow valido.
- *Post-condizioni*:
  - L'esecuzione termina e viene mostrato un messaggio d'errore all'utente.

=== Esecuzione del workflow da parte del sistema <esecuzione-workflow-sistema>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0.2,0.5), [#image("../assets/actor.jpg") Frontend], stroke: 0pt, name: <frontend>),

    node((2,0.5), align(center)[
            @esecuzione-workflow-sistema Esecuzione workflow da parte del sistema
    ],  name: <esecuzione-workflow-sistema>),
    edge(<frontend>, <esecuzione-workflow-sistema>),

   

    node(enclose: (<esecuzione-workflow-sistema>,),
        align(top + right)[Backend + database + agente],
        width: 240pt,
        height: 200pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Esecuzione del workflow da parte del sistema UC diagram.]
) <esecuzione-workflow-frontend-diagram>
- *Descrizione*:
  - Questo caso d'uso descrive le operazioni che il sistema compie nella esecuzione di un workflow, approfondendo @esecuzione-workflow.
- *Attori principali*:
  - Frontend.
- *Scenario principale*:
  - Frontend:
    1. invia il segnale di esecuzione del workflow.
  - Backend:
    1. riceve il segnale di esecuzione del workflow;
    2. richiede i dati necessari per l'esecuzione del workflow dal database;
  - Database:
    1. fornisce i dati necessari per l'esecuzione del workflow al backend;
  - Backend:
    3. invia i dati all'agente
  - Agente:
    1. esegue le automazioni interfacciandosi con un LLM (@esecuzione-workflow-agente);
  - Backend:
    4. riceve una risposta dall'agente;
    5. restituisce il risultato al frontend.
- *Pre-condizioni*:
   - L'esecuzione del workflow è stata avviata.
- *Post-condizioni*:
  - Il frontend riceve il risultato dell'esecuzione del workflow.



=== Esecuzione del workflow da parte dell'agente <esecuzione-workflow-agente>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0.2,0.5), [#image("../assets/actor.jpg") Backend], stroke: 0pt, name: <back-end>),
    edge(<back-end>, <esecuzione-workflow-agente>),

    node((3.5,0.5), [#image("../assets/actor.jpg") LLM], stroke: 0pt, name: <llm>),
    edge(<llm>, <esecuzione-workflow-agente>),

    node((2,0.5), align(center)[
            @esecuzione-workflow-agente Esecuzione workflow agente
    ],  name: <esecuzione-workflow-agente>),

    node((2,1.3), align(center)[
            @errore-workflow-llm Vis. errore time-out
    ],  name: <errore-workflow-llm>),
    edge(<errore-workflow-llm>, <esecuzione-workflow-agente>, "--straight", [\<\<extend\>\>]),

    node((2.5,0.9), align(center)[
            Il time-out #linebreak() raggiunge il limite
    ], shape: rect, name: <post-it>),
    node((2,0.9), align(center)[
    ], name: <nf>, width: 1pt, height: 1pt),
    edge(<post-it>, <nf>, "--"),

    node(enclose: (<esecuzione-workflow-agente>,<errore-workflow-llm>,<nf>,<post-it>,),
        align(top + right)[Agente],
        width: 240pt,
        height: 200pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Esecuzione del workflow da parte dell'agente UC diagram.]
) <esecuzione-workflow-agente-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive le operazioni di esecuzione del backend e dell'agente durante la procedura di esecuzione di un workflow, approfondendo @esecuzione-workflow.
- *Attori principali*:
  - Backend.
- *Attori secondari*:
  - LLM.
- *Scenario principale*:
 - Backend:
   1. invia i dati necessari per l'esecuzione del workflow all'agente.
 - Agente:
   1. riceve i dati;
   2. esegue le automazioni interfacciandosi con un LLM esterno;
   3. termina l'esecuzione;
   4. comunica la terminazione dell'esecuzione al backend.
- *Pre-condizioni*:
   - Il backend ha ricevuto il segnale di avviare l'esecuzione di un workflow.
- *Post-condizioni*:
  - L'esecuzione del workflow termina con successo.
- *Estensioni*:
  - Visualizzazione errore time-out (@errore-workflow-llm).

=== Visualizzazione errore time-out <errore-workflow-llm>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione dell'errore provocato dal time-out durante l'esecuzione di un workflow.
- *Attori principali*:
  - Backend.
- *Attori secondari*:
  - LLM.
- *Scenario principale*:
 - Backend:
   1. invia i dati necessari per l'esecuzione del workflow all'agente.
 - Agente:
   1. riceve i dati;
   2. inizia ad eseguire le automazioni interfacciandosi con un LLM esterno;
   3. il time-out raggiunge il limite;
   4. termina l'esecuzione;
   5. comunica l'errore di esecuzione del workflow al backend.
- *Pre-condizioni*:
   - Il backend ha ricevuto il segnale di avviare l'esecuzione di un workflow.
- *Post-condizioni*:
  - L'esecuzione termina e viene inviato un messaggio d'errore al backend.

=== Visualizzazione risultato esecuzione workflow <vis-risultato-esecuzione-workflow>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-shape: ellipse,
    node-inset: 10pt,

    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <utente-autenticato>),
    edge(<utente-autenticato>, <vis-risultato-esecuzione-workflow>),

    node((2,0), align(center)[
            @vis-risultato-esecuzione-workflow Vis. risultato esecuzione #linebreak() workflow
    ],  name: <vis-risultato-esecuzione-workflow>),

    node(enclose: (<vis-risultato-esecuzione-workflow>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Visualizzazione risultato dell'esecuzione del workflow.]
) <vis-risultato-esecuzione-workflow-diagram> 

- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione del risultato dell'esecuzione di un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. ha eseguito il workflow (@esecuzione-workflow).
  - Sistema:
    1. riceve il risultato della corretta esecuzione del workflow da @esecuzione-workflow;
    2. mostra il risultato all'utente.
- *Pre-condizioni*:
  - L'esecuzione del workflow (@esecuzione-workflow) è terminata senza errori.
- *Post-condizioni*:
  - Viene mostrato un messaggio all'utente con il risultato dell'operazione.


=== Creazione nuovo workflow vuoto <creazione-nuovo-workflow>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @creazione-nuovo-workflow Creazione workflow vuoto
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Creazione nuovo workflow vuoto UC diagram.]
) <creazione-nuovo-workflow-diagram>
- *Descrizione*:
  - Questo caso d'uso descrive la procedura di creazione di un nuovo workflow vuoto.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. naviga nella pagina workflow;
   2. seleziona l'opzione per creare un nuovo workflow.
 - Sistema:
   1. porta l'utente nella pagina per la creazione del workflow;
   2. crea un nuovo workflow vuoto;
   3. mostra il nuovo workflow vuoto creato.
- *Post-condizioni*:
   - Viene creato il workflow vuoto.

=== Entrata modalità modifica <modifica-workflow>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0.3), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((1.5,0), align(center)[
            @modifica-workflow Entrata modalità modifica
    ], name: <a>),
    
    node((2,0.5), align(center)[
        @visualizzazione-blocchi-configurati
        Visualizzazione blocchi configurati
    ], name: <b>),
    edge(<a>, <b>, "--straight", [\<\<include\>\>]),

    node((1.8,1), align(center)[
            @avviso-servizi-non-collegati Avviso servizi non collegati
    ], name: <c>),
    edge(<c>, <b>, "--straight", [\<\<extend\>\>]),

    node((0.9,0.7), align(center)[
            Nessun servizio #linebreak() collegato
    ], shape: rect, name: <le>),
    node((1.89,0.8), align(center)[
    ], name: <nf>, width: 1pt, height: 1pt),
    edge(<le>, <nf>, "--"),

    node(enclose: (<a>,<b>,<c>,<le>),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Entrata modalità modifica UC diagram.]
) <modifica-workflow-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive la procedura per entrare in modalità di modifica di un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. seleziona il workflow da modificare;
   2. si ritrova in una nuova schermata in cui viene visualizzato il workflow;
   3. seleziona l'opzione di modifica del workflow;
   4. visualizza anche i blocchi disponibili (@visualizzazione-blocchi-configurati).
 - Sistema:
   1. mostra il workflow con l'opzione di modifica all'utente;
   2. avvia la modifica del workflow;
   3. mostra i blocchi configurati disponibili (@visualizzazione-blocchi-configurati).
- *Pre-condizioni*:
   - L'utente ha creato un workflow.
- *Post-condizioni*:
   - Viene avviata la modifica del workflow selezionato dall'utente.
   
==== Visualizzazione blocchi configurati <visualizzazione-blocchi-configurati>

- *Descrizione*:
  - Questo caso d'uso descrive la funzionalità di visualizzazione dei blocchi configurati.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
    1. visualizza i blocchi configurati.
 - Sistema:
    1. verifica quali sono i servizi associati;
    2. mostra i blocchi che hanno un servizio associato nella sezione dei blocchi configurati.
- *Pre-condizioni*:
   - L'utente ha collegato almeno un account esterno per poter utilizzare i blocchi ad esso associati.
- *Post-condizioni*:
   - L'utente visualizza i blocchi configurati.
- *Estensioni*:
   - Avviso servizi non collegati (@avviso-servizi-non-collegati).

=== Avviso servizi non collegati 
<avviso-servizi-non-collegati>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione di un avviso per notificare all'utente che non ha nessun account collegato ai servizi offerti dai blocchi.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
    1. visualizza un avviso che segnala l'assenza di servizi collegati.
 - Sistema:
   1. non trova nessun servizio collegato; 
   2. mostra un avviso.
- *Pre-condizioni*:
   - L'utente non ha collegato nessun account esterno per utilizzare i blocchi ad esso associati.
- *Post-condizioni*:
   - Viene segnalato all'utente che non ha nessun servizio collegato;
   - L'utente viene rediretto alla pagina per collegare i servizi.

=== Aggiunta di un blocco <aggiunta-blocco>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @aggiunta-blocco Aggiunta blocco
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Aggiunta di un blocco UC diagram.]
) <aggiunta-blocco-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive la procedura di aggiunta di un blocco in un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. aggiunge un blocco di automazione (tra quelli disponibili) trascinandolo nell'area drag and drop.
 - Sistema:
   1. mostra all'utente i blocchi disponibili (@visualizzazione-blocchi-configurati);
   2. gestisce l'input dell'utente;
   3. aggiorna il workflow.
- *Pre-condizioni*:
   - L'utente è entrato in modalità di modifica (@modifica-workflow).
- *Post-condizioni*:
   - Viene aggiunto il blocco scelto dall'utente al workflow.

=== Eliminazione di un blocco <eliminazione-blocco>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @eliminazione-blocco Eliminazione blocco
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Eliminazione di un blocco UC diagram.]
) <eliminazione-blocco-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive la procedura di eliminazione di un blocco in un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. seleziona il blocco di automazione da eliminare tra quelli presenti nel workflow;
   2. elimina il blocco di automazione selezionato.
 - Sistema:
   1. gestisce gli input dell'utente;
   2. aggiorna il workflow.
- *Pre-condizioni*:
   - Il workflow ha almeno un blocco;
   - L'utente è entrato in modalità di modifica (@modifica-workflow).
- *Post-condizioni*:
   - Viene eliminato un blocco dal workflow.

=== Collegamento blocchi <collegamento-arco>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @collegamento-arco Collegamento blocchi
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Collegamento blocchi UC diagram.]
) <collegamento-arco-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive la procedura di collegamento di due blocchi tramite un arco orientato.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. sceglie due blocchi da collegare;
   2. collega i due blocchi attraverso un arco orientato.
 - Sistema:
   1. gestisce l'input dell'utente;
   2. aggiorna il workflow.
- *Pre-condizioni*:
   - Il workflow ha almeno due blocchi;
   - I blocchi da collegare sono scollegati tra loro;
   - L'utente è entrato in modalità di modifica (@modifica-workflow).
- *Post-condizioni*:
   - Viene creato un arco orientato tra i due blocchi selezionati dall'utente.

=== Scollegamento blocchi <scollegamento-arco>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @scollegamento-arco Scollegamento blocchi
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Scollegamento blocchi UC diagram.]
) <scollegamento-arco-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive la procedura di scollegamento di due blocchi collegati tramite un arco orientato.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. sceglie due blocchi da scollegare;
   2. scollega i due blocchi scelti eliminando l'arco orientato che li collegava.
 - Sistema:
   1. gestisce l'input dell'utente;
   2. aggiorna il workflow.
- *Pre-condizioni*:
   - Il workflow ha almeno due blocchi;
   - I blocchi da scollegare sono collegati tra loro;
   - L'utente è entrato in modalità di modifica (@modifica-workflow).
- *Post-condizioni*:
   - Viene eliminato l'arco orientato tra i due blocchi selezionati dall'utente.

=== Aggiunta descrizione <aggiunta-descrizione>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @aggiunta-descrizione Aggiunta descrizione
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Aggiunta descrizione UC diagram.]
) <aggiunta-descrizione-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive la procedura di aggiunta della descrizione dell'automazione tra due blocchi collegati.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. sceglie l'arco in cui vuole aggiungere la descrizione;
   2. aggiunge la descrizione dell'automazione in linguaggio naturale sopra l'arco scelto.
 - Sistema:
   1. gestisce l'input dell'utente;
   2. aggiorna il workflow.
- *Pre-condizioni*:
   - Il workflow ha almeno due blocchi collegati tramite un arco che non specifica alcuna descrizione;
   - L'utente è entrato in modalità di modifica (@modifica-workflow).
- *Post-condizioni*:
   - Viene aggiunta la descrizione dell'automazione relativa all'arco selezionato dall'utente.

=== Modifica descrizione <modifica-descrizione>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @modifica-descrizione Modifica descrizione
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Modifica descrizione UC diagram.]
) <modifica-descrizione-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive la procedura di modifica della descrizione dell'automazione tra due blocchi collegati.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. seleziona la descrizione da modificare;
   2. modifica la descrizione dell'automazione scelta indicando in linguaggio naturale la nuova azione che deve fare il sistema.
 - Sistema:
   1. gestisce gli input dell'utente;
   2. aggiorna il workflow.
- *Pre-condizioni*:
   - È presente una descrizione in almeno un arco orientato del workflow;
   - L'utente è entrato in modalità di modifica (@modifica-workflow).
- *Post-condizioni*:
   - Viene modificata la descrizione dell'automazione relativa all'arco selezionato dall'utente.

=== Uscita modalità modifica <stop-modifica-workflow>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @stop-modifica-workflow Uscita modalità modifica
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Uscita modalità modifica UC diagram.]
) <stop-modifica-workflow-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive la procedura per uscire dalla modalità di modifica di un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. termina la modifica del workflow;
   2. seleziona l'opzione per uscire dalla modalità di modifica.
 - Sistema:
   1. esce dalla modalità di modifica;
   2. mostra la schermata con tutti i workflow.
- *Pre-condizioni*:
   - L'utente è entrato in modalità di modifica (@modifica-workflow).
- *Post-condizioni*:
   - Viene terminata la modifica del workflow selezionato dall'utente.

=== Salvataggio workflow <salvataggio-workflow>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0.25), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @salvataggio-workflow Salvataggio workflow
    ], name: <a>),

    node((2,0.5), align(center)[
            @errore-connessione-database Errore connessione database
    ], name: <b>),
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
- *Descrizione*:
  - Questo caso d'uso descrive la procedura di salvataggio di un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. seleziona l'opzione per salvare il workflow che ha creato.
 - Sistema:
   1. interagisce con il database per salvare il workflow dell'utente.
- *Pre-condizioni*:
    - L'utente ha disegnato un workflow.
- *Post-condizioni*:
   - Il workflow dell'utente viene salvato.
- *Estensioni*:
   - Errore connessione database (@errore-connessione-database).

=== Errore connessione database <errore-connessione-database>
- *Descrizione*:
  - Questo caso d'uso descrive la procedura di gestione dell'errore di connessione al database.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. esegue un'operazione che richiede l'accesso ai dati sul database.
 - Sistema:
   1. interagisce con il database;
   2. il database non è disponibile;
   3. viene visualizzato un messaggio d'errore.
- *Post-condizioni*:
   - Viene segnalato all'utente che non è possibile connettersi al database.

=== Visualizzazione funzioni del blocco Gmail <funzionalità-blocco-gmail>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @funzionalità-blocco-gmail Visualizzazione funzioni blocco Gmail
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Visualizzazione funzioni del blocco Gmail UC diagram.]
) <visualizzazione-funzioni-blocco-gmail-diagram>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione delle funzioni del blocco Gmail.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
    1. clicca sul blocco Gmail;
    2. visualizza le funzioni disponibili.
 - Sistema:
    1. fa visualizzare all'utente una breve descrizione del blocco Gmail;
    2. fa visualizzare la lista delle funzioni disponibili: ricerca di una mail, ottenere una specifica mail, creazione di una bozza.
- *Pre-condizioni*:
    - L'utente ha associato l'account di Google collegato ai servizi offerti dai blocchi.
- *Post-condizioni*:
   - L'utente visualizza una breve descrizione e le funzionalità offerte dal blocco Gmail.  


=== Logout <logout>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node((0,0.26), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((1,0), align(center)[
            @logout Logout
    ], shape: ellipse, name: <a>),

    
    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Logout UC diagram.]
) <logout-diagram>
- *Descrizione*:
  - Questo caso d'uso descrive la procedura di logout di un utente.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. seleziona l'opzione per fare il logout;
   2. conferma il logout.
 - Sistema:
   1. fa visualizzare la schermata di conferma del logout;
   2. attende la conferma dell'utente;
   3. disconnette l'account dall'applicativo.
- *Post-condizioni*:
   - L'utente non è più autenticato.
