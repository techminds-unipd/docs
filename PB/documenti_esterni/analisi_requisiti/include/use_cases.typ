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

#let uc_comment(node, extrude) = {
	let (w, h) = node.size
	let (x, y) = (w/2, h/2)
	let d = 0.5*calc.min(w/2, h/2)

	let obj = draw.line(
		(-x, -y),
		(-x, +y),
		(+x -0.3cm, +y),
		(+x, +y -0.3cm),
		(+x -0.3cm, +y -0.3cm),
		(+x -0.3cm, +y),
		(+x, +y -0.3cm),
		(+x, -y),
		close: true,
	)
	draw.group(obj) // enables cetz border anchors
}

= Casi d'uso

== Obiettivi
Questa sezione è dedicata all'identificazione e alla descrizione 
dei casi d'uso emersi dall'analisi. I casi d'uso servono a 
descrivere nel dettaglio le operazioni che l'utente può compiere 
all'interno dell'applicativo, offrendo una panoramica completa 
delle funzionalità disponibili. Inoltre, permettono di definire 
chiaramente le interazioni tra l'utente e il sistema, evidenziando come avviene il 
dialogo tra questi due. Infine, si occupano anche di delineare le modalità di interazione tra il sistema e i servizi esterni.
== Attori
- *Attori principali*:
  - Utente non autenticato;
  - Utente autenticato;
  - Frontend;
  - Backend.
- *Attori secondari*:
  - Google;
  - #glossario[Pastebin];;
  - #glossario[LLM].

== Sistema
  Il sistema è composto dai seguenti elementi:
    - Frontend;
    - Backend;
    - Database;
    - #glossario[Agente].
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
    ], shape: uc_comment, name: <pnf>),
 


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
- *Descrizione*:
  - Questo caso d'uso descrive le operazioni nel caso in cui le credenziali fornite siano errate o inesistenti.
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
- *Descrizione*:
  - Questo caso d'uso descrive l'uso dell'account Google per effettuare il login.
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

=== Logout <logout>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
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

    

    node((1.7,1.2), align(center)[
            @creazione-password Creazione password
    ], name: <f>),
    edge(<b>, <f>, "--straight", [\<\<include\>\>]),

    node((2.5,1), align(center)[
            @conferma-password Conferma password
    ], name: <g>),
    edge(<b>, <g>, "--straight", [\<\<include\>\>]),

    node((2.7,0.35), align(center)[
            Utente inserisce #linebreak() dati non validi
    ], shape: uc_comment, name: <le>),
    node((2.1,0.025), align(center)[
    ], name: <nf>, width: 1pt, height: 1pt),
    edge(<le>, <nf>, "--"),

    node(enclose: (<b>,<c>,<d>,<f>,<g>),
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
   3. crea una password valida (@creazione-password);
   4. conferma la password (@conferma-password).
 - Sistema:
   1. attende l'esito di @creazione-username, @creazione-password e @conferma-password;
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
    1. inserisce username o password non validi.
  - Sistema:
    1. l'esito della verifica da @creazione-username, @creazione-password o @conferma-password è negativo;
    2. mostra un messaggio d'errore all'utente;
    3. offre la possibilità all'utente di correggere i campi errati.
- *Pre-condizioni*:
  - L'utente non possiede un account.
- *Post-condizioni*:
  - L'utente non possiede un account;
  - Viene mostrato un messaggio d'errore esplicativo.

=== Aggiunta account Google associato ai workflow
<aggiunta-account-google-associato>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 12pt,
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
    ], shape: uc_comment, name: <le>),
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
  - Questo caso d'uso descrive la procedura di aggiunta di un account Google associato all'utente autenticato. Grazie a questa associazione, l'utente può utilizzare i servizi Google offerti dai blocchi dei workflow.
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
    node-inset: 12pt,
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

