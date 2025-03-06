== Backend

=== Introduzione
Come architettura logica del backend si è deciso di mettere a confronto l'architettura layered e l'architettura esagonale.
Dopo le seguenti considerazioni si è arrivati alla decisione di utilizzare un'architettura esagonale.
Le maggiori considerazioni sono:
- architettura più "pulita" rispetto alla layered, visto che la business logic viene resa indipendente dal resto;
- vista la struttura rigida probabilmente permette di ottenere codice più pulito e comprensibile.

Questa scelta ovviamente porta anche dei lati negativi, come per esempio la facilità di sviluppo e di testing.

=== Diagramma delle classi
#figure(
    image("../assets/backend_diagramma_classi.svg", width: 55%),
  caption: [Diagramma delle classi della componente backend.],
)

=== Business Logic
=== Application Logic
=== Persistence Logic
