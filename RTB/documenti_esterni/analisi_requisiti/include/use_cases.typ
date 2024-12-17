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

    node((0.25,0.5), [#image("../assets/actor.jpg") Utente non#linebreak() autenticato], stroke: 0pt, name: <utente>),
    edge(<utente>, <login>),

    node((2,0), align(center)[
            @login Login
    ], shape: ellipse, name: <login>, inset:10pt),
    edge(<login-interno>, <login>,marks: (none,empty-dash)),

    node((2,0.5), align(center)[
            @login-interno Login interno
    ], shape: ellipse, name: <login-interno>, inset:10pt),

    edge(<login-interno>, <ins-user>, "--straight", [\<\<include\>\>]),

    node((3,0.75), align(center)[
            @inserimento-username Inserimento username
    ], shape: ellipse, name: <ins-user>, inset:10pt),

    edge(<login-interno>, <ins-pass>, "--straight", [\<\<include\>\>]),

    node((3,0.25), align(center)[
            @inserimento-password Inserimento password
    ], shape: ellipse, name: <ins-pass>, inset:10pt),



    node((2,1.5), align(center)[
            @credenziali-errate Credenziali errate
    ], shape: ellipse, name: <credenziali-errate>, inset:10pt),

 
   node((2,1), align(center)[
    ], shape: circle, name: <nf>,width:1pt, height:1pt, inset:10pt),

  edge(<nf>,<pnf>, "--"),

  node((2.9,1.25), align(center)[
    L'utente inserisce delle #linebreak()credenziali errate o inesistenti
    ], shape: rect, name: <pnf>, inset:10pt),
 


    edge(<credenziali-errate>,<login-interno>, "--straight", [\<\<extend\>\>]),

    node((2.75,0), align(center)[
             @login-google Login Google
    ], shape: ellipse, name: <login-google>, inset:10pt),

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
   - L'utente possiede l'applicativo.
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
   - L'utente possiede l'applicativo.
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
   - L'utente possiede l'applicativo.
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
   - L'utente possiede l'applicativo.
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
- *Pre-condizioni*:
   - L'utente possiede l'applicativo.
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
- *Pre-condizioni*:
   - L'utente possiede l'applicativo.
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

    node((0,0.5), [#image("../assets/actor.jpg") Utente non #linebreak() autenticato], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((1.6,0), align(center)[
            @registrazione Registrazione
    ], shape: ellipse, name: <b>),

    node((2.65,0.05), align(center)[
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

    node((1.91,1), align(center)[
            @creazione-password Creazione password
    ], shape: ellipse, name: <f>),
    edge(<b>, <f>, "--straight", [\<\<include\>\>]),

    node((2.7,1.3), align(center)[
            @conferma-password Conferma password
    ], shape: ellipse, name: <g>),
    edge(<b>, <g>, "--straight", [\<\<include\>\>]),

    node((2.6,0.35), align(center)[
            Utente inserisce #linebreak() dati non validi
    ], shape: rect, name: <le>),
    node((2.1,0.025), align(center)[
    ], shape: circle, name: <nf>, width: 1pt, height: 1pt),
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

=== Aggiunta account Google associato ai workflows
<aggiunta-account-google-associato>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,

    node((0.2,0.5), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((3.5,0.5), [#image("../assets/actor.jpg") Google], stroke: 0pt, name: <google>),
    edge(<google>, <b>),

    node((2,0.5), align(center)[
             @aggiunta-account-google-associato Aggiunta account Google associato
    ], shape: ellipse, name: <b>),

    node((2,1.3), align(center)[
            @errore-comunicazione-google Errore comunicazione Google
    ], shape: ellipse, name: <e>),
    edge(<e>, <b>, "--straight", [\<\<extend\>\>]),

    node((1.6,0.9), align(center)[
            Google trasmette #linebreak() un errore
    ], shape: rect, name: <le>),
    node((2,0.9), align(center)[
    ], shape: circle, name: <nf>, width: 1pt, height: 1pt),
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

=== Rimozione account Google associato ai workflows <rimozione-account-google-associato>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,

    node((0,0.5), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <a>),
    edge(<a>, <b>),

    node((2,0.5), align(center)[
             @rimozione-account-google-associato Rimozione account Google associato
    ], shape: ellipse, name: <b>, inset: 10pt),


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
    node-inset: 10pt,
    node((0,0), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
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
- *Descrizione*
  - Questo caso d'uso descrive la procedura di creazione di un nuovo workflow.
- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
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
   2. gestisce gli input dell'utente.
- *Pre-condizioni*:
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
    node-inset: 10pt,
    node((0,0.25), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
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
- *Descrizione*
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
- *Descrizione*
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

=== Visualizzazione blocchi configurati <visualizzazione-blocchi-configurati>
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    label-size: 8pt,
    node-inset: 10pt,
    node((0,0.25), [#image("../assets/actor.jpg") Utente autenticato], stroke: 0pt, name: <user>),
    edge(<user>, <a>),

    node((2,0), align(center)[
            @visualizzazione-blocchi-configurati
            Visualizzazione blocchi configurati
    ], shape: ellipse, name: <a>),

    node((1.8,1), align(center)[
            @avviso-servizi-non-collegati Avviso servizi non collegati
    ], shape: ellipse, name: <b>),
    edge(<b>, <a>, "--straight", [\<\<extend\>\>]),

    node((2.6,0.4), align(center)[
            Nessun servizio #linebreak() collegato
    ], shape: rect, name: <le>),
    node((1.89,0.5), align(center)[
    ], shape: circle, name: <nf>, width: 1pt, height: 1pt),
    edge(<le>, <nf>, "--"),
    node(enclose: (<a>,<b>,<le>),
        align(top + right)[Sistema],
        width: 300pt,
        height: 170pt,
        snap: -1,
        name: <group>)
    ),
    caption: [Visualizzazione blocchi configurati UC diagram.]
) <visualizzazione-blocchi-configurati-diagram>

- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
    1. Avvia la procedura di creazione di un nuovo workflow.
 - Sistema:
    1. Controlla che ci sia un account Google collegato.
    2. Trova un account Google collegato.
    3. Fa visualizzare i blocchi dei servizi di Google.
- *Post-condizioni*:
   - L'utente visualizza i blocchi configurati.
- *Estensioni*:
   - Avviso servizi non collegati.

=== Avviso servizi non collegati 
<avviso-servizi-non-collegati>

- *Attori principali*:
  - Utente autenticato.
- *Scenario principale*:
 - Utente autenticato:
    1. Avvia la procedura di creazione di un nuovo workflow.
 - Sistema:
    1. Controlla che ci sia un account Google collegato.
    2. Non trova un account Google collegato. 
    3. Viene visualizzato un avviso.
- *Post-condizioni*:
   - Viene segnalato all'utente che non ha nessun account Google collegato.
   - L'utente viene rediretto alla pagina per collegare l'account Google.