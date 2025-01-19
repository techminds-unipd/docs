#import "/template/template.typ": documento,team

#show outline.entry.where(level: 2): it => {
    h(10pt);
    it;
}

#show: documento.with(
  title: "Glossario",
  sommario: "Documento dei termini tecnici relativi al progetto.",
  changelog: (
    "0.2.0", "19/01/2025", "Aggiunti nuovi termini", team.T, "Qualcuno",
    "0.1.1", "20/12/2024", "Fix conformità indice di Gulpease", team.C, team.G,
    "0.1.0", "11/11/2024", "Prima versione", team.L, team.C
  )
)
#set heading(numbering: none)


= Introduzione
Questo documento definisce tutti i termini specifici usati nell'ambito del progetto di Ingegneria del Software, con lo scopo di fornire una terminologia comune a tutti i membri del gruppo.


#show heading.where(level: 1): text.with(size: 1.5em, weight: "bold", fill: rgb("#f16610"))
#show heading.where(level: 2): it => {pad(left: 10pt, it.body); h(10pt)}
#set par(hanging-indent: 10pt)
#set list(indent: 10pt)

= A

== Accoppiamento // {Accoppiamenti}
Nell'ambito della programmazione ad oggetti, è una misura del grado di dipendenza fra due classi. Più le classi sono accoppiate più è probabile che la modifica di una implica la modifica delle classi che ne dipendono.

== Agente // {Agenti}
Nel campo dell'intelligenza artificiale, l'agente (detto anche Agente Intelligente) è un'entità in grado di percepire l'ambiente esterno ed effettuare delle azioni in modo autonomo, migliorando le performance nel tempo attraverso la conoscenza passata.

== Analisi dei requisiti // {AdR}
Attività preliminare allo sviluppo (o alla modifica) di un sistema software, il cui scopo è quello di definire le funzionalità che il nuovo prodotto (o il prodotto modificato) deve offrire. Tali funzionalità sono rappresentate dai requisiti che devono essere soddisfatti dal software sviluppato.

== API // {Application Programming Interface}
Acronimo di _Application Programming Interface_, è un insieme di procedure atte a consentire la comunicazione tra diversi software o tra diversi componenti di software.

== Attore // {Attori}
Nel contesto dell'analisi dei requisiti rappresenta un'entità che interagisce con il sistema svolgendo delle attività. Può essere un utente oppure un sistema esterno.

== AWS // {Amazon Web Services}
Acronimo di _Amazon Web Services_, è una sussidiaria di Amazon che fornisce servizi di cloud computing.

= B

== Backlog
Insieme di compiti/attività da completare per un certo obiettivo. Nel framework Scrum esistono due tipologie di backlog:
- il _product backlog_ ovvero l'insieme di tutti i compiti/attività del progetto;
- lo _spring backlog_, che indica i compiti/attività da completare durante uno sprint.

== Baseline
Versione di un prodotto corrispondente ad obiettivi di raggiungimento, spesso fissati da una milestone. Una baseline viene approvata ed è modificabile solamente tramite un processo definito, formale e tracciato.

== Bedrock
Bedrock è un servizio di AWS che rende disponibili modelli di intelligenza artificiale tramite un sistema unificato.

== Build Automation
Processo che automatizza la build dei sorgenti.

= C

== Capitolato // {Capitolati}
Documento del proponente in cui viene esposto un problema che si vuole risolvere attraverso un applicativo software, specificando norme, tecnologie e vincoli.

== Caso d'uso // {Casi d'uso}
Descrizione dettagliata di come un attore interagisce con il sistema nel compiere un'attivita specifica. È utilizzato nel contesto dello sviluppo software per individuare i requisiti funzionali del prodotto.

== Changelog
Si veda #link(<registro_delle_modifiche>)[Registro delle modifiche].

== Commit
Operazione che registra le modifiche apportate al codice in un repository. Ogni commit rappresenta uno snapshot del progetto in un determinato momento.

= D

== Diagramma di Gantt // {Diagrammi di Gantt}
Strumento a supporto della gestione dei progetti, costituito da barre orizzontali di lunghezza variabile che rappresentano le sequenze, la durata e l'arco temporale di ogni singola attività del progetto.

== Diagramma UML // {Diagrammi UML}
Metodo per visualizzare sistemi e software utilizzando il linguaggio di modellazione unificato (UML).

== Discord
Piattaforma VoIP, messaggistica instantanea e distribuzione digitale.

= E

== Economicità
Combinazione di efficienza ed efficacia.

== Efficacia
Misura della capacità di raggiungere l'obiettivo prefissato.

== Efficienza
Misura dell'abilità di raggiungere l’obiettivo impiegando le risorse minime indispensabili.

== ESLint
È uno strumento di analisi statica del codice JavaScript. Si occupa sia della qualità del codice che dello stile di codifica. È possibile sovrascrivere le regole di default tramite un file di configurazione contenuto all'interno del repository.

= F
= G

== Git
Software per il controllo di versione distribuito.