=== Visualizzazione lista workflow creati <visualizzazione-lista-workflow>
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
            @visualizzazione-lista-workflow Visualizzazione lista workflow creati
    ], name: <a>),

    node((2,0.7), align(center)[
            @visualizzazione-singolo-workflow Visualizzazione singolo workflow
    ], name: <b>),

    edge(<a>, <b>, "--straight", [\<\<include\>\>]),

    node(enclose: (<a>,<b>,),
        align(top + right)[Sistema],
        width: 210pt,
        height: 170pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Visualizzazione lista workflow creati UC diagram.]
) <visualizzazione-lista-workflow-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione della lista di workflow creati dall'utente.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. visualizza la lista contenente tutti i workflow creati;
   2. visualizza ogni workflow presente nella lista (@visualizzazione-singolo-workflow).
 - Sistema:
   1. recupera tutti i workflow creati dall'utente;
   2. mostra una lista dei workflow creati all'utente.
- *Post-condizioni*:
   - Viene mostrata all'utente la lista di workflow che ha creato.

==== Visualizzazione singolo workflow <visualizzazione-singolo-workflow>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione di un singolo workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. visualizza il nome del workflow sotto forma di link;
   2. visualizza accanto al nome un'opzione per eliminare il workflow.
 - Sistema:
   1. mostra il singolo workflow.
- *Post-condizioni*:
   - Viene mostrato all'utente il singolo workflow.

=== Creazione nuovo workflow vuoto <creazione-nuovo-workflow>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 13pt,
    node-shape: ellipse,
    node((0,0.3), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <b>),
    
    node((1.3,0), align(center)[
        @creazione-nuovo-workflow Creazione workflow vuoto
    ], name: <b>),

    node((1.7,1.3), align(center)[
            @avviso-nome-uguale Visualizzazione avviso nome non accettabile
    ], name: <c>),
    edge(<c>, <b>, "--straight", [\<\<extend\>\>]),

    node((0.9,0.7), align(center)[
            Nome non valido #linebreak() o non univoco
    ], shape: uc_comment, name: <le>),
    node((1.48,0.7), align(center)[
    ], name: <nf>, width: 1pt, height: 1pt),
    edge(<le>, <nf>, "--"),

    node((2.5,0.5), align(center)[
            @inserimento-nome-workflow Inserimento \ nome workflow
    ], name: <d>),
    edge(<b>, <d>, "--straight", [\<\<include\>\>]),

    node(enclose: (<b>,<c>,<le>,<nf>,<d>),
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
   2. inserisce il nome del workflow (@inserimento-nome-workflow);   
   3. seleziona l'opzione per creare un nuovo workflow.
 - Sistema:
   1. porta l'utente nella pagina per la creazione del workflow;
   2. verifica che il nome inserito sia valido e univoco (tra tutti i workflow dell'utente);
   3. la verifica ha successo;
   4. crea un nuovo workflow vuoto;
   5. mostra il nuovo workflow vuoto creato.
- *Post-condizioni*:
   - Viene creato il workflow vuoto.
- *Estensioni*:
   - Visualizzazione nome non valido (@avviso-nome-uguale).

==== Inserimento nome workflow <inserimento-nome-workflow>
- *Descrizione*:
  - Questo caso d'uso descrive la procedura di inserimento del nome di un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. inserisce il nome del workflow.
  - Sistema:
    1. associa il nome immesso al workflow;
    2. continua la procedura di creazione del workflow.
- *Post-condizioni*:
  - Il nome del workflow è stato inserito.

=== Visualizzazione avviso nome non accettabile
<avviso-nome-uguale>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione di un avviso per notificare all'utente che ha inserito un nome per il workflow non valido o non univoco.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
    1. visualizza un avviso che segnala l'inserimento di un nome non valido.
 - Sistema:
   1. verifica che il nome inserito sia valido e univoco (tra tutti i workflow dell'utente);
   2. la verifica non ha successo;
   3. mostra un messaggio di errore.
- *Post-condizioni*:
  - Viene segnalato all'utente che il nome inserito non è valido.

=== Visualizzazione lista blocchi configurati <visualizzazione-lista-blocchi-configurati>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 13pt,
    node-shape: ellipse,
    node((0,0.3), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <b>),
    
    node((1.3,0), align(center)[
        @visualizzazione-lista-blocchi-configurati
        Visualizzazione lista \ blocchi configurati
    ], name: <b>),

    node((1.7,1.3), align(center)[
            @avviso-servizi-non-collegati Visualizzazione avviso \ servizi non collegati
    ], name: <c>),
    edge(<c>, <b>, "--straight", [\<\<extend\>\>]),

    node((0.9,0.7), align(center)[
            Nessun servizio #linebreak() collegato
    ], shape: uc_comment, name: <le>),
    node((1.518,0.7), align(center)[
    ], name: <nf>, width: 1pt, height: 1pt),
    edge(<le>, <nf>, "--"),

    node((2.6,0.5), align(center)[
            @visualizzazione-singolo-blocco-configurato Visualizzazione singolo \ blocco configurato
    ], name: <d>),
    edge(<b>, <d>, "--straight", [\<\<include\>\>]),

    node(enclose: (<b>,<c>,<le>,<nf>,<d>),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Visualizzazione lista blocchi configurati UC diagram.]
) <visualizzazione-lista-blocchi-configurati-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive la funzionalità di visualizzazione della lista dei blocchi configurati.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
    1. visualizza la lista dei blocchi configurati.
 - Sistema:
    1. verifica quali sono i servizi associati;
    2. mostra i blocchi che hanno un servizio associato.
- *Post-condizioni*:
   - L'utente visualizza la lista dei blocchi configurati.
- *Estensioni*:
   - Avviso servizi non collegati (@avviso-servizi-non-collegati).

==== Visualizzazione singolo blocco configurato <visualizzazione-singolo-blocco-configurato>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione di un singolo blocco configurato.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
      1. visualizza il nome del servizio del blocco configurato;
      2. visualizza un'opzione all'interno del blocco per visualizzare maggiori informazioni.
  - Sistema:
      1. mostra il blocco configurato.
- *Post-condizioni*:
  - L'utente visualizza il blocco configurato.

=== Visualizzazione avviso servizi non collegati 
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
  - L'utente non ha collegato alcun servizio esterno per l'uso dei blocchi.
- *Post-condizioni*:
   - Viene segnalato all'utente che non ha nessun servizio collegato;
   - L'utente viene rediretto alla pagina per collegare i servizi.

=== Visualizzazione informazioni blocco <funzionalità-blocco>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0,0.5), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((1,0.5), align(center)[
            @funzionalità-blocco Vis. informazioni blocco
    ], name: <a>),

    node((1.7,0), align(center)[
            @funzionalità-blocco-gmail Vis. informazioni blocco Gmail
    ], name: <b>),
    edge(<b>, <a>, marks: (none,empty-dash)),

    node((2,0.5), align(center)[
            @funzionalità-blocco-pastebin Vis. informazioni blocco Pastebin
    ], name: <d>),
    edge(<d>, <a>, marks: (none,empty-dash)),

    node((1.7,1), align(center)[
            @funzionalità-blocco-calendar Vis. informazioni blocco Calendar
    ], name: <c>),
    edge(<c>, <a>, marks: (none,empty-dash)),

    node(enclose: (<a>,<b>,<c>,<d>),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Visualizzazione informazioni blocco UC diagram.]
) <visualizzazione-informazioni-blocco-diagram>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione delle informazioni di un blocco.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
    1. seleziona un blocco;
    2. visualizza le informazioni disponibili.
 - Sistema:
    1. fa visualizzare all'utente una breve descrizione del blocco selezionato;
    2. fa visualizzare la lista delle funzioni disponibili.
