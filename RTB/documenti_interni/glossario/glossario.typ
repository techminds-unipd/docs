#import "/template/template.typ": documento,team

#show: documento.with(
  title: "Glossario",
  sommario: "",
  changelog: (
    "0.1.0", "11/11/2024", "Prima versione", team.L, ""
  )
)
#set heading(numbering: none)


= Introduzione
Questo documento definisce tutti i termini specifici usati nell'ambito del progetto di Ingegneria del Software,
con lo scopo di fornire una terminologia comune a tutti i membri del gruppo.


#show heading.where(level: 1): text.with(size: 1.5em, weight: "bold", fill: rgb("#f16610"))

= A

== #h(2.1%) Accoppiamento
#pad(left: 10pt, [Nell'ambito della programmazione ad oggetti, è una misura del grado di dipendenza fra due classi. Più le classi sono accoppiate più è probabile che la modifica di una implica la modifica delle classi che ne dipendono.])

== #h(2.1%) Agente
#pad(left: 10pt, [Nel campo dell'intelligenza artificiale, l'agente (detto anche Agente Intelligente) è un'entità in grado di percepire l'ambiente esterno ed effettuare delle azioni in modo autonomo, migliorando le performance nel tempo attraverso la conoscenza passata.])

== #h(2.1%) Analisi dei requisiti
#pad(left: 10pt, [Attività preliminare allo sviluppo (o alla modifica) di un sistema software, il cui scopo è quello di definire le funzionalità che il nuovo prodotto (o il prodotto modificato) deve offrire, ovvero i requisiti che devono essere soddisfatti dal software sviluppato.])

== #h(2.1%) API
#pad(left: 10pt, [Acronimo di _Application Programming Interface_, è un insieme di procedure atte a consentire la comunicazione tra diversi software o tra diversi componenti di software.])

== #h(2.1%) Attore
#pad(left: 10pt, [Nel contesto dell'analisi dei requisiti, rappresenta un'entità che interagisce con il sistema svolgendo delle attività, può essere un utente oppure un sistema esterno.])

== #h(2.1%) AWS
#pad(left: 10pt, [Acronimo di Amazon Web Services, è una sussidiaria di Amazon che fornisce servizi di cloud computing.])

= B

== #h(2.1%) Backlog
#pad(left: 10pt, [Insieme di compiti/attività da completare per un certo obiettivo. Nel framework Scrum esistono due tipologie di backlog, il _product backlog_ ovvero l'insieme di tutti i compiti/attività del progetto e lo _spring backlog_, che indica i compiti/attività da completare durante uno sprint.])

== #h(2.1%) Baseline
#pad(left: 10pt, [Versione di un prodotto corrispondente ad obiettivi di raggiungimento, spesso fissati da una milestone. Una baseline viene approvata ed è modificabile solamente tramite un processo definito, formale e tracciato.])

== #h(2.1%) Bedrock
#pad(left: 10pt, [Bedrock è un servizio di AWS che rende disponibili modelli di intelligenza artificiale tramite un sistema unificato.])

== #h(2.1%) Build Automation
#pad(left: 10pt, [Processo che automatizza la build dei sorgenti.])

= C

== #h(2.1%) Capitolato
#pad(left: 10pt, [Documento del proponente in cui viene esposto un problema che si vuole risolvere attraverso un applicativo software, specificando norme, tecnologie e vincoli.])

== #h(2.1%) Caso d'uso
#pad(left: 10pt, [Descrizione dettagliata di come un attore interagisce con il sistema nel compiere un'attivita specifica. È utilizzato nel contesto dello sviluppo software per individuare i requisiti funzionali del prodotto.])

== #h(2.1%) Commit
#pad(left: 10pt, [Operazione che registra le modifiche apportate al codice in un repository. Ogni commit rappresenta uno snapshot del progetto in un determinato momento.])

= D

== #h(2.1%) Diagramma di Gantt
#pad(left: 10pt, [Strumento a supporto della gestione dei progetti, costituito da barre orizzontali di lunghezza variabile che rappresentano le sequenze, la durata e l'arco temporale di ogni singola attività del progetto.])