== GitHub
Servizio di hosting per progetti software, il nome deriva dal fatto che è una implementazione dello strumento di controllo di versione distribuito git.

== GitHub Actions
Piattaforma di continuous integration e continuous delivery che permette di automatizzare la build, i test e il rilascio di un prodotto.

== GitHub Flow
Pratica usata nella gestione dei branch in un repository, il GitHub Flow utilizza un branch principale (solitamente chiamato main o master) da cui vengono creati dei branch di feature.
                 All'interno dei branch di feature vengono effettuate le modifiche che poi verranno integrate nel branch main attraverso una Pull Request.

== GitHub Pages
Servizio di GitHub che fornisce hosting per siti web statici.

== Glossario // {Glossari}
Elenco organizzato di termini tecnici, acronimi e definizioni utilizzati nel contesto del progetto.

= H
= I

== Indice Gulpease
Indice di leggibilità di un testo tarato sulla lingua italiana. Rispetto agli altri ha il vantaggio di utilizzare la lunghezza delle parole in lettere anzichè in sillabe, semplificandone il calcolo automatico.
                 #linebreak()La formula per il calcolo è $89 + (300("n_frasi") -10("n_lettere"))/"n_parole"$.

== Integrazione continua // {Continous Integration}
Spesso indicata con CI (dall'inglese _Continuous Integration_), è una pratica di sviluppo in cui è presente un meccanismo di Build Automation e dove il team integra frequentemente le modifiche.

== Intelligenza Artificiale // {AI}
Disciplina che studia come realizzare sistemi informatici in grado di simulare il ragionamento umano.

== Issue
Elemento che richiede attenzione o risoluzione all'interno di un progetto.

== ITS // {Issue Tracking System}
Acronimo di _Issues Tracking System_, è uno strumento che gestisce e mantiene una lista di Issues, spesso usato per progetti in team.

= J
= K
= L

== LLM // {Large Language Model}
Acronimo di _Large Language Model_. Modello di deep learning progettato per eseguire task di Natural Language Processing, come la generazione di un testo. Un LLM apprende molti parametri in modo supervisionato, individuando relazioni statistiche tra una grande quantità di testi.

= M

== Major version
Nel contesto di gestione delle versioni, indica un cambiamento radicale o aggiornamento significativo (a volte non retrocompatibile) di un software o documento.

== Milestone
Data di calendario che determina un punto di avanzamento atteso del progetto. Le milestones sono uno strumento di pianficazione.

== Minor version
Nel contesto di gestione delle versioni, indica un aggiornamento che aggiunge contenuto/funzionalità senza cambiare il significato o il comportamento di un software o documento.

== MVP // {Minimum Viable Product}
Acronimo di _Minimum Viable Product_. Prodotto software ridotto nelle funzionalità che soddisfa i requisiti essenziali. É utilizzato a scopo esplorativo per ricevere feedback e valutare la bontà della visione di prodotto, in modo da prendere decisioni consapevoli sul completamento del software.

= N

== Norme di progetto // {NdP}
Documento gestionale interno redatto in forma esecutiva, ossia composto da regole e procedure, che descrive il way of working. É volto a standardizzare i processi in modo da assicurare la coerenza del lavoro svolto dai diversi membri e la qualità dei prodotti.

= O
= P

== Patch
Piccolo aggiornamento, spesso utilizzato per indicare la risoluzione di un bug o piccole modifiche.

== PB // {Product Baseline}
Acronimo di _Product Baseline_. Baseline il cui oggetto centrale è il MVP (Minimum Viable Product).

== Piano di progetto // {PdQ}

== Piano di qualifica // {PdQ}
Documento che specifica gli obiettivi, indicati in modo quantitativo, di qualità dei prodotti e dei processi.

== PoC // {Proof of Concept}
Acronimo di _Proof of Concept_. É una baseline tecnologica che usa le tecnologie proposte per lo sviluppo dei requisiti. Il suo scopo è acquisire conoscenza, valutare l'adeguatezza e la compatibilità di tali tecnologie. Deve richiedere un basso costo di sviluppo.

== Processo // {Processi}
Insieme di attività correlate e coese che, consumando risorse, trasformano ingressi (bisogni) in uscite (prodotti). Ogni processo deve svolgersi secondo le indicazioni fornite dalle Norme di Progetto.

== Processo di ciclo di vita // {Processi di ciclo di vita}
Processi che definiscono quali attività svolgere per attuare, in modo efficiente ed efficace, corrette transizioni di stato nel ciclo di vita di un prodotto software.

== Progetto // {Progetti}
Insieme di attività che devono raggiungere determinati obiettivi a partire da determinate specifiche, con una data di inizio e una data di fine fissate, con risorse limitate che si consumano nello svolgersi.

== Pull request // {PR}
Nel contesto di un repository di versionamento distribuito, è un modo per notificare ai membri del team che è stata completata una funzionalità in un branch di feature e che si può effettuare il merge nel branch main, con previa verifica.

== Python
Linguaggio ad alto livello orientato agli oggetti, apprezzato per la sua semplicità e flessibilità.

= Q
== Qualità
Insieme delle caratteristiche di un'entità, che ne determinano la capacità di soddisfare esigenze sia espresse che implicite.#linebreak()
Può avere diversi punti di vista:
- Intrinseca: conformità ai requisiti, idoneità all’uso;
- Relativa: soddisfazione del cliente;
- Quantitativa: misurazione oggettiva, per confronto.

= R
== Refactoring
Attività di ristrutturazione del codice sorgente, senza modificarne il comportamento esterno, al fine di renderlo più leggibile, manutenibile e riusabile.

== Registro delle modifiche <registro_delle_modifiche>
Struttura che tiene traccia delle modifiche effettuate ad un documento, con indicazione della versione, della data, della descrizione della modifica, dell'autore e del verificatore.

== Repository
Luogo in cui vengono salvati i prodotti creati. Costituisce una fonte di condivisione del lavoro svolto da ciascun membro. É caratterizzato da persistenza e consistenza, garantite dalle procedure indicate nelle Norme di Progetto.

== Requisito // {Requisiti}
La capacità necessaria a un utente per raggiungere un obiettivo (lato bisogno/requisiti utente) o la capacità necessaria a un sistema per rispondere a una aspettativa (lato soluzione/requisiti software).

== Responsabile
Persona che ha il compito di coordinare le attività di gruppo, l'elaborazione di piani e scadenze, e approva il rilascio di prodotti parziali o finali (software/documentazione).

== Retrospettiva // {Retrospective}
Attività che si svolge al termine di uno sprint, in cui il team riflette sul lavoro svolto, individua i punti di forza e debolezza e propone azioni di miglioramento per lo sprint successivo.

== RTB // {Requirements and Technology Baseline}
Acronimo di _Requirements and Technology Baseline_. Baseline il cui oggetto principale sono i requisiti e l'adeguatezza delle tecnologie, valutata tramite il PoC. I requisiti sono concordati con il proponente e raccolti nel documento Analisi dei Requisiti. Una tecnologia è considerata adeguata se permette di raggiungere l'obiettivo per cui è stata scelta e se è integrabile con le altre.

= S
== Scrum
Framework di sviluppo agile che suddivide il lavoro in cicli iterativi chiamati sprint e permette l'adattamento rapido ai cambiamenti attraverso feedback regolari.

== Sprint
Periodo di tempo prefissato, di durata massima di un mese, in cui il team sviluppa un piccolo incremento di prodotto finale.

== Stakeholder
Persona o gruppo di persone che hanno interesse nel progetto, e lo influenzano o vengono influenzati da esso, come il committente o il fornitore.

== Swagger
Insieme di strumenti che permette di documentare le API contestualmente alla loro definizione nel codice e testarle usando una interfaccia web.

= T
== Test di unità // {Unit test}
Test che esamina una singola unità software. Si divide in funzionale e strutturale:
- Funzionale (black-box): 
  - esaminano solo il legame tra input e output;
  - utilizzano dati in ingresso che corrispondono a specifici esiti: valori del dominio, valori di limite e valori illegali.
- Strutturale (white-box):
  - verificano la logica interna dell'unità software;
  - un singolo caso di prova attiva un singolo cammino di esecuzione;
  - l'obiettivo è quello di avere un insieme di casi di prova che riescono a far eseguire tutti i comandi e attraversare tutti i branch dell'unità in esame.

== Tracciamento // {Tracciamenti}
Attività che permette di mantenere la coerenza tra i requisiti e i componenti del sistema, in modo da poter tracciare l'evoluzione del sistema e verificare che i requisiti siano soddisfatti.

== Typst
Typst è un sistema di impaginazione basato su markup progettato per essere un' alternativa a LaTeX pur essendo più facile da apprendere ed utilizzare.

= U
== UML // {Unified Modeling Language}
Acronimo di _Unified Modeling Language_, è un linguaggio di modellazione utilizzato per descrivere, visualizzare e documentare i componenti di un sistema software.

== User Story
Breve descrizione di una funzionalità del software, scritta dal punto di vista dell'utente, che descrive chi è l'utente, cosa vuole e perché.

= V
== Validazione // {Validazioni}
Si occupa di accertare che il prodotto finale soddisfi i requisiti specificati e corrisponda alle attese (Did I build the right system?) quindi pone l'attenzione sul prodotto finale.

== Verbali // {Verbali}
Documento che riporta le discussioni e le decisioni prese durante una riunione, con indicazione della data, dei partecipanti, degli argomenti trattati e delle decisioni prese.

== Verifica // {Verifiche}
Si occupa di accertare che lo svolgimento delle attività di sviluppo non introduca errori (Did I build the system right?) quindi pone l'attenzione sul way of working.

= W
== Way of working // {WoW}
Insieme di regole e pratiche che stabiliscono come devono avvenire i processi del progetto.

== Workflow
Serie di attività orchestrate e ripetibili, eseguite in sequenza o in parallelo, con lo scopo di raggiungere un obiettivo specifico.

= X
= Y
= Z