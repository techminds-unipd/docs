#import "/template/template.typ": documento, team

#show: documento.with(
  title: "Specifica tecnica",
  sommario: "Il documento riporta le scelte progettuali e tecnologiche adottate per lo sviluppo del prodotto.",
  changelog: (
    "0.2.0", "24/02/2024", "Aggiunta sezione introduzione", team.M, "",
    "0.1.0", "24/02/2024", "Struttura documento", team.M, "",
  )
)


#include "include/introduzione.typ"
#include "include/tecnologie.typ"
#include "include/architettura_sistema.typ"
#include "include/architettura_deploy.typ"
#include "include/stato_requisiti_funzionali.typ"

