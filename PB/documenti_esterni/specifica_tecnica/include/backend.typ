== Backend

=== Introduzione
Come architettura logica del backend abbiamo scelto di usare l'architettura esagonale dopo averla confrontata con l'architettura layered.

L'architettura esagonale ci permette di avere i seguenti vantaggi:
- la business logic non ha dipendenze da altri layer ed è isolata;
- la struttura rigida ben definita permette di ottenere, in teoria, codice più \"pulito\" e comprensibile;
- facile da testare, visto che ogni layer è isolato (vale anche per la layered in questo caso).

Questa scelta ha anche dei lati negativi, ad esempio:
- la struttura rigida potrebbe richiedere più ore di codifica.
- presenza di più codice \"boilerplate\".

=== Diagramma delle classi
#figure(
    image("../assets/backend_diagramma_classi.svg", width: 55%),
  caption: [Diagramma delle classi della componente backend.],
)

=== Business Logic
=== Application Logic
=== Persistence Logic
