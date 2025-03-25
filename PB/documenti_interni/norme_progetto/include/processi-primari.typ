#import "/template/template.typ": glossario
#import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge
#import fletcher.shapes: ellipse, rect
#import "@preview/cetz:0.3.0"
#import cetz.draw
#import "/RTB/documenti_esterni/analisi_requisiti/include/use_cases.typ": empty-dash, uc_comment

= Processi primari
Un progetto è definito tale se e solo se in esso sono attivi processi primari. 

Lo standard ISO/IEC 12207:1995 definisce i processi primari come i processi relativi alle attività fondamentali per la creazione e la gestione del software. 

Lo standard, all'interno dei processi primari, definisce 5 categorie:
1. Acquisizione;
2. Fornitura;
3. Sviluppo;
4. Gestione operativa;
5. Manutenzione.
I processi di acquisizione, manutenzione e gestione operativa non saranno descritti a causa della natura di questo progetto.

== Fornitura
Il processo primario di fornitura è focalizzato sulle attività che coinvolgono noi e il proponente durante la fornitura del prodotto software e sulle risorse necessarie per completare il progetto con successo.

Questa sezione elenca tutte le regole che dobbiamo seguire e rispettare per mantenere una relazione efficace e trasparente con il proponente e i committenti durante l'intero progetto.

Per ottenere una visione costante e aggiornata dello stato del progetto e del bilancio andremo quindi a monitorare, documentare e valutare il lavoro svolto, stimando le attività ancora da completare e confrontando il loro stato attuale con i #glossario[requisiti] definiti dal proponente. 

=== Attività
Come descrive lo standard ISO/IEC 12207:1995, il processo primario di fornitura è composto dalle seguenti attività:
1. *Avvio*: eseguiamo una revisione dei requisiti studiando a fondo i capitolati, decidendo poi di fare una proposta per un determinato capitolato;
2. *Preparazione della risposta*: definiamo e prepariamo la proposta, una sorta di "risposta alla richiesta avanzata";
3. *Contrattazione*: accordo sui requisiti e consegna del progetto;
4. *Pianificazione*: revisioniamo i requisiti di acquisizione per definire la gestione del progetto e per assicurare la #glossario[qualità] del prodotto offerto. Tale pianificazione contiene anche le esigenze di risorse e il coinvolgimento del proponente;
5. *Esecuzione e controllo*: implementiamo il piano di gestione del progetto, controllando i progressi e la qualità del prodotto software e della relativa documentazione durante tutte le fasi del progetto;
6. *Revisione e valutazione*: effettuiamo #glossario[verifiche] periodiche per dimostrare che i prodotti software e i processi soddisfino pienamente i requisiti individuati; 
7. *Consegna e completamento*: consegniamo il prodotto software al proponente secondo quanto accordato in precedenza.

=== Rapporti con il proponente
I rapporti con il proponente sono un elemento che riteniamo fondamentale per il progetto in quanto:
- Guidano il corretto svolgimento dei processi;
- Facilitano lo scambio di feedback e dubbi, da entrambi i lati (noi nei confronti del proponente e viceversa);
- Garantiscono il rispetto di quanto pattuito.
Sono stati quindi concordati dei canali di comunicazione che permettono il raggiungimento degli obiettivi sopra descritti, per ulteriori approfondimenti vedi @revisioni-congiunte-implementazione e @proponente.

=== Documentazione fornita
Di seguito elenchiamo la documentazione che forniamo al proponente e al committente.

==== Lettera di candidatura
Documento ufficiale di presentazione per la candidatura al capitolato C3, proposto dall'azienda VarGroup. 

*Struttura*:
- Motivazione della candidatura: ragioni che stanno alla base della scelta del capitolato C3;
- Piano di lavoro: dichiarazione dell'intensità di lavoro, data presunta di terminazione del progetto e costi presunti;
- Conclusione.

*Uso*: esterno.

*Redattore*: responsabile.

*Puntatore*: #link("https://techminds-unipd.github.io/docs/candidatura/documenti_esterni/presentazione_candidatura/lettera-di-presentazione.pdf")[lettera di candidatura] #footnote(link("https://techminds-unipd.github.io/docs/candidatura/documenti_esterni/presentazione_candidatura/lettera-di-presentazione.pdf")).

==== Studio dei capitolati
Studio e analisi di ogni capitolato proposto, evidenziando le tecnologie da utilizzare, le funzionalità richieste, gli aspetti positivi, gli aspetti negativi e le modalità di supporto offerte da ogni azienda.

*Struttura*:
- Introduzione: scopo del documento e scelta del capitolato;
- Valutazioni: analisi di ogni capitolato.

