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
#set heading(supplement: "")

=== Login <Login>

#diagram(
  debug: false,
  node-stroke: 1pt,
  edge-stroke: 1pt,
  label-size: 8pt,

  node((0,0.5), [#image("../assets/actor.jpg") Utente], stroke: 0pt, name: <a>),
  edge(<a>, <b>),

  node((4,0.5), [#image("../assets/actor.jpg") Google], stroke: 0pt, name: <google>),
  edge(<google>, <d>),

  node((2,0), align(center)[
        @Login Login
  ], shape: ellipse, name: <b>),

  node((2,1), align(center)[
        UC2 Credenziali errate
  ], shape: ellipse, name: <c>),

  edge(<c>, <b>, "-->", [\<\<extend\>\>]),

  node((3,0.5), align(center)[
        UC3 Login Google
  ], shape: ellipse, name: <d>),

  edge(<d>, <b>, "-|>"),

  node(enclose: (<b>,<c>,<d>),
    align(top + right)[Sistema],
    width: 200pt,
    height: 200pt,
    snap: -1,
    name: <group>)
)

- *Attori principali*:
  - Utente
- *Attori secondari*:
  - Google
- *Scenario principale*:
 - Utente:
   - Inserisce lo username (@inserimento-username).
   - Inserisce la password (@inserimento-password).
 - Sistema:
   1. Verifica che le credenziali dell'utente siano corrette.
   2. Se la verifica ha successo viene assegnata una sessione all'utente.
   3. Se le credenziali sono sbagliate si mostra un messaggio d'errore (UC2).
- *Pre-condizioni*:
   - L'utente possiede un account.
   - L'utente non è già autenticato.
- *Post-condizioni*:
   - L'utente viene autenticato ed ottiene una sessione.
- *Trigger*
- *Estensioni*:
  - Login Google UC3

==== Inserimento username <inserimento-username>
==== Inserimento password <inserimento-password>