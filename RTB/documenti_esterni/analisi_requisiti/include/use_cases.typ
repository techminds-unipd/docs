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

=== Esecuzione workflow <esecuzione-workflow>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,

    node((0,0.5), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((3.5,0.6), [#image("../assets/actor.jpg") LLM], stroke: 0pt, name: <llm>),
    edge(<llm>, <c>),

    node((1.5,0), align(center)[
            @esecuzione-workflow Esecuzione workflow 
    ], shape: ellipse, name: <b>),

    node((2,0.6), align(center)[
            @backend-esecuzione Backend esecuzione
    ], shape: ellipse, name: <c>),
    edge(<b>, <c>, "-->", [\<\<include\>\>]),

    node((1,0.6), align(center)[
             @controllo-workflow Controllo workflow
    ], shape: ellipse, name: <d>),
    edge(<b>, <d>, "-->", [\<\<include\>\>]),

    node((1,1.2), align(center)[
            @vis-errore-workflow Vis. errore workflow
    ], shape: ellipse, name: <e>),
    edge(<e>, <d>, "-->", [\<\<extend\>\>]),

    node((1.5,1.5), align(center)[
            @vis-errore-backend Vis. errore backend
    ], shape: ellipse, name: <g>),
    edge(<g>, <c>, "-->", [\<\<extend\>\>]),

    node((2.5,1.5), align(center)[
            @vis-risultato-esecuzione Vis. risultato esecuzione
    ], shape: ellipse, name: <f>),
    edge(<c>, <f>, "-->", [\<\<include\>\>]),

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
- *Scenario principale*:
 - Utente autenticato:
   1. esegue il workflow.
 - Sistema:
   1. controlla che l'intero workflow sia valido (@controllo-workflow);
   2. attende l'esito del controllo;
   3. inoltra i dati al backend (@backend-esecuzione).
- *Pre-condizioni*:
   - L'utente è autenticato.
   - L'utente ha creato un workflow con almeno due blocchi.
- *Post-condizioni*:
   - L'operazione viene gestita dal backend.

==== Controllo workflow <controllo-workflow>

- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. esegue il workflow.
  - Sistema:
    1. controlla che il workflow sia valido;
    2. ritorna l'esito del controllo;
    3. continua con l'esecuzione.
- *Pre-condizioni*:
  - L'utente ha creato un workflow valido.
- *Post-condizioni*:
  - Il controllo ha successo.
- *Estensioni*
  - Visualizzazione errore workflow (@vis-errore-workflow).

==== Backend esecuzione <backend-esecuzione>

- *Attori principali*:
  - Utente autenticato.
- *Attori secondari*:
  - LLM.
- *Scenario principale*:
  - Utente autenticato:
    1. esegue il workflow.
  - Sistema:
    1. inoltra la descrizione ad un LLM;
    2. processa la richiesta;
    3. esegue l'operazione;
    4. restituisce il risultato (@vis-risultato-esecuzione).
- *Pre-condizioni*:
  - Controllo workflow (@controllo-workflow) positivo.
- *Post-condizioni*:    
  - L'operazione viene eseguita e il risultato viene restituito (@vis-risultato-esecuzione).   
- *Estensioni*:
  - Visualizzazione errore (@vis-errore-backend).

==== Visualizzazione risultato esecuzione <vis-risultato-esecuzione>

- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. esegue il workflow.
  - Sistema:
    1. riceve il risultato dell'operazione da @backend-esecuzione;
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
    1. esegue il workflow.
  - Sistema:
    1. il controllo in @controllo-workflow non ha successo;
    2. mostra un messaggio d'errore all'utente;
    3. termina l'esecuzione.
- *Pre-condizioni*:
  - L'utente ha creato un workflow senza rispettare i vincoli.
- *Post-condizioni*:
  - L'esecuzione termina e viene mostrato un messaggio d'errore all'utente.

=== Visualizzazione errore backend <vis-errore-backend>

- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. esegue il workflow.
  - Sistema:
    1. risconta un problema durante l'esecuzione di @backend-esecuzione;
    2. non conclude l'operazione;
    3. mostra un messaggio d'errore all'utente.
- *Pre-condizioni*:
  - L'utente è autenticato.
- *Post-condizioni*:
  - L'esecuzione termina e viene mostrato un messaggio d'errore all'utente.

  