*Uso*: esterno.

*Redattore*: responsabile.

*Puntatore*: #link("https://techminds-unipd.github.io/docs/candidatura/documenti_esterni/presentazione_candidatura/studio-capitolati.pdf")[studio dei capitolati] #footnote(link("https://techminds-unipd.github.io/docs/candidatura/documenti_esterni/presentazione_candidatura/studio-capitolati.pdf")) [versione 1.0.0].

==== Dichiarazione degli impegni
Dichiarazione dell'impegno orario di ogni membro del gruppo e conseguente suddivisione oraria per i ruoli. 

*Struttura*:
- Valutazione orari e costi;
- Scadenza prevista.

*Uso*: esterno.

*Redattore*: responsabile.

*Puntatore*: #link("https://techminds-unipd.github.io/docs/candidatura/documenti_esterni/presentazione_candidatura/studio-capitolati.pdf")[dichiarazione degli impegni] #footnote(link("https://techminds-unipd.github.io/docs/candidatura/documenti_esterni/presentazione_candidatura/studio-capitolati.pdf")) [versione 1.0.0].

==== Lettere di presentazione
Documento formale di presentazione per ogni revisione di progetto:
- Lettera di presentazione RTB;
- Lettera di presentazione PB.

*Uso*: esterno.

*Redattore*: responsabile.

*Puntatore*: #link("https://techminds-unipd.github.io/docs/RTB/documenti_esterni/lettera-di-presentazione-RTB.pdf")[lettera di presentazione RTB] #footnote(link("https://techminds-unipd.github.io/docs/RTB/documenti_esterni/lettera-di-presentazione-RTB.pdf")), #link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/lettera-di-presentazione-PB.pdf")[lettera di presentazione PB] #footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/lettera-di-presentazione-PB.pdf")). //TODO da controllare questo link quando creeremo la lettera di presentazione

==== Norme di progetto
Il presente documento, creato per determinare il way of working che ci guida nel corso del progetto.

*Struttura*: il documento è suddiviso in base ai processi individuati dallo standard ISO/IEC 12207:1995.

*Uso*: interno.

*Redattore*: amministratore.

==== Glossario
Documento utile per definire termini rilevanti nell'ambito del progetto, al fine di uniformare la conoscenza dei membri del gruppo ed evitare incomprensioni e ambiguità.

*Struttura*: organizzato in ordine alfabetico.

*Uso*: interno.

*Redattore*: chiunque individui un termine che potrebbe risultare ambiguo o sconosciuto al gruppo, indipendentemente dal ruolo.

*Puntatore*: #link("https://techminds-unipd.github.io/docs/PB/documenti_interni/glossario/glossario.pdf")[glossario] #footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_interni/glossario/glossario.pdf")) [versione 2.0.0].

==== Analisi dei requisiti
Documento che raccoglie i requisiti obbligatori, desiderabili e opzionali del prodotto software, frutto del lavoro svolto con l'attività di analisi dei requisiti.

*Struttura*:
- Introduzione: scopo del documento;
- Descrizione: obiettivi e scopo del prodotto;
- Casi d'uso: identificazione degli #glossario[attori], del sistema e definizione dei casi d'uso individuati;
- Requisiti: requisiti funzionali, di qualità, di vincolo e relativo tracciamento.

*Uso*: esterno.

*Redattore*: analista.

*Puntatore*: #link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf")[analisi dei requisiti] #footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf")) [versione 2.0.0].

==== Piano di progetto
Documento che ha lo scopo di raccogliere la pianificazione delle attività progettuali, compresi la gestione dei ruoli e il bilancio di #glossario[sprint] in sprint. Presenta inoltre i rischi previsti, quelli occorsi e, se necessario, l'aggiornamento del #glossario[preventivo a finire].

