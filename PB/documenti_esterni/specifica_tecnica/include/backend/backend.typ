#set list(marker: ([-], [•], [‣]))

== Backend

=== Introduzione
Come architettura logica del backend abbiamo scelto di usare l'architettura esagonale, dopo averla confrontata con l'architettura layered.

L'architettura esagonale è un pattern architetturale che ha come obiettivo principale quello di creare applicazioni lascamente accoppiate, rendendo i suoi layer facilmente rimpiazzabili, testabili e manutenibili.

L'architettura esagonale ci permette di avere i seguenti vantaggi:
- La business logic non dipende da altri layer ed è isolata;
- La struttura rigida ben definita permette di ottenere codice ben strutturato, evitando di cascare facilmente in alcuni errori tipici della programmazione ad oggetti;
- Facile da testare, visto che ogni layer è isolato (vale anche per la layered in questo caso).

Questa scelta ha anche dei lati negativi, ad esempio:
- La struttura rigida potrebbe richiedere più ore di codifica;
- Presenza di più codice, causato ad esempio dall'astrazione con le varie porte e relativi adapter.

=== Diagramma delle classi
#figure(
    image("../../assets/backend_diagramma_classi.svg", width: 55%),
  caption: [Diagramma delle classi della componente backend.],
)

=== Funzionalità
#include("register_user.typ")
#include("login_user.typ")
#include("get_workflow.typ")
#include("create_workflow.typ")
#include("workflow_name_list.typ")
#include("delete_workflow.typ")