- *Post-condizioni*:
   - L'utente visualizza una breve descrizione e le funzionalità offerte dal blocco selezionato.

=== Visualizzazione informazioni del blocco Gmail <funzionalità-blocco-gmail>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 12pt,
    node-shape: ellipse,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @funzionalità-blocco-gmail Visualizzazione informazioni blocco Gmail
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Visualizzazione informazioni del blocco Gmail UC diagram.]
) <visualizzazione-informazioni-blocco-gmail-diagram>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione delle informazioni del blocco Gmail.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
    1. seleziona blocco Gmail;
    2. visualizza le informazioni relative al blocco.
 - Sistema:
    1. fa visualizzare all'utente una breve descrizione del blocco Gmail;
    2. fa visualizzare la lista delle funzioni disponibili: ricerca di una mail, ottenere una specifica mail, creazione di una bozza.
- *Pre-condizioni*:
    - L'utente ha associato l'account di Google collegato ai servizi offerti dai blocchi.
- *Post-condizioni*:
   - L'utente visualizza una breve descrizione e le funzionalità offerte dal blocco Gmail.

=== Visualizzazione informazioni del blocco Pastebin <funzionalità-blocco-pastebin>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 12pt,
    node-shape: ellipse,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @funzionalità-blocco-pastebin Visualizzazione informazioni blocco Pastebin
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Visualizzazione informazioni del blocco Pastebin UC diagram.]
) <visualizzazione-funzionali-blocco-pastebin-diagram>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione delle informazioni del blocco Pastebin.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
    1. seleziona blocco Pastebin;
    2. visualizza le informazioni relative al blocco.
 - Sistema:
    1. fa visualizzare all'utente una breve descrizione del blocco Pastebin;
    2. fa visualizzare la lista delle funzioni disponibili: creare e scrivere su un documento.