*Struttura*:
- Introduzione: scopo del documento;
- #glossario[Analisi dei rischi]: analisi dei possibili rischi che possono verificarsi durante lo svolgimento delle attività progettuali;
- Pianificazione: indica il metodo di lavoro adottato per la pianificazione;
- Periodi: per ogni sprint individua:
    - durata;
    - pianificazione (ruoli e #glossario[issue] pianificate);
    - issue aggiuntive;
    - #glossario[diagramma di Gantt]\;
    - rischi previsti;
    - rischi occorsi;
    - conclusioni;
    - retropsettiva;
    - preventivo;
    - consuntivo.

*Uso*: esterno.

*Redattore*: responsabile.

*Puntatore*: #link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/piano_progetto/piano-di-progetto.pdf")[piano di progetto] #footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/piano_progetto/piano-di-progetto.pdf")) [versione 2.0.0].

==== Piano di qualifica
Il #glossario[piano di qualifica] ha lo scopo di fissare gli obiettivi per le metriche individuate nel presente documento, individuando un valore accettabile e un valore ottimale. Presenta inoltre i test effettuati sul prodotto e gli esiti di tale test, indicando:
- NI: Non Implementato;
- S: Superato;
- NS: Non Superato.

*Struttura*:
- Introduzione: scopo del documento;
- Metriche per la qualità: obiettivi per le metriche relative alla qualità di processo e di prodotto;
- Specifica dei test: elenca i test sul prodotto e il loro stato;
- Miglioramenti: sezione dedicata ai miglioramenti, adottati in seguito al verificarsi di uno dei rischi previsti nel #glossario[piano di progetto];
- Cruscotto: rilevazioni delle metriche individuate, con analisi dell'andamento di tali misurazioni.

*Uso*: esterno.

*Redattore*: amministratore.

*Puntatore*: #link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/piano_qualifica/piano-di-qualifica.pdf")[piano di qualifica] #footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/piano_qualifica/piano-di-qualifica.pdf")) [versione 2.0.0].

==== Specifica tecnica
Elenca le tecnologie utilizzate per lo sviluppo del prodotto e documenta le scelte progettuali effettuate durante l'attività di progettazione.

*Struttura*:
- Introduzione: scopo del documento;
- Tecnologie: linguaggi, librerie, framework e altri strumenti utilizzati per lo sviluppo del prodotto; 
- Architettura di sistema: architettura adottata per frontend, backend, agente e database;
- Limiti e criticità della soluzione individuata: analisi delle critictà e dei limiti riscontrati durante lo sviluppo del prodotto;
- Stato requisiti funzionali: stato di ogni requisito funzionale individuato durante l'attività di analisi dei requisiti, tracciato con una tra le seguenti indicazioni:
    - Soddisfatto;
    - Non soddisfatto.

*Uso*: esterno.

*Redattore*: progettista.

*Puntatore*: #link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/specifica_tecnica/specifica-tecnica.pdf")[specifica tecnica] #footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/specifica_tecnica/specifica-tecnica.pdf")) [versione 1.0.0].

==== Manuale utente
Documento che funge da guida all'utilizzo del prodotto per tutte le tipologie di utenti, indipendentemente dalla loro qualifica.

*Struttura*:
- Introduzione: scopo del documento;
- Requisiti: requisiti hardware e di sistema;
- Istruzioni all'uso: istruzioni per l'utilizzo del prodotto. 

*Uso*: esterno.

*Redattore*: programmatore.

*Puntatore*: #link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/manuale_utente/manuale-utente.pdf")[manuale utente] #footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/manuale_utente/manuale-utente.pdf")) [versione 1.0.0]. // da controllare il link quando ci sarà il documento

==== Verbale interno
#glossario[Verbale] delle riunioni svolte internamente al gruppo.

*Struttura*:
- Informazioni introduttive (durata, luogo e partecipanti);
- Contenuto della riunione (ordine del giorno, riassunto e decisione prese).

*Uso*: interno.

*Redattore*: responsabile.

==== Verbale esterno
Verbale delle riunioni svolte con il proponente.

*Struttura*:
- Informazioni introduttive (durata, luogo e partecipanti);
- Contenuto della riunione (ordine del giorno, riassunto e decisione prese);
- Firma del proponente.

*Uso*: esterno.

*Redattore*: responsabile.

=== Strumenti e tecnologie
A supporto del processo di fornitura abbiamo deciso di utilizzare i seguenti strumenti e tecnologie:
- Canva per la realizzazione dei diari di bordo;
- Microsoft Teams per gli incontri esterni;
- #glossario[Slack] per le comunicazioni testuali con il proponente;
- #glossario[Typst] per la stesura della documentazione, compresi i vari diagrammi (#glossario[casi d'uso], #glossario[diagrammi di gantt] ecc.) e le tabelle.

== Sviluppo
Questa sezione stabilisce le linee guida e le regole che dobbiamo seguire per il processo di sviluppo del prodotto software. L'obiettivo è quello di fornire una struttura ben definita per la realizzazione del prodotto, in modo tale da garantire un'implementazione corretta e coerente con i requisiti del proponente.

=== Attività
Come descrive lo standard ISO/IEC 12207:1995, il processo primario di sviluppo include le seguenti attività:
1. Analisi dei requisiti;
2. Progettazione;
3. Codifica e testing;
4. Integrazione;
5. Installazione.

=== Analisi dei requisiti
L'attività di analisi dei requisiti è fondamentale per:
- La corretta comprensione delle esigenze del proponente;
- Identificare, documentare e validare i requisiti funzionali e non funzionali;
- Evitare il rischio che il prodotto software non converga mai verso le aspettative del proponente;
- Facilitare la comprensione dei requisiti a tutti gli #glossario[stakeholder]#h(1pt)\;
- Garantire che la progettazione riceva dei requisiti chiari e semplici da comprendere.

Nello svolgimento di quest'attività il nostro compito è quindi quello di raccogliere, analizzare e documentare i requisiti del prodotto (requisiti software).

In generale, l'analisi studia a fondo i bisogni, con particolare attenzione al "cosa" deve succedere nel prodotto che verrà sviluppato, ovvero alla sua struttura funzionale. I requisiti riflettono la prospettiva dell'utente nel passaggio dalla situazione senza, a quella con il prodotto. Uno dei modi più efficaci per individuare i requisiti è attraverso la scrittura dei casi d'uso.

==== Casi d'uso
Un caso d'uso è un insieme di scenari (sequenze di azioni) che hanno in comune uno scopo finale (obiettivo) per un utente (#glossario[attore]). 

Ogni caso d'uso è composto da:
- Identificativo e nomenclatura: 
#align(center)[UCa.b Nome]dove "a" è il numero del caso d'uso, "b" è il numero del sotto caso d'uso, se presente, e "Nome" è il nome del caso d'uso (esplicativo del suo scopo);
- Diagramma: rappresentazione grafica del caso d'uso;
- Descrizione: breve descrizione del caso d'uso;
- Attori principali: elenco degli attori principali (entità esterne che interagiscono attivamente con il sistema) coinvolti;
- Attori secondari: elenco degli attori secondari (entità esterne che interagiscono passivamente con il sistema) coinvolti, se presenti;
- Scenario principale: sequenza di azioni che descrive il comportamento dell'attore e del sistema;
- Pre-condizioni: condizioni che devono essere sempre verificate prima dello scenario descritto;
- Post-condizioni: condizioni che devono essere sempre verificate una volta concluso lo scenario descritto;
- Estensioni: elenco delle estensioni, se presenti;
- Generalizzazioni: elenco delle generalizzazioni, se presenti.

*Diagrammi dei casi d'uso*

I diagrammi dei casi d'uso sono strumenti utili a visualizzare in modo immediato e intuitivo la composizione del caso d'uso e le sue relazioni interne, in modo tale da avere una prima descrizione visiva di quello che successivamente verrà spiegato in versione testuale.

I diagrammi corrispondono a dei grafi orientati, dove i nodi rappresentano gli attori e i casi d'uso, mentre gli archi rappresentano le relazioni tra essi. Nel diagramma viene anche delineato il confine del sistema in quel determinato scenario, in modo tale da avere una visione chiara e precisa delle interazioni tra attori esterni e il sistema stesso. 

I componenti principali di un diagramma dei casi d'uso sono:
- Attori: entità esterne che interagiscono con il sistema;
#figure(
   image("../../../documenti_esterni/analisi_requisiti/assets/actor.jpg", width: 5%), caption: "Attore", numbering: none
) <actor>

