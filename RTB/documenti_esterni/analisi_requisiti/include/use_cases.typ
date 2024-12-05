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
   - Apre la configurazione dei servizi Google (@gestione-servizi-google);
   - Inserisce delle credenziali Google (@inserimento-credenziali-google).
 - Sistema:
   1. Verifica se un account Google è già collegato;
   2. Se è collegato, permette all'utente di rimuoverlo (@rimozione-account-google-associato);
   3. Se non è collegato, chiede all'utente di accedere a Google (@inserimento-credenziali-google);
   4. Se si verifica un errore nella comunicazione mostra un messaggio d'errore (@errore-comunicazione-google);

- *Pre-condizioni*:
   - L'utente è autenticato;
- *Post-condizioni*:
   - L'utente ha associato o rimosso un account Google.
- *Estensioni*:
  - Inserimento credenziali Google (@inserimento-credenziali-google);
  - Errore comunicazione Google (@errore-comunicazione-google);

=== Rimozione account Google associato <rimozione-account-google-associato>
- *Attori principali*:
  - Utente.
- *Attori secondari*:
  - Google.
- *Scenario principale*:
 - Utente:
   - Avvia la procedura di rimozione dell'account Google associato
 - Sistema:
   1. Rimuove l'account Google associato all'esecuzione dei blocchi nei workflow (@rimozione-account-google-associato);
   2. Notifica il completamento dell'operazione;
   3. Se si verifica un errore nella comunicazione con Google mostra un messaggio d'errore (@errore-comunicazione-google);

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
   - Avvia la procedura di associazione di un account Google;
   - Inserisce le credenziali dell'account Google che vuole collegare.
 - Sistema:
   1. Mostra la finestra di Google per la configurazione dell'account;
   2. Notifica il completamento dell'operazione;
   3. Se si verifica un errore nella comunicazione con Google mostra un messaggio d'errore (@errore-comunicazione-google).

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
   - Compie un'azione per la gestione dell'account Google associato (@gestione-servizi-google).
 - Sistema:
   1. Notifica all'utente l'errore di comunicazione con Google e il mancato completamento dell'operazione corrente.

- *Pre-condizioni*:
   - Si verifica un errore di comunicazione con i sistemi di Google.
- *Post-condizioni*:
   - Il sistema notifica l'errore all'utente.