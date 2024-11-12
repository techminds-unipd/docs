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
= M
= N
= O
= P
= Q
= R
= S
= T
= U
= V
= W
= X
= Y
= Z