- Casi d'uso: rappresentano le funzionalità offerte dal sistema, con cui l'attore può interagire;
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    node-inset: 10pt,
    node-shape: ellipse,
    node("UC.a.b Nome")
    ), caption: "Caso d'uso", numbering: none
) <use-case>

- Sistema: rappresenta il "dominio" di un particolare caso d'uso, serve a stabilire il confine tra ciò che è esterno e quindi non gestito dal sistema e ciò che invece è interno e quindi gestito dal sistema. Gli attori per definizione saranno rappresentati esternamente al sistema, mentre i casi d'uso al suo interno;
#figure(
    diagram(
    debug: false,
    node-stroke: 1pt,
    edge-stroke: 1pt,
    node-inset: 10pt,
    node-shape: ellipse,
    
    node((0,0.5), [#image("../../../documenti_esterni/analisi_requisiti/assets/actor.jpg", height: 45pt) Attore], stroke: 0pt),

    node((2,0.5), align(center)[UC.a.b Nome], name: <uc>),

    node(
        enclose: (<uc>,),
        align(top + right)[Sistema],
        width: 150pt,
        height: 100pt,
        snap: -1,
    )
    )
) <system>

- Relazioni: rappresentano le interazioni tra attori e casi d'uso, e tra casi d'uso stessi. Sono di quattro tipi:
    - associazione: collegamento tra attore e caso d'uso, indica che l'attore è coinvolto nel caso d'uso;
    #figure(
        diagram(
        debug: false,
        node-stroke: 1pt,
        edge-stroke: 1pt,
        node-inset: 10pt,
        node-shape: ellipse,
    
        node((0,0.5), [#image("../../../documenti_esterni/analisi_requisiti/assets/actor.jpg", height: 45pt) Attore], stroke: 0pt, name: <a>),
        edge(<a>, <uc>, label: "esegue", label-pos: 0.4),

        node((2,0.5), align(center)[UC.a.b Nome], name: <uc>),

        node(
            enclose: (<uc>,),
            align(top + right)[Sistema],
            width: 150pt,
            height: 100pt,
            snap: -1,
        )
        )
    ) <association>

    - inclusione: relazione tra due casi d'uso, indica che un caso d'uso ne include un altro, può essere una funzionalità comune a più casi d'uso. Ogni istanza del caso d'uso "che include" esegue sempre il caso d'uso "incluso", con lo stesso attore principale. Nel sotto caso d'uso si utilizza l'identificativo del caso d'uso "che include" seguito da un punto e un numero progressivo;
    #figure(
        diagram(
        debug: false,
        node-stroke: 1pt,
        edge-stroke: 1pt,
        node-inset: 10pt,
        node-shape: ellipse,
    
        node((0,0.5), [#image("../../../documenti_esterni/analisi_requisiti/assets/actor.jpg", height: 45pt) Attore], stroke: 0pt, name: <a>),
        edge(<a>, <uc>),

        node((1.5,0.5), align(center)[UC.a Nome], name: <uc>),
        edge(<uc>, <suc>, "--straight", [\<\<include\>\>]),

        node((3,0.5), align(center)[UC.a.b Nome], name: <suc>),

        node(
            enclose: (<uc>,<suc>),
            align(top + right)[Sistema],
            width: 150pt,
            height: 100pt,
            snap: -1,
        )
        )
    ) <inclusion>

    - estensione: relazione tra due casi d'uso, indica che un caso d'uso può estendere uno o più casi d'uso, aumentandone le funzionalità. Ogni istanza del caso d'uso "base" esegue il caso d'uso che estende in modo condizionato (a differenza dell'inclusione), e questo dipende dalla condizione di estensione, la quale determina quando l'estensione deve essere utilizzata. Con le estensioni si vogliono descrivere variazioni dalla funzionalità del caso d'uso "base", ad esempio in caso di errore/eccezione;
    #figure(
        diagram(
        debug: false,
        node-stroke: 1pt,
        edge-stroke: 1pt,
        node-inset: 10pt,
        node-shape: ellipse,
    
        node((0,0.5), [#image("../../../documenti_esterni/analisi_requisiti/assets/actor.jpg", height: 45pt) Attore], stroke: 0pt, name: <a>),
        edge(<a>, <uc>),

        node((1.5,0.5), align(center)[UC.a Nome], name: <uc>),
        edge(<euc>, <uc>, "--straight", [\<\<extend\>\>]),

        node((3,0.5), align(center)[UC.b Nome], name: <euc>),

        node((2.3,1), align(center)[Condizione di estensione], name: <cond>, shape: uc_comment),

        node((2.3, 0.5), align(center)[], name: <coll>, width: 1pt, height: 1pt),
        edge(<coll>, <cond>, "--"),

        node(
            enclose: (<uc>,<euc>,<cond>,<coll>),
            align(top + right)[Sistema],
            width: 150pt,
            height: 130pt,
            snap: -1,
        )
        )
    ) <extension>

    - generalizzazione: relazione tra due attori o due casi d'uso, indica che un attore o un caso d'uso è una generalizzazione di un altro attore o caso d'uso, quindi condivide le funzionalità del primo e ne può aggiungere di nuove o modificare quelle già esistenti (Y generalizza X);
    #figure(
        diagram(
        debug: false,
        node-stroke: 1pt,
        edge-stroke: 1pt,
        node-inset: 10pt,
        node-shape: ellipse,
    
        node((0,0.5), [#image("../../../documenti_esterni/analisi_requisiti/assets/actor.jpg", height: 45pt) Attore X], stroke: 0pt, name: <a>),
        edge(<b>, <a>, marks: (none, empty-dash)),

        node((2,0.5), [#image("../../../documenti_esterni/analisi_requisiti/assets/actor.jpg", height: 45pt) Attore Y], stroke: 0pt, name: <b>),

        node((3,0.5), align(center)[UC X], name: <ucA>),
        edge(<ucB>, <ucA>, marks: (none, empty-dash)),

        node((5,0.5), align(center)[UC Y], name: <ucB>),
        )
    ) <generalization>

==== Requisiti
Per costruire un sistema efficace, efficiente e in linea con le aspettative del proponente è necessario individuare:
- Requisiti funzionali: funzionalità e comportamenti che il software deve supportare per soddisfare le esigenze del proponente;
- Requisiti non funzionali: definiscono come il sistema deve comportarsi, cioè le qualità, i vincoli e le caratteristiche tecniche che influenzano l'esperienza d'uso e le performance del software.

Ogni requisito è costituito da:
1. Codice: un codice identificativo univoco, nel formato 
#align(center)[[Tipologia][Importanza]Requirement N]
#h(3%)dove "Tipologia" corrisponde a:

#list(["F", functional, requisito funzionale, descrive una funzionalità del sistema;],["Q", quality, requisito di qualità, descrive una caratteristica del sistema;],["C", constraint, requisito di vincolo, descrive una limitazione imposta al sistema;],indent: 2.5em)

#h(3%)"Importanza" corrisponde a:

#list(["M", mandatory, requisito obbligatorio, irrinunciabile per qualcuno degli #glossario[stakeholder]#h(1pt)\;],["D", desirable, requisito desiderabile, non strettamente necessario ma a valore aggiunto riconoscibile;],["O", optional, requisito opzionale, relativamente utile e contrattabile anche quando il progetto è in uno stato avanzato;],indent: 2.5em)
#h(3%)"N" è un numero progressivo (es. QMR2 indica un requisito di qualità obbligatorio numero 2);

2. Descrizione: una breve descrizione del requisito;
3. Fonti: le fonti da cui è stato identificato il requisito.

==== Strumenti e tecnologie
In linea con la nostra filosofia "Docs as Code" (si veda @docsascode), tutti i diagrammi dei casi d'uso sono creati con Typst.

=== Progettazione
L'attività di progettazione è fondamentale per la corretta realizzazione del prodotto software. Quest'attività viene naturalmente svolta in seguito a quella di analisi, in quanto si basa sui requisiti individuati in precedenza, per definire come fare ciò di cui c'è bisogno. L'obiettivo è quello di fornire una soluzione realizzativa che stabilisca l'architettura per la successiva attività di codifica e che soddisfi le esigenze di tutti gli stakeholder coinvolti nel progetto.

Secondo lo standard ISO/IEC 12207:1995, i criteri per riconoscere una buona progettazione sono:
- Tracciabilità rispetto ai requisiti dell'elemento software;
- Coerenza esterna con i requisiti dell'elemento software;
- Coerenza interna tra i componenti software;
- Adeguatezza dei metodi e degli standard di progettazione utilizzati;
- Fattibilità della progettazione dettagliata (se è realizzabile con le risorse disponibili);
- Fattibilità delle operazioni e della manutenzione.

A supporto dell'attività di progettazione verranno utilizzati i diagrammi delle classi, vista la loro utilità nel documentare in modo conciso l'architettura.

==== Diagrammi delle classi
I diagrammi delle classi sono uno strumento molto utile per la progettazione del software, poiché permettono di rappresentare graficamente la struttura statica del sistema, mostrando le classi che lo compongono, i loro attributi, i metodi e le relazioni tra di esse. 

I vantaggi di utilizzare i diagrammi delle classi sono molteplici:
- Aiutano a identificare le responsabilità delle singole classi e a definire chiaramente i confini tra di esse;
- Consentono di individuare potenziali problemi di progettazione prima di iniziare la codifica, riducendo così di molto il costo di modifiche o future correzioni;
- Forniscono una visione d'insieme del sistema, facilitando la comprensione e la comunicazione interna tra i membri del gruppo e con gli stakeholder;
- Offrono un linguaggio comune (#glossario[UML]) che permette di seguire uno standard riconosciuto a livello internazionale.

*Diagrammi UML*

UML definisce vari elementi grafici per rappresentare le classi e le relazioni tra di esse. I principali elementi utilizzati nei diagrammi delle classi sono:
- Classe: rappresenta un tipo di oggetto/istanza, con attributi e metodi. \ È rappresentata da un rettangolo diviso in tre parti: la prima contiene il nome della classe, la seconda gli attributi e la terza i metodi. Gli attributi e i metodi possono avere vari tipi di visibilità: + (pubblica), - (privata), \# (protetta). I metodi sono definiti con la seguente sintassi: \ nomeMetodo(parametri: tipoParametri): tipoRitorno;
#figure(
    image("../assets/classe.svg", width: 32%), caption: "Esempio classe UML.",
)
- Classe astratta: rappresenta una classe che non può essere istanziata, ma che viene utilizzata come superclasse per la generalizzazione di altre classi. È rappresentata come una classe, ma con il nome in #text("corsivo" , style: "italic")\;
#figure(
    image("../assets/classe_astratta.svg", width: 30%), caption: "Esempio classe astratta UML.",
)
- Interfaccia: rappresenta una classe priva di attributi e implementazione dei metodi, i quali devono essere implementati dalle classi che la realizzano. È rappresentata come un cerchio con il nome dell'interfaccia al di sotto.
#figure(
    image("../assets/interfaccia.svg", width: 30%), caption: "Esempio interfaccia UML.",
)

Le relazioni tra questi elementi possono essere di vario tipo:
- Associazione: rappresenta una relazione tra due classi, indicando che un oggetto di una classe è collegato a un oggetto di un'altra classe (spesso interscambiabile con un attributo). È rappresentata da una linea continua direzionata tra le classi coinvolte;
#figure(
    image("../assets/associazione.svg", width: 35%), caption: "Esempio associazione UML.",
)
- Aggregazione: rappresenta una relazione tra due classi in cui un oggetto di una classe è \"parte di\" un oggetto di un'altra classe e può essere condiviso tra più classi. È rappresentata da una linea continua con un rombo vuoto sul lato della classe che contiene l'oggetto;
#figure(
    image("../assets/aggregazione.svg", width: 35%), caption: "Esempio aggregazione UML.",
)
- Composizione: rappresenta una relazione tra due classi simile all'aggregazione, con l'unica differenza che l'oggetto contenuto appartiene solo all'oggetto contenitore, quindi non può essere condiviso tra più classi. È rappresentata da una linea continua con un rombo pieno sul lato della classe che contiene l'oggetto;
#figure(
    image("../assets/composizione.svg", width: 35%), caption: "Esempio composizione UML.",
)
- Generalizzazione: rappresenta una relazione tra una superclasse e una sottoclasse, indicando che la sottoclasse generalizza la superclasse. L'oggetto della sottoclasse quindi è anche un oggetto della superclasse e ne eredita gli attributi/metodi. È rappresentata da una linea continua con una freccia vuota dalla sottoclasse alla superclasse;
#figure(
    image("../assets/generalizzazione.svg", width: 40%), caption: "Esempio generalizzazione UML.",
)
- Realizzazione: rappresenta una relazione tra una classe e un'interfaccia, indicando che la classe implementa i metodi dell'interfaccia. È rappresentata da una linea continua tra la classe e l'interfaccia;
#figure(
    image("../assets/realizzazione.svg", width: 35%), caption: "Esempio realizzazione UML.",
)
- Dipendenza: rappresenta una relazione tra due classi in cui un cambiamento in una classe può influenzare l'altra e quindi richiedere una modifica. È rappresentata da una linea tratteggiata direzionata dalla classe che dipende all'altra.
#figure(
    image("../assets/dipendenza.svg", width: 35%), caption: "Esempio dipendenza UML.",
)
\
Per una maggiore chiarezza e comprensione, alcune classi possono essere colorate in modo diverso per evidenziare, ad esempio, la loro appartenza a una libreria esterna e quindi non modellata dal gruppo.