== #h(2.1%) Diagramma UML
#pad(left: 10pt, [Metodo per visualizzare sistemi e software utilizzando il linguaggio di modellazione unificato (UML).])

== #h(2.1%) Discord
#pad(left: 10pt, [Piattaforma VoIP, messaggistica instantanea e distribuzione digitale.])

= E

== #h(2.1%) Economicità
#pad(left: 10pt, [Combinazione di efficienza ed efficacia.])

== #h(2.1%) Efficacia
#pad(left: 10pt, [Misura della capacità di raggiungere l'obiettivo prefissato.])

== #h(2.1%) Efficienza
#pad(left: 10pt, [Misura dell'abilità di raggiungere l’obiettivo impiegando le risorse minime indispensabili.])

= F
= G

== #h(2.1%) Git
#pad(left: 10pt, [Software per il controllo di versione distribuito.])

== #h(2.1%) GitHub
#pad(left: 10pt, [Servizio di hosting per progetti software, il nome deriva dal fatto che è una implementazione dello strumento di controllo di versione distribuito git.])

== #h(2.1%) GitHub Flow
#pad(left: 10pt, [Pratica usata nella gestione dei branch in un repository, il GitHub Flow utilizza un branch principale (solitamente chiamato main o master) da cui vengono creati dei branch di feature.
                 All'interno dei branch di feature vengono effettuate le modifiche che poi verranno integrate nel branch main attraverso una Pull Request.])

== #h(2.1%) GitHub Pages
#pad(left: 10pt, [Servizio di GitHub che fornisce hosting per siti web statici.])

== #h(2.1%) Glossario
#pad(left: 10pt, [Elenco organizzato di termini tecnici, acronimi e definizioni utilizzati nel contesto del progetto.])

= H
= I

== #h(2.1%) Integrazione continua
#pad(left: 10pt, [Spesso indicata con CI (dall'inglese Continuous Integration), è una pratica di sviluppo in cui è presente un meccanismo di Build Automation e dove il team integra frequentemente le modifiche.])

== #h(2.1%) Intelligenza Artificiale
#pad(left: 10pt, [Disciplina che studia come realizzare sistemi informatici in grado di simulare il ragionamento umano.])

== #h(2.1%) Issue
#pad(left: 10pt, [Elemento che richiede attenzione o risoluzione all'interno di un progetto.])

== #h(2.1%) ITS
#pad(left: 10pt, [Acronimo di Issues Tracking System, è uno strumento che gestisce e mantiene una lista di Issues, spesso usato per progetti in team.])

= J
= K
= L

== #h(2.1%) LLM
#pad(left: 10pt, [Acronimo di Large Language Model. Modello di deep learning progettato per eseguire task di Natural Language Processing, come la generazione di un testo. Un LLM apprende molti parametri in modo supervisionato, individuando relazioni statistiche tra una grande quantità di testi.])

= M

== #h(2.1%) Major version
#pad(left: 10pt, [Nel contesto di gestione delle versioni, indica un cambiamento radicale o aggiornamento significativo (a volte non retrocompatibile) di un software o documento.])

== #h(2.1%) MVP
#pad(left: 10pt, [Acronimo di Minimum Viable Product. Prodotto software ridotto nelle funzionalità che soddisfa i requisiti essenziali. É utilizzato a scopo esplorativo per ricevere feedback e valutare la bontà della visione di prodotto, in modo da prendere decisioni consapevoli sul completamento del software.])

== #h(2.1%) Milestone
#pad(left: 10pt, [Data di calendario che determina un punto di avanzamento atteso del progetto. Le milestones sono uno strumento di pianficazione.])

== #h(2.1%) Minor version
#pad(left: 10pt, [Nel contesto di gestione delle versioni, indica un aggiornamento che aggiunge contenuto/funzionalità senza cambiare il significato o il comportamento di un software o documento.])

= N

== #h(2.1%) Norme di progetto
#pad(left: 10pt, [Documento gestionale interno redatto in forma esecutiva, ossia composto da regole e procedure, che descrive il way of working. É volto a standardizzare i processi in modo da assicurare la coerenza del lavoro svolto dai diversi membri e la qualità dei prodotti.])

