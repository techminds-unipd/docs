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
    caption: [Creazione nuovo workflow UC diagram]
) <creazione-nuovo-workflow-diagram>

- *Attori principali*:
  - Utente.
- *Scenario principale*:
 - Utente:
   1. naviga nella pagina workflow.
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

    node((0,0), [#image("../assets/actor.jpg") Utente], stroke: 0pt, name: <user>),
    node((4,0), [#image("../assets/actor.jpg") Database], stroke: 0pt, name: <database>),
    edge(<user>, <a>),
    edge(<database>, <a>),

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
    caption: [Salvataggio workdflow UC diagram]
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
   - Errore connessione database (@errore-connessione-database)

=== Errore connessione database <errore-connessione-database>
- *Attori principali*:
  - Utente.
- *Scenario principale*:
 - Utente:
   1. esegue un'operazione che richiede l'accesso ai dati sul database.
 - Sistema:
   1. interagisce con il database.
   2. il database non è disponibile.
   3. viene visualizzato un messaggio d'errore.
- *Post-condizioni*:
   - Viene segnalato all'utente che non è possibile connettersi al database.