==== Strumenti e tecnologie
Per la progettazione del software tramite diagrammi delle classi è stato utilizzato StarUML, mentre per la progettazione dell'interfaccia grafica è stato utilizzato Figma.

=== Codifica e testing
L'attività di codifica e testing consiste nella realizzazione effettiva del prodotto software. La codifica prevede che il codice sia scritto e testato per garantire che il prodotto soddisfi i requisiti individuati durante l'analisi e rispetti la progettazione definita al precedentemente. L'obiettivo è quello di creare il prodotto software richiesto dal committente, rispettando gli accordi stipulati con il proponente.

Secondo lo standard ISO/IEC 12207:1995, i criteri per riconoscere una buona codifica/testing sono: 
- Tracciabilità rispetto ai requisiti e alla progettazione dell'elemento software;
- Coerenza esterna con i requisiti e la progettazione dell'elemento software;
- Coerenza interna tra i requisiti delle unità;
- Copertura dei test delle unità;
- Adeguatezza dei metodi e degli standard di codifica utilizzati;
- Fattibilità dell'integrazione e del testing del software;
- Fattibilità delle operazioni e della manutenzione.

==== Norme di codifica
Per garantire la qualità del codice prodotto, è necessario stabilire delle regole e delle linee guida che i membri del gruppo devono seguire durante l'attività di codifica. Queste regole riguardano principalmente la formattazione del codice e la struttura dei metodi. 
\ Riguardo la formattazione del codice le regole da seguire sono:
- Indentazione: utilizzare 4 spazi per l'indentazione;
- Virgolette: utilizzare le virgolette doppie per le stringhe;
- Virgole: non mettere la virgola alla fine di una struttura dati;
- Parentesi graffe: aggiungere uno spazio tra le parentesi graffe e il codice interno;
- Commenti: evitare commenti superflui, se necessari non inserirli in linea;
- Convenzione nomenclatura: utilizzare la notazione camelCase per i nomi delle variabili e delle funzioni, mentre per le classi utilizzare la notazione PascalCase.