= O
= P

== #h(2.1%) Patch
#pad(left: 10pt, [Piccolo aggiornamento, spesso utilizzato per indicare la risoluzione di un bug o piccole modifiche.])

== #h(2.1%) Piano di qualifica
#pad(left: 10pt, [Documento che specifica gli obiettivi, indicati in modo quantitativo, di qualità dei prodotti e dei processi.])

== #h(2.1%) Processo
#pad(left: 10pt, [Insieme di attività correlate e coese che, consumando risorse, trasformano ingressi (bisogni) in uscite (prodotti). Ogni processo deve svolgersi secondo le indicazioni fornite dalle Norme di Progetto.])

== #h(2.1%) Processo di ciclo di vita
#pad(left: 10pt, [Processi che definiscono quali attività svolgere per attuare, in modo efficiente ed efficace, corrette transizioni di stato nel ciclo di vita di un prodotto software.])

== #h(2.1%) PB
#pad(left: 10pt, [Acronimo di Product Baseline. Baseline il cui oggetto centrale è il MVP (Minimum Viable Product).])

== #h(2.1%) PoC
#pad(left: 10pt, [Acronimo di Proof of Concept. É una baseline tecnologica che usa le tecnologie proposte per lo sviluppo dei requisiti. Il suo scopo è acquisire conoscenza, valutare l'adeguatezza e la compatibilità di tali tecnologie. Deve richiedere un basso costo di sviluppo.])

== #h(2.1%) Progetto
#pad(left: 10pt, [Insieme di attività che devono raggiungere determinati obiettivi a partire da determinate specifiche, con una data di inizio e una data di fine fissate, con risorse limitate che si consumano nello svolgersi.])

== #h(2.1%) Pull request
#pad(left: 10pt, [Nel contesto di un repository di versionamento distribuito, è un modo per notificare ai membri del team che è stata completata una funzionalità in un branch di feature e che si può effettuare il merge nel branch main, con previa verifica.])

== #h(2.1%) Python
#pad(left: 10pt, [Linguaggio ad alto livello orientato agli oggetti, apprezzato per la sua semplicità e flessibilità.])

= Q
= R
== #h(2.1%) Registro delle modifiche
#pad(left: 10pt, [Struttura che tiene traccia delle modifiche effettuate ad un documento, con indicazione della versione, della data, della descrizione della modifica, dell'autore e del verificatore.])

== #h(2.1%) Repository
#pad(left: 10pt, [Luogo in cui vengono salvati i prodotti creati. Costituisce una fonte di condivisione del lavoro svolto da ciascun membro. É caratterizzato da persistenza e consistenza, garantite dalle procedure indicate nelle "Norme di Progetto".])

== #h(2.1%) Requisito
#pad(left: 10pt, [La capacità necessaria a un utente per raggiungere un obiettivo (lato bisogno/requisiti utente) o la capacità necessaria a un sistema per rispondere a una aspettativa (lato soluzione/requisiti software).])

== #h(2.1%) Responsabile
#pad(left: 10pt, [Persona che ha il compito di coordinare le attività di gruppo, l'elaborazione di piani e scadenze, e approva il rilascio di prodotti parziali o finali (software/documentazione).])

== #h(2.1%) Retrospettiva
#pad(left: 10pt, [Attività che si svolge al termine di uno sprint, in cui il team riflette sul lavoro svolto, individua i punti di forza e debolezza e propone azioni di miglioramento per lo sprint successivo.])

== #h(2.1%) RTB 
#pad(left: 10pt, [Acronimo di "Requirements and Technology Baseline". Baseline il cui oggetto principale sono i requisiti e l'adeguatezza delle tecnologie, valutata tramite il PoC. I requisiti sono concordati con il proponente e raccolti nel documento "Analisi dei Requisiti". Una tecnologia è considerata adeguata se permette di raggiungere l'obiettivo per cui è stata scelta e se è integrabile con le altre.])

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
== #h(2.1%) UML
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
#pad(left: 10pt, [Insieme di regole e pratiche che stabiliscono come devono avvenire i processi del progetto.])

= X
= Y
= Z