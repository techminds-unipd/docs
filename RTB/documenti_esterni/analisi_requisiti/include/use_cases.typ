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
    node((4,0.5), [#image("../assets/actor.jpg") Database], stroke: 0pt, name: <db>),
    edge(<db>, <b>),

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

    node(enclose: (<b>,<c>,<d>),
        align(top + right)[Sistema],
        width: 200pt,
        height: 200pt,
        snap: -1,
        name: <group>)
    ),

    caption: [Login UC diagram.]
) <login-diagram>

- *Attori principali*:
  - Utente.
- *Attori secondari*:
  - Database.
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
- *Estensioni*:
  - Credenziali errate (@credenziali-errate)
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
   - inserisce lo username;
   - inserisce la password;
 - Sistema:
   1. verifica che le credenziali dell'utente siano corrette;
   2. la verifica non ha successo;
   3. viene visualizzato un messaggio d'errore.
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
   - L'utente possiede un account Google.
   - L'utente non è già autenticato.
- *Post-condizioni*:
   - L'utente viene autenticato ed ottiene una sessione.

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
   - L'utente è autenticato.
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

  