Riguardo la struttura dei metodi le regole da seguire per mantenere il codice leggibile e manutenibile sono:
- Complessità ciclomatica: ricercare una complessità ciclomatica ridotta, in modo da evitare troppi percorsi difficili da testare;
- Parametri per metodo: mantenere il minimo numero di parametri per metodo, evitando di inserire parametri superflui;
- Lunghezza del metodo: ricercare la minima lunghezza di un metodo, in modo da evitare metodi troppo lunghi e difficili da comprendere, preferire un numero maggiore di metodi brevi e facilmente comprensibili;
- Lunghezza del file: mantenere la lunghezza del file entro un limite ragionevole, in modo da evitare file troppo grandi e non organizzati, cercare invece di avere un file per ogni classe (backend/agente) o componente (frontend);
- Profondità di annidamento: ricercare la minima profondità di annidamento di blocchi di codice, in modo da evitare strutture troppo complesse;
- Variabili per funzione: mantenere il minimo numero di variabili per funzione, evitando di creare variabili superflue;
- Duplicazione del codice: evitare la duplicazione del codice, in modo da mantenere il codice manutenibile e ridurre il rischio di errori, cercare invece di creare funzioni o metodi riutilizzabili.

Tutte queste regole verranno applicate durante l'attività di codifica e saranno verificate tramite l'utilizzo di strumenti di analisi statica del codice, inoltre verranno misurate alcune metriche definite in @manutenibilità-prodotto per valutare la manutenibilità del codice prodotto.  