- *Post-condizioni*:
   - L'utente visualizza una breve descrizione e le funzionalità offerte dal blocco Pastebin.

=== Visualizzazione informazioni del blocco Calendar <funzionalità-blocco-calendar>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 12pt,
    node-shape: ellipse,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @funzionalità-blocco-calendar Visualizzazione informazioni blocco Calendar
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Visualizzazione informazioni del blocco Calendar UC diagram.]
) <visualizzazione-informazioni-blocco-calendar-diagram>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione delle informazioni del blocco Calendar.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
    1. seleziona blocco Calendar;
    2. visualizza le informazioni relative al blocco.
 - Sistema:
    1. fa visualizzare all'utente una breve descrizione del blocco Calendar;
    2. fa visualizzare la lista delle funzioni disponibili: creare un evento, cercare tra gli eventi creati.
- *Pre-condizioni*:
    - L'utente ha associato l'account di Google collegato ai servizi offerti dai blocchi.
- *Post-condizioni*:
   - L'utente visualizza una breve descrizione e le funzionalità offerte dal blocco Calendar.



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
   1. aggiunge un blocco di automazione già configurato, trascinandolo nell'area drag and drop.
 - Sistema:
   1. gestisce l'input dell'utente;
   2. aggiorna la vista del workflow.
- *Pre-condizioni*:
   - L'utente ha creato almeno un workflow.
- *Post-condizioni*:
   - Viene aggiunto al workflow il blocco scelto dall'utente.

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
   2. aggiorna la vista del workflow.
- *Pre-condizioni*:
   - L'utente ha creato un workflow con almeno un blocco.
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
   2. aggiorna la vista del workflow.
- *Pre-condizioni*:
   - L'utente ha creato un workflow con almeno due blocchi;
   - I blocchi da collegare sono scollegati tra loro.
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
   2. aggiorna la vista del workflow.
- *Pre-condizioni*:
   - L'utente ha creato un workflow con almeno due blocchi;
   - I blocchi da scollegare sono collegati tra loro.
- *Post-condizioni*:
   - Viene eliminato l'arco orientato tra i due blocchi selezionati dall'utente.

=== Inserimento descrizione automazione <inserimento-descrizione>
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
            @inserimento-descrizione Inserimento descrizione automazione
    ], name: <a>),

    node(enclose: (<a>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Inserimento descrizione automazione UC diagram.]
) <inserimento-descrizione-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive la procedura di inserimento della descrizione dell'automazione tra due blocchi collegati.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. seleziona l'arco in cui scrivere l'automazione;
   2. scrive la descrizione dell'automazione scelta indicandola in linguaggio naturale.
 - Sistema:
   1. gestisce gli input dell'utente;
   2. aggiorna la vista del workflow.
- *Pre-condizioni*:
   - Il workflow contiene almeno un arco.
- *Post-condizioni*:
   - L'arco selezionato contiene la descrizione inserita dall'utente.

