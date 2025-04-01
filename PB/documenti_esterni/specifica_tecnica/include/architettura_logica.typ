#import "/template/template.typ": glossario
= Architettura logica
La descrizione dell'architettura logica adotta un approccio top-down, partendo dalla struttura
generale per poi scendere nel dettaglio delle singole componenti.

== Convenzioni diagrammi UML
Nei diagrammi UML sono state adottate le seguenti convenzioni:
- *[0..1]* per indicare un tipo di ritorno opzionale;
- *Classi di colore celeste* per indicare classi fornite da librerie esterne.

#include "frontend/frontend.typ"
#include "backend/backend.typ"
#include "agente.typ"
#include "database.typ"
