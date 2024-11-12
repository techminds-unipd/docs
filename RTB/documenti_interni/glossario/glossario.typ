#import "/template/template.typ": documento,team

#show: documento.with(
  title: "Glossario",
  sommario: "",
  changelog: (
    "1.0", "11/11/2024", "Prima versione", team.S + linebreak() + team.L + linebreak() + team.G, ""
  )
)
#set heading(numbering: none)


= Introduzione
Questo documento definisce tutti i termini specifici usati nell'ambito del progetto di Ingegneria del Software,
con lo scopo di fornire una terminologia comune a tutti i membri del gruppo.


#show heading.where(level: 1): text.with(size: 1.5em, weight: "bold", fill: rgb("#f16610"))

= A
== #h(2.1%) Analisi dei requisiti
#pad(left: 10pt, [Attività preliminare allo sviluppo (o alla modifica) di un sistema software, il cui scopo è quello di definire le funzionalità che il nuovo prodotto (o il prodotto modificato) deve offrire, ovvero i requisiti che devono essere soddisfatti dal software sviluppato.])

= B
= C
= D
= E
= F
= G
= H
= I
= J
= K
= L
= M
= N
= O
= P
= Q
= R
== #h(2.1%) Registro delle modifiche
#pad(left: 10pt, [Struttura che tiene traccia delle modifiche effettuate ad un documento, con indicazione della versione, della data, della descrizione della modifica, dell'autore e del verificatore.])

== #h(2.1%) Requisito
#pad(left: 10pt, [La capacità necessaria a un utente per raggiungere un obiettivo (lato bisogno/requisiti utente) o la capacità necessaria a un sistema per rispondere a una aspettativa (lato soluzione/requisiti software).])

== #h(2.1%) Responsabile
#pad(left: 10pt, [Persona che ha il compito di coordinare le attività di gruppo, l'elaborazione di piani e scadenze, e approva il rilascio di prodotti parziali o finali (software/documentazione).])

== #h(2.1%) Retrospettiva
#pad(left: 10pt, [Attività che si svolge al termine di uno sprint, in cui il team riflette sul lavoro svolto, individua i punti di forza e debolezza e propone azioni di miglioramento per lo sprint successivo.])

== #h(2.1%) RTB 
#pad(left: 10pt, [Acronimo di "Requirements and Technology Baseline", consiste nella prima revisione di avanzamento del progetto, in cui vanno presentati l'Analisi dei Requisiti e il PoC.])

= S
== #h(2.1%) Scrum
#pad(left: 10pt, [Framework di sviluppo agile che suddivide il lavoro in cicli iterativi chiamati sprint e permette l'adattamento rapido ai cambiamenti attraverso feedback regolari.])

== #h(2.1%) Sprint
#pad(left: 10pt, [Periodo di tempo prefissato, di durata massima di un mese, in cui il team sviluppa un piccolo incremento di prodotto finale.])

== #h(2.1%) Stakeholder
#pad(left: 10pt, [Persona o gruppo di persone che hanno interesse nel progetto, e lo influenzano o vengono influenzati da esso, come il committente o il fornitore.])

= T
== #h(2.1%) Tracciamento
#pad(left: 10pt, [Attività che permette di mantenere la coerenza tra i requisiti e i componenti del sistema, in modo da poter tracciare l'evoluzione del sistema e verificare che i requisiti siano soddisfatti.])

== #h(2.1%) Typst
#pad(left: 10pt, [Typst è un sistema di impaginazione basato su markup progettato per essere un' alternativa a LaTeX pur essendo più facile da apprendere ed utilizzare.])

= U
== #h(2.1%) Uml
#pad(left: 10pt, [Acronimo di "Unified Modeling Language", è un linguaggio di modellazione utilizzato per descrivere, visualizzare e documentare i componenti di un sistema software.])

== #h(2.1%) User Story
#pad(left: 10pt, [Breve descrizione di una funzionalità del software, scritta dal punto di vista dell'utente, che descrive chi è l'utente, cosa vuole e perché.])

= V
== #h(2.1%) Validazione
#pad(left: 10pt, [Si occupa di accertare che il prodotto finale soddisfi i requisiti specificati e corrisponda alle attese (Did I build the right system?) quindi pone l'attenzione sul prodotto finale.])

== #h(2.1%) Verbali
#pad(left: 10pt, [Documento che riporta le discussioni e le decisioni prese durante una riunione, con indicazione della data, dei partecipanti, degli argomenti trattati e delle decisioni prese.])

== #h(2.1%) Verifica
#pad(left: 10pt, [Si occupa di accertare che lo svolgimento delle attività di sviluppo non introduca errori (Did I build the system right?) quindi pone l'attenzione sul way of working.])

= W
== #h(2.1%) Way of working
#pad(left: 10pt, [Si veda Norme di Progetto.])

= X
= Y
= Z