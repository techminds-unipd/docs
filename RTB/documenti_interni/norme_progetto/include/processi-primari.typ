#import "/template/template.typ": glossario
#import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge
#import fletcher.shapes: ellipse, rect
#import "@preview/cetz:0.3.0"
#import cetz.draw

#let empty-dash = (
    inherit: "}>",
    size: 10,
    fill: none,
    stealth: 0
)

= Processi primari
Un progetto è definito tale se e solo se in esso sono attivi processi primari. 

Lo standard ISO/IEC 12207:1995 definisce i processi primari come i processi relativi alle attività fondamentali per la creazione e la gestione del software. 

Lo standard, all'interno dei processi primari, definisce 5 categorie:
1. Acquisizione;
2. Fornitura;
3. Sviluppo;
4. Gestione operativa;
5. Manutenzione.
I processi di acquisizione e manutenzione non saranno descritti a causa della natura di questo progetto.

== Fornitura
=== Scopo 
Il processo primario di fornitura è focalizzato sulle attività che coinvolgono noi e il proponente durante la fornitura del prodotto software, oltre alle attività sono presenti le risorse necessarie per completare il progetto con successo.

Questa sezione elenca tutte le regole che dobbiamo seguire e rispettare per mantenere una relazione efficace e trasparente con il proponente e i committenti durante l'intero progetto.

Per ottenere una visione costante e aggiornata dello stato del progetto e del bilancio andremo quindi a monitorare, documentare e valutare il lavoro svolto, stimando le attività ancora da completare e confrontando il loro stato attuale con i #glossario[requisiti] definiti dal proponente. 

=== Attività
Come descrive lo standard ISO/IEC 12207:1995, il processo primario di fornitura è composto dalle seguenti attività:
1. Avvio: eseguiamo una revisione dei requisiti studiando a fondo i capitolati, decidendo poi di fare una proposta per un determinato capitolato;
2. Preparazione della risposta: definiamo e prepariamo la proposta, una sorta di "risposta alla richiesta avanzata";
3. Contrattazione: accordo sui requisiti e consegna del progetto;
4. Pianificazione: revisioniamo i requisiti di acquisizione per definire il quadro per la gestione del progetto e per assicurare la #glossario[qualità] del prodotto offerto. Tale pianificazione contiene anche le esigenze di risorse e il coinvolgimento del proponente;
5. Esecuzione e controllo: implementiamo il piano di gestione del progetto, controllando i progressi e la qualità del prodotto software e della relativa documentazione durante tutte le fasi del progetto;
6. Revisione e valutazione: effettuiamo #glossario[verifiche] periodiche per dimostrare che i prodotti software e i processi soddisfino pienamente i requisiti individuati; 
7. Consegna e completamento: consegniamo il prodotto software al proponente secondo quanto accordato in precedenza.

=== Rapporti con il proponente
I rapporti con il proponente sono un elemento che riteniamo fondamentale per il progetto in quanto:
- Guidano il corretto svolgimento dei processi;
- Facilitano lo scambio di feedback e dubbi, da entrambi i lati (noi nei confronti del proponente e viceversa);
- Garantiscono il rispetto di quanto pattuito.
Sono stati quindi concordati dei canali di comunicazione che permettono il raggiungimento degli obiettivi sopra descritti, per ulteriori approfondimenti vedi @proponente.

=== Documentazione fornita
La documentazione che forniamo al proponente e al committente è la seguente:
- *Documentazione esterna*:
    - lettera di presentazione: documento di presentazione per ogni revisione del progetto;
    - #glossario[piano di progetto]: documento che ha lo scopo di raccogliere la pianificazione delle attività progettuali, compresi la gestione dei ruoli e il bilancio di #glossario[sprint] in sprint;
    -  #glossario[piano di qualifica]: documento che contiene le metriche e le normative che abbiamo individuato e adottato;
    - #glossario[analisi dei requisiti]: documento che raccoglie i requisiti del prodotto software.
- #text(weight: "bold")[Documentazione interna al gruppo]:
    - studio dei capitolati: documento che racchiude l'analisi approfondita di ogni proposta, con relativi vantaggi e svantaggi, tecnologie richieste e considerazioni;
    - glossario: documento utile per definire termini rilevanti nell'ambito del progetto, al fine di uniformare la conoscenza dei membri del gruppo ed evitare incomprensioni e ambiguità;
    - #glossario[norme di progetto]: il presente documento, creato per determinare il way of working che ci guida nel corso del progetto.

=== Strumenti e tecnologie
A supporto del processo di fornitura abbiamo deciso di utilizzare i seguenti strumenti e tecnologie:
- Canva per la realizzazione dei diari di bordo;
- Microsoft Teams per gli incontri esterni;
- Slack per le comunicazioni testuali con il proponente;
- #glossario[Typst] per la stesura della documentazione, compresi i diagrammi dei #glossario[casi d'uso], i #glossario[diagrammi di gantt] e le tabelle di bilancio.

== Sviluppo
=== Scopo
Questa sezione stabilisce le linee guida e le regole che dobbiamo seguire per il processo di sviluppo del prodotto software. L'obiettivo è quello di fornire una struttura ben definita per la realizzazione del prodotto, in modo tale da garantire un'implementazione corretta e coerente con i requisiti del proponente.

Come descrive lo standard ISO/IEC 12207:1995, il processo primario di sviluppo include le seguenti attività:
1. Analisi dei requisiti;
2. Progettazione;
3. Codifica e testing;
4. Integrazione.

=== Analisi dei requisiti
L'attività di analisi dei requisiti è fondamentale per la corretta comprensione delle esigenze del proponente. In questa fase il nostro compito è quello di raccogliere, analizzare e documentare i requisiti del prodotto (requisiti software).
In generale l'analisi descrive la struttura funzionale del prodotto, quindi cosa deve succedere, e lo fa attraverso i casi d'uso.

==== Casi d'uso
Un caso d'uso è un insieme di scenari (sequenze di azioni) che hanno in comune uno scopo finale (obiettivo) per un utente (attore). 

Ogni caso d'uso è composto da:
- Identificativo e nomenclatura: "UC.a.b Nome", dove "a" è il numero del caso d'uso, "b" è il numero del sotto caso d'uso, se presente, e "Nome" è il nome del caso d'uso (esplicativo del suo scopo);
- Diagramma: rappresentazione grafica del caso d'uso;
- Descrizione: breve descrizione del caso d'uso;
- Attori principali: elenco degli attori principali (entità esterne che interagiscono attivamente con il sistema) coinvolti;
- Attori secondari: elenco degli attori secondari (entità esterne che interagiscono passivamente con il sistema) coinvolti, se presenti;
- Scenario principale: sequenza di azioni che descrive il comportamento dell'attore e del sistema nel caso in cui non si verifichino errori;
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

- Sistema: rappresenta il "dominio" di un particolare caso caso d'uso, serve a stabilire il confine tra ciò che è esterno e quindi non gestito dal sistema e ciò che invece è interno e quindi gestito dal sistema. Gli attori per definizione saranno rappresentati esternamente al sistema, mentre i casi d'uso al suo interno;
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

    - inclusione: relazione tra due casi d'uso, indica che un caso d'uso ne include un altro, può essere una funzionalità comune a più casi d'uso. Ogni istanza del caso d'uso "includente" esegue sempre il caso d'uso "incluso", con lo stesso attore principale. Nel sotto caso d'uso si utilizza l'identificativo dell' "includente" seguito da un punto e un numero progressivo;
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

    - estensione: relazione tra due casi d'uso, indica che un caso d'uso può estenderne un altro (aumenta le funzionalità), o anche più casi d'uso diversi. Ogni istanza del caso d'uso "base" esegue il caso d'uso che estende in modo condizionato (a differenza dell'inclusione), e questo dipende dalla condizione di estensione, la quale determina quando l'estensione deve essere utilizzata. Con le estensioni si vogliono descrivere variazioni dalla funzionalità del caso d'uso "base", ad esempio in caso di errore/eccezione;
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

        node((2.3,1), align(center)[Condizione di estensione], name: <cond>, shape: rect),

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
Ogni requisito è costituito da:
1. Codice identificativo, univoco del requisito, nel formato 
#align(center)[[Tipologia][Importanza]Requirement N]
dove "Tipologia" corrisponde a: 
- "F", functional, requisito funzionale;
- "Q", quality, requisito di qualità;
- "C", constraint, requisito di vincolo;
"Importanza" corrisponde a: 
- "M", mandatory, requisito obbligatorio; 
- "D", desirable, requisito desiderabile; 
- "O", optional, requisito opzionale;
"N" è un numero progressivo (es. QMR 2 indica un requisito di qualità obbligatorio numero 2);

2. Descrizione, una breve descrizione del requisito;
3. Fonti, le fonti da cui è stato identificato il requisito.

// non so se la descrizione delle tipologie di requisiti vada qui o in analisi dei requisiti

==== Metriche // non so se le useremo

=== Progettazione

=== Codifica e testing

=== Integrazione


== Gestione operativa