==== Strumenti
- Emacs e Visual Studio Code per la codifica del software.

=== Integrazione
L'attività di integrazione consiste nell'unione delle parti di software sviluppate in precedenza, per formare un'unica entità funzionante. A ogni nuovo sviluppo corrisponde una nuova integrazione in modo tale da verificare il prima possibile che l'elemento appena integrato sia conforme alle aspettative. L'obiettivo è quello di verificare che le singole parti del software funzionino correttamente nel loro insieme.

// se decideremo delle regole per l'integrazione si dovranno mettere qui

=== Installazione
L'attività consiste nello sviluppo di un piano per installare il prodotto software nell'ambiente di destinazione. In questo piano devono essere fornite le risorse e le informazioni necessarie per l'installazione e la configurazione del software. L'obiettivo è quello di fornire istruzioni chiare e dettagliate all'utente finale, in modo tale da consentirgli di utilizzare il prodotto software.

/*
== Gestione operativa
=== Caratteristiche e finalità
Il processo di gestione operativa  nello standard ISO/IEC 12207:1995 include le attività e i compiti necessari per la gestione del prodotto software e fornire supporto operativo agli utenti. Questo processo si riferisce principalmente alla fase in cui il software viene utilizzato nel suo ambiente operativo e interagisce con il sistema. #linebreak() #linebreak() 
Lo standard definisce queste attività principali:
1. Implementazione del processo: definisce un piano operativo e uno standard per gestire le attività, inoltre stabilisce procedure per il monitoraggio e la risoluzione dei problemi;
2. Test operativi: definisce l'esecuzione di test per ogni rilascio del software nell'ambiente operativo, con particolare attenzione al funzionamento corretto del software rispetto al funzionamento atteso;
3. Operazione del sistema: definisce che il sistema dovrebbe operare all'interno dell'ambiente previsto in accordo alla sua documentazione;
4. Supporto agli utenti: definisce modalità di assistenza e consulenza agli utenti in base alle richieste, quest'ultime dovrebbero essere tracciate e monitorate.
Queste attività assicurano che il software venga gestito efficacemente durante la sua fase operativa e che eventuali problemi o richieste degli utenti siano affrontati in modo tempestivo.

=== Strumenti
Al fine di rendere accessibile il prodotto è fondamentale esporre dettagli sull'installazione del software e sulle procedure necessarie per eseguire correttamente il prodotto, oltre ad eventuali requisiti di sistema necessari. Inoltre, è importante illustrare una guida all'utilizzo, esponendo le principali funzionalità utilizzabili ed il come interagire con il sistema. #linebreak()
Viene di seguito fornito un puntatore al #glossario[repository] del #glossario[PoC] dove è possibile trovare le istruzioni per l'installazione e l'utilizzo del software: https://github.com/techminds-unipd/PoC/blob/main/README.md.
//todo per parte di minimun viable product
*/