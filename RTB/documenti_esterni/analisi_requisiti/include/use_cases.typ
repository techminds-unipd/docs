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

=== Descrizione operazione <descrizione-operazione>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,

    node((0,0.5), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((1.5,0), align(center)[
            @descrizione-operazione Descrizione operazione 
    ], shape: ellipse, name: <b>),

    node((2,0.7), align(center)[
            @agente Utilizzo agente
    ], shape: ellipse, name: <c>),
    edge(<c>, <b>, "-->", [\<\<extend\>\>]),

    node((1,0.7), align(center)[
             @controllo-input Controllo input vuoto
    ], shape: ellipse, name: <d>),
    edge(<b>, <d>, "-->", [\<\<include\>\>]),

    node(enclose: (<b>,<c>,<d>),
        align(top + right)[Sistema],
        width: 200pt,
        height: 200pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Descrizione operazione UC diagram]
) <operazione-diagram>

- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. seleziona collegamento tra due blocchi del workflow;
   2. descrive in linguaggio naturale l'operazione da eseguire rispetto al collegamento selezionato;
   3. esegue il workflow.
 - Sistema:
   1. controlla che l'input dell'utente non sia vuoto (@controllo-input);
   2. se il controllo ha successo l'input viene inoltrato all'agente per controllare la validità dell'operazione ed eseguirla (@agente).
- *Pre-condizioni*:
   - L'utente è autenticato;
   - L'utente ha creato un workflow con almeno due blocchi.
- *Post-condizioni*:
   - L'operazione viene gestita dall'agente.
- *Estensioni*
   - Utilizzo agente (@agente).

==== Controllo validità input <controllo-input>
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    - inserisce descrizione operazione.
  - Sistema:
    1. controlla che l'input dell'utente non sia vuoto;
    2. se il controllo fallisce l'esecuzione si ferma.
- *Pre-condizioni*:
  - L'utente è autenticato;
  - L'utente ha creato un workflow con almeno due blocchi;
  - L'utente ha selezionato un collegamento tra due blocchi.
- *Post-condizioni*:
  - Se il controllo ha successo l'esecuzione continua, altrimenti si ferma.

=== Utilizzo agente <agente>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,

    node((0,0.5), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((4,0), [#image("../assets/actor.jpg") LLM], stroke: 0pt, name: <llm>),
    edge(<llm>, <b>),

    node((4,0.8), [#image("../assets/actor.jpg") Tools], stroke: 0pt, name: <tools>),
    edge(<tools>, <b>),

    node((1.5,0), align(center)[
            @agente Utilizzo agente 
    ], shape: ellipse, name: <b>),

    node((1,1), align(center)[
            @visualizzazione-errore Visualizzazione errore
    ], shape: ellipse, name: <c>),
    edge(<c>, <b>, "-->", [\<\<extend\>\>]),

    node((2,1), align(center)[
            @visualizzazione-risultato Visualizzazione risultato
    ], shape: ellipse, name: <d>),
    edge(<d>, <b>, "-->", [\<\<extend\>\>]),

    node(enclose: (<b>,<c>,<d>),
        align(top + right)[Sistema],
        width: 200pt,
        height: 200pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Utilizzo agente UC diagram]
) <agente-diagram>

- *Attori principali*:
  - Utente autenticato.
- *Attori secondari*:
  - LLM;
  - Tools.
- *Scenario principale*:
  - Utente autenticato:
    1. descrive l'operazione da eseguire;
    2. esegue il workflow.
  - Sistema:
    1. inoltra la descrizione ad un LLM che controlla se l'operazione è consona al contesto, la interpreta e la riformula in un formato adatto;
    2. se la richiesta non è valida viene visualizzato un messaggio d'errore (@visualizzazione-errore);
    3. processa la richiesta riformulata;
    4. esegue l'operazione richiesta attraverso Tools;
    5. restituisce il risultato all'utente (@visualizzazione-risultato).
- *Pre-condizioni*:
  - L'utente è autenticato;
  - L'utente ha inserito una descrizione dell'operazione da eseguire.
- *Post-condizioni*:
  - L'operazione viene eseguita e il risultato viene mostrato all'utente (@visualizzazione-risultato).
- *Trigger*
  - L'utente esegue il workflow.    
- *Estensioni*:
  - Visualizzazione errore (@visualizzazione-errore);
  - Visualizzazione risultato (@visualizzazione-risultato).

=== Visualizzazione errore <visualizzazione-errore>
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. descrive l'operazione da eseguire;
    2. esegue il workflow.
  - Sistema:
    1. inoltra la descrizione ad un LLM che controlla se l'operazione è consona al contesto;
    2. la descrizione non è valida;
    3. viene mostrato un messaggio d'errore;
    4. l'esecuzione termina.
- *Pre-condizioni*:
  - L'utente è autenticato;
  - L'utente ha inserito una descrizione dell'operazione;
  - L'utente ha eseguito il workflow.
- *Post-condizioni*:
  - Viene mostrato un messaggio d'errore;
  - L'esecuzione termina.
- *Trigger*
  - L'utente ha inserito una descrizione dell'operazione non valida.

=== Visualizzazione risultato <visualizzazione-risultato>
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. descrive l'operazione da eseguire;
    2. esegue il workflow.
  - Sistema:
    1. inoltra la descrizione ad un LLM che controlla se l'operazione è consona al contesto, la interpreta e la riformula in un formato adatto;
    2. la richiesta è valida;
    3. processa la richiesta riformulata;
    4. esegue l'operazione richiesta attraverso Tools;
    5. viene mostrato un messaggio con il risultato positivo, negativo o di errore dell'operazione.
- *Pre-condizioni*:
  - L'utente è autenticato;
  - L'utente ha inserito una descrizione valida dell'operazione;
  - L'utente ha eseguito il workflow.
- *Post-condizioni*:
  - Viene mostrato un messaggio con il risultato dell'operazione.
- *Trigger*
  - L'utente esegue il workflow.
  

