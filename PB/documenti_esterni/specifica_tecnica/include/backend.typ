== Backend

=== Introduzione
Come architettura logica del backend si e' deciso di mettere a confronto l'architettura layered e l'architettura esagonale.
Dopo le seguenti considerazioni si e' arrivati alla decisione di utilizzare un'architettura esagonale.
Le maggiori considerazioni sono:
- architettura piu' "pulita" rispetto alla layered, visto che la business logic viene resa indipendente dal resto;
- vista la struttura rigida probabilmente permette di ottenere codice piu' pulito e comprensibile.

Questa scelta ovviamente porta anche dei lati negativi, come per esempio la facilita' di sviluppo e di testing.

=== Diagramma delle classi
=== Business Logic
=== Application Logic
=== Persistence Logic