=== Visualizzazione struttura workflow <visualizzazione-struttura-workflow>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 12pt,
    node-shape: ellipse,
    node((0,0.25), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((1.8,0), align(center)[
            @visualizzazione-struttura-workflow Visualizzazione struttura workflow
    ], name: <a>),

    node((1.2,0.8), align(center)[
            @visualizzazione-blocco-workflow Visualizzazione \ blocco workflow
    ], name: <b>),

    edge(<a>, <b>, "--straight", [\<\<include\>\>]),

    node((2.5,0.8), align(center)[
            @visualizzazione-arco-workflow Visualizzazione \ arco workflow
    ], name: <c>),

    edge(<a>, <c>, "--straight", [\<\<include\>\>]),

    node(enclose: (<a>,<b>,<c>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Visualizzazione struttura workflow UC diagram.]
) <visualizzazione-struttura-workflow-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione della struttura di un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. visualizza l'insieme di nodi del workflow (@visualizzazione-blocco-workflow);
   2. visualizza l'insieme di archi del workflow (@visualizzazione-arco-workflow).
 - Sistema:
   1. mostra il workflow selezionato dall'utente.
- *Pre-condizioni*:
   - L'utente ha creato almeno un workflow.
- *Post-condizioni*:
   - Viene mostrata la struttura del workflow selezionato dall'utente.

==== Visualizzazione blocco workflow <visualizzazione-blocco-workflow>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione di un blocco presente in un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. visualizza il nome del servizio all'interno del blocco presente nel workflow.
  - Sistema:
    1. mostra il blocco presente nel workflow.
- *Pre-condizioni*:
  - L'utente ha creato almeno un workflow.
- *Post-condizioni*:
  - L'utente visualizza il blocco presente nel workflow.

==== Visualizzazione arco workflow <visualizzazione-arco-workflow>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione di un arco presente in un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. visualizza l'arco che collega i blocchi presenti nel workflow;
    2. visualizza la descrizione dell'automazione sull'arco.
  - Sistema:
    1. mostra l'arco e la descrizione presente nel workflow.
- *Pre-condizioni*:
  - L'utente ha creato almeno un workflow.
- *Post-condizioni*:
  - L'utente visualizza l'arco e la descrizione presente nel workflow.

=== Salvataggio workflow <salvataggio-workflow>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 12pt,
    node-shape: ellipse,
    node((0,0.5), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((1.7,0), align(center)[
            @salvataggio-workflow Salvataggio workflow
    ], name: <a>),

    node((1.25,1.2), align(center)[
            @vis-errore-struttura-workflow Vis. errore \ struttura workflow
    ],  name: <vis-errore-struttura-workflow>),

    edge(<vis-errore-struttura-workflow>, <a>, "--straight", [\<\<extend\>\>]),

    node((0.9,0.75), align(center)[
            Il workflow non è valido
    ], shape: uc_comment, name: <post-it>),

    node((2.2,1.2), align(center)[
            @vis-errore-operazione-workflow Visualizzazione errore \ operazione workflow
    ], name: <b>),
    edge(<b>, <a>, "--straight", [\<\<extend\>\>]),

    node((1.389,0.75), align(center)[
    ], name: <f>, width: 1pt, height: 1pt),
    edge(<post-it>, <f>, "--"),

    node((2.7,0.75), align(center)[
            Errore operazione workflow
    ], shape: uc_comment, name: <c>),

    node((2.01,0.75), align(center)[
    ], name: <d>, width: 1pt, height: 1pt),
    edge(<c>, <d>, "--"),

    node(enclose: (<a>,<b>, <c>, <d>, <vis-errore-struttura-workflow>, <post-it>),
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
   1. controlla che il workflow sia valido;
   2. interagisce con il database per salvare il workflow dell'utente.
- *Pre-condizioni*:
    - L'utente ha disegnato un workflow.
- *Post-condizioni*:
   - Il workflow dell'utente viene salvato.
- *Estensioni*:
   - Visualizzazione errore operazione workflow (@vis-errore-operazione-workflow);
   - Visualizzazione errore struttura workflow (@vis-errore-struttura-workflow).

=== Visualizzazione errore operazione workflow <vis-errore-operazione-workflow>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione di un errore durante un'operazione svolta su un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. visualizza un messaggio di errore che indica il fallimento di una operazione sul workflow.
 - Sistema:
   1. esegue l'operazione richiesta;
   2. l'operazione fallisce;
   3. viene visualizzato un messaggio d'errore.
- *Post-condizioni*:
   - Viene segnalato all'utente che c'è stato un errore in seguito all'operazione richiesta.


=== Eliminazione workflow <eliminazione-workflow>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 12pt,
    node-shape: ellipse,
    node((0,0.25), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @eliminazione-workflow Eliminazione workflow
    ], name: <a>),

    node((2.7,0.6), align(center)[
            Errore operazione workflow
    ], shape: uc_comment, name: <c>),

    node((2,0.6), align(center)[
    ], name: <d>, width: 1pt, height: 1pt),
    edge(<c>, <d>, "--"),

    node((2,1), align(center)[
            @vis-errore-operazione-workflow Visualizzazione errore \ operazione workflow
    ], name: <b>),
    edge(<b>, <a>, "--straight", [\<\<extend\>\>]),

    node(enclose: (<a>,<b>, <c>, <d>),
        align(top + right)[Sistema],
        width: 150pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Eliminazione workflow UC diagram.]
) <eliminazione-workflow-diagram>
- *Descrizione*:
  - Questo caso d'uso descrive la procedura di eliminazione di un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
   1. seleziona l'opzione per eliminare il workflow che ha creato.
 - Sistema:
   1. interagisce con il database per cancellare il workflow dell'utente.
- *Pre-condizioni*:
    - Il workflow selezionato è presente nel database.
- *Post-condizioni*:
   - Il workflow selezionato è stato eliminato dal database e non è più disponibile.
- *Estensioni*:
   - Visualizzazione errore operazione workflow (@vis-errore-operazione-workflow).

=== Esecuzione workflow <esecuzione-workflow>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-shape: ellipse,
    node-inset: 10pt,

    node((-0.6,0.5), [#image("../assets/actor.jpg") Utente #linebreak() autenticato], stroke: 0pt, name: <utente-autenticato>),
    edge(<utente-autenticato>, <esecuzione-workflow>),

    node((3.9,0.2), [#image("../assets/actor.jpg") LLM], stroke: 0pt, name: <llm>),
    edge(<llm>, <esecuzione-workflow>),
    
    node((3.3,0.55), [#image("../assets/actor.jpg") Google], stroke: 0pt, name: <ggl>),
    edge(<ggl>, <esecuzione-workflow>),

    node((3.9,1.2), [#image("../assets/actor.jpg") Pastebin], stroke: 0pt, name: <pstb>),
    edge(<pstb>, <esecuzione-workflow>),


    node((1.25,0), align(center)[
            @esecuzione-workflow Esecuzione workflow 
    ],  name: <esecuzione-workflow>),

    node((1,1.5), align(center)[
            @vis-errore-struttura-workflow Vis. errore \ struttura workflow
    ],  name: <vis-errore-struttura-workflow>),

    edge(<vis-errore-struttura-workflow>, <esecuzione-workflow>, "--straight", [\<\<extend\>\>]),

    node((.6,0.5), align(center)[
            Il workflow non è valido
    ], shape: uc_comment, name: <post-it>),

    node((1.142,0.5), align(center)[
    ], name: <nf>, width: 1pt, height: 1pt),
    edge(<post-it>, <nf>, "--"),

    node((1.7,1.25), align(center)[
            @vis-errore-runtime Vis. errore runtime
    ],  name: <vis-errore-runtime>),
    edge(<vis-errore-runtime>, <esecuzione-workflow>, "--straight", [\<\<extend\>\>]),
    
    node((2,0.8), align(center)[
            L'agente non riesce a #linebreak() completare l'operazione
    ], shape: uc_comment, name: <post-it2>),

    node((1.53,0.8), align(center)[
    ], name: <nf2>, width: 1pt, height: 1pt),
    edge(<post-it2>, <nf2>, "--"),

    node(enclose: (<esecuzione-workflow>,<vis-errore-struttura-workflow>,<vis-errore-runtime>,<nf>,<nf2>,<post-it2>,<post-it>,),
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
  - LLM;
  - Google;
  - Pastebin.
- *Scenario principale*:
 - Utente autenticato:
   1. esegue il workflow.
 - Sistema:
   1. controlla che il workflow sia valido;
   2. inoltra i dati all'agente che si interfaccia ad un LLM, il quale utilizza i servizi di Google e Pastebin;
   3. restituisce il risultato dell'operazione.
- *Pre-condizioni*:
   - L'utente ha creato un workflow con almeno due blocchi.
- *Post-condizioni*:
  - L'esecuzione del workflow termina con successo.
- *Estensioni*:
  - Visualizzazione errore runtime (@vis-errore-runtime);
  - Visualizzazione errore workflow (@vis-errore-struttura-workflow).
  

=== Visualizzazione errore struttura workflow <vis-errore-struttura-workflow>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione dell'errore causato da un workflow non valido.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
  - Utente autenticato:
    1. ha avviato un'operazione su un workflow.
  - Sistema:
    1. rileva che almeno un requisito nella struttura del workflow non è stato soddisfatto;
    2. mostra un messaggio d'errore all'utente;
    3. termina l'operazione.
- *Pre-condizioni*:
  - L'utente ha creato un workflow senza rispettare i vincoli.
- *Post-condizioni*:
  - L'operazione termina e viene mostrato un messaggio d'errore all'utente.

=== Visualizzazione errore runtime <vis-errore-runtime>
- *Descrizione*:
  - Questo caso d'uso descrive la visualizzazione dell'errore di runtime durante l'esecuzione di un workflow.
- *Attori principali*:
  - Utente autenticato.
- *Attori secondari*:
  - LLM;
  - Google;
  - Pastebin.
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


=== Visualizzazione risultato esecuzione workflow <vis-risultato-esecuzione-workflow>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-shape: ellipse,
    node-inset: 13pt,

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
    1. visualizza la risposta testuale dell'agente, contenente l'esito dei passi dell'esecuzione e link delle risorse generate.
  - Sistema:
    1. riceve il risultato della corretta esecuzione del workflow da @esecuzione-workflow;
    2. mostra il risultato all'utente.
- *Pre-condizioni*:
  - L'esecuzione del workflow (@esecuzione-workflow) è terminata senza errori.
- *Post-condizioni*:
  - Viene mostrato un messaggio all'utente con il risultato dell'operazione.


=== Invio dati workflow (frontend #sym.arrow backend)<invio-dati-frontend-backend>          

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
            @invio-dati-frontend-backend Invio dati workflow
    ],  name: <invio-dati-frontend-backend>),
    edge(<frontend>, <invio-dati-frontend-backend>),


    node(enclose: (<invio-dati-frontend-backend>,),
        align(top + right)[Backend],
        width: 200pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Invio dati workflow (frontend #sym.arrow backend) UC diagram.]
) <invio-dati-frontend-backend-diagram>
- *Descrizione*:
  - Questo caso d’uso descrive le operazioni di invio dei dati necessari da parte del frontend al backend per l’esecuzione di un workflow, approfondendo @esecuzione-workflow.
- *Attori principali*:
  - Frontend.
- *Scenario principale*:
  - Frontend:
    1. invia l'insieme dei blocchi, degli archi e delle automazioni del workflow.
  - Backend:
    1. riceve i dati necessari per l'esecuzione del workflow.
- *Pre-condizioni*:
   - L'esecuzione del workflow è stata avviata.
- *Post-condizioni*:
  - Il backend riceve i dati necessari dal frontend per l'esecuzione del workflow.

=== Invio dati workflow (backend #sym.arrow agente)<invio-dati-backend-agente>

#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node((0.3,0.5), [#image("../assets/actor.jpg") Backend], stroke: 0pt, name: <back-end>),
    edge(<back-end>, <invio-dati-backend-agente>),

    node((2,0.5), align(center)[
            @invio-dati-backend-agente Invio dati workflow
    ],  name: <invio-dati-backend-agente>),


    node(enclose: (<invio-dati-backend-agente>,),
        align(top + right)[Agente],
        width: 200pt,
        height: 150pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Invio dati workflow (backend #sym.arrow agente) UC diagram.]
) <invio-dati-backend-agente-diagram>

- *Descrizione*:
  - Questo caso d'uso descrive le operazioni di invio dei dati necessari da parte del backend all'agente per l'esecuzione di un workflow, approfondendo @esecuzione-workflow.
- *Attori principali*:
  - Backend.
- *Scenario principale*:
 - Backend:
    1. invia l'insieme dei blocchi processati e ordinati, delle automazioni in linguaggio naturale e dei token di autorizzazione necessari.
 - Agente:
   1. riceve i dati necessari per l'esecuzione del workflow.
- *Pre-condizioni*:
   - L'esecuzione del workflow è stata avviata;
   - Il backend ha ricevuto i dati relativi al workflow dal frontend.
- *Post-condizioni*:
  - L'agente riceve i dati necessari dal backend per l'esecuzione del workflow.




