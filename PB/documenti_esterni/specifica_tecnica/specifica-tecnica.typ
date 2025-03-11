#import "/template/template.typ": documento, team

#show: documento.with(
  title: "Specifica tecnica",
  sommario: "Il documento riporta le scelte progettuali e tecnologiche adottate per lo sviluppo del prodotto.",
    changelog: (
    "0.8.0", "11/03/2025", "Aggiunta sezione frontend", team.C, "",
    "0.7.0", "08/03/2025", "Aggiunta funzionalità backend LoginUser", team.G, team.S,
    "0.6.0", "07/03/2025", "Aggiunta funzionalità backend registrazione", team.G, team.C,
    "0.5.0", "06/03/2025", "Aggiunta sezione introduzione e diagramma delle classi per il backend", team.G, team.A,
    "0.4.0", "25/02/2025", "Aggiunta sezione tecnologie", team.S, team.C,
    "0.3.0", "25/02/2025", "Aggiunta sezione introduzione architettura di sistema", team.G, team.A,
    "0.2.0", "24/02/2025", "Aggiunta sezione introduzione", team.M, team.C,
    "0.1.0", "24/02/2025", "Struttura documento", team.M, team.A,
  )
)

// #glossario[progetto]
// #glossario[ai]
// #glossario[glossario]
// #glossario[agente]
// #glossario[workflow]
// #glossario[archi]

#include "include/introduzione.typ"
#include "include/tecnologie.typ"
#include "include/architettura_sistema.typ"
#include "include/architettura_deploy.typ"
#include "include/stato_requisiti_funzionali.typ"

