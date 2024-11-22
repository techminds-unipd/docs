#import "/template/template.typ": glossario
= Analisi dei rischi
L'analisi dei rischi è una fase cruciale nella gestione di un progetto software, poiché permette di identificare, valutare e mitigare potenziali problemi che potrebbero compromettere il raggiungimento degli obiettivi. Un'analisi efficace consente al team di anticipare e affrontare in modo proattivo eventuali ostacoli, riducendo l'impatto di eventi negativi e migliorando la probabilità di successo del progetto. Di seguito verrano riportati tutti i rischi identificati, permettendo così una corretta classificazione. Per ogni rischio verrà indicata una descrizione, una probabilità di occorrenza, la pericolosità che può avere sul progetto e le strategie di mitigazione adottate.\
La probabilità di occorrenza verrà valutata su una scala da 1 a 5 dove 1 indica una probabilità molto bassa e 5 una probabilità molto alta.\
La pericolosità verrà valutata su una scala costituita da 3 livelli dove si parte dal livello "Bassa", seguito dal livello "Media" fino ad arrivare al livello "Alta".\
== Rischi personali
All'interno di questa categoria vengono inseriti tutti i rischi che possono derivare da problemi personali legati alle persone coinvolte nel progetto e all'organizzazione del lavoro.\
I rischi personali sono identificati con la sigla "RP" seguita da un numero progressivo.\
#figure(
  table(
    columns: (1fr, 2fr),
    fill: (_, y) => if (y==0) { red.darken(15%) } else { if calc.even(y) { gray.lighten(50%) } else { white } },
    align: center+horizon,
    table.header(
      table.cell(colspan: 2, text(weight: "bold", "RP1 - Impegno di un membro del team inferiore a quanto dichiarato")),
    ),
    [*Descrizione*],
    [Mancanza di impegno sufficiente rispetto a quanto dichiarato in fase di formazione dei gruppi di lavoro.],
    [*Probabilità di occorrenza*],
    [2],
    [*Pericolosità*],
    [Alta],
    [*Tecniche di mitigazione*],
    [Comunicare tempestivamente eventuali problemi di impegno al responsabile del progetto, in modo da poter trovare una soluzione che non comprometta il lavoro del team. Sfruttare al meglio la pianificazione così che ogni membro del team possa organizzare al meglio il proprio tempo.]
  ), 
  caption: [RP1 - Impegno di un membro del team inferiore a quanto dichiarato]
) <tabella-RP1>
#figure(
  table(
    columns: (1fr, 2fr),
    fill: (_, y) => if (y==0) { red.darken(15%) } else { if calc.even(y) { gray.lighten(50%) } else { white } },
    align: center+horizon,
    table.header(
      table.cell(colspan: 2, text(weight: "bold", "RP2 - Malattia di un membro del team")),
    ),
    [*Descrizione*],
    [Assenza di un membro del team a causa di malattia.],
    [*Probabilità di occorrenza*],
    [4],
    [*Pericolosità*],
    [Media],
    [*Tecniche di mitigazione*],
    [Comunicare il proprio periodo di indisponibilità al responsabile, in modo da poter rivedere l'assegnazione dei compiti e la pianificazione.]
  ), 
  caption: [RP2 - Malattia di un membro del team]
) <tabella-RP2>
#figure(
  table(
    columns: (1fr, 2fr),
    fill: (_, y) => if (y==0) { red.darken(15%) } else { if calc.even(y) { gray.lighten(50%) } else { white } },
    align: center+horizon,
    table.header(
      table.cell(colspan: 2, text(weight: "bold", "RP3 - Problemi interpersonali tra membri del team")),
    ),
    [*Descrizione*],
    [Problemi di comunicazione e collaborazione tra membri del team, che possono compromettere il lavoro e la coesione del gruppo.],
    [*Probabilità di occorrenza*],
    [3],
    [*Pericolosità*],
    [Alta],
    [*Tecniche di mitigazione*],
    [Promuovere un clima di collaborazione e rispetto all'interno del team, favorendo la comunicazione e la condivisione delle idee. Affrontare tempestivamente eventuali problemi interpersonali, cercando di risolverli in modo costruttivo e pacifico.]
  ), 
  caption: [RP3 - Problemi interpersonali tra membri del team]
) <tabella-RP3>
#figure(
  table(
    columns: (1fr, 2fr),
    fill: (_, y) => if (y==0) { red.darken(15%) } else { if calc.even(y) { gray.lighten(50%) } else { white } },
    align: center+horizon,
    table.header(
      table.cell(colspan: 2, text(weight: "bold", "RP4 - Scarsa conoscenza delle tecnologie utilizzate")),
    ),
    [*Descrizione*],
    [Mancanza di conoscenza delle tecnologie utilizzate nel progetto, che può rallentare lo sviluppo e la qualità del prodotto finale.],
    [*Probabilità di occorrenza*],
    [5],
    [*Pericolosità*],
    [Media],
    [*Tecniche di mitigazione*],
    [Promuovere l'autoformazione e lo studio individuale delle tecnologie utilizzate, attraverso la consultazione di documentazione, tutorial e corsi online. Organizzare sessioni di formazione e condivisione delle conoscenze all'interno del team, in modo da favorire lo scambio di informazioni e l'apprendimento reciproco.]
  ), 
  caption: [RP4 - Problemi interpersonali tra membri del team]
) <tabella-RP4>
== Rischi organizzativi
All'interno di questa categoria vengono inseriti tutti i rischi che possono derivare da problemi organizzativi distinguendoli tra problemi di natura interna ed esterna.\
In particolare i rischi organizzativi interni sono identificati con la sigla "ROI" seguita da un numero progressivo, mentre i rischi organizzativi esterni dalla sigla "ROE".\
#figure(
  table(
    columns: (1fr, 2fr),
    fill: (_, y) => if (y==0) { red.darken(15%) } else { if calc.even(y) { gray.lighten(50%) } else { white } },
    align: center+horizon,
    table.header(
      table.cell(colspan: 2, text(weight: "bold", "ROI1 - Scarsa comunicazione interna")),
    ),
    [*Descrizione*],
    [Mancanza di comunicazione efficace all'interno del team, che può portare a fraintendimenti e ritardi nella realizzazione del progetto oltre a difficoltà di coordinamento ed organizzazione delle riunioni interne.],
    [*Probabilità di occorrenza*],
    [3],
    [*Pericolosità*],
    [Alta],
    [*Tecniche di mitigazione*],
    [Promuovere una comunicazione chiara e trasparente all'interno del team, favorendo la condivisione delle informazioni e la partecipazione attiva di tutti i membri. Organizzare regolarmente riunioni interne per aggiornare lo stato di avanzamento del progetto e per discutere eventuali problemi o difficoltà riscontrate.]
  ), 
  caption: [ROI1 - Scarsa comunicazione interna]
) <tabella-ROI1>
#figure(
  table(
    columns: (1fr, 2fr),
    fill: (_, y) => if (y==0) { red.darken(15%) } else { if calc.even(y) { gray.lighten(50%) } else { white } },
    align: center+horizon,
    table.header(
      table.cell(colspan: 2, text(weight: "bold", "ROI2 - Budget insufficiente")),
    ),
    [*Descrizione*],
    [Budget non sufficiente per coprire le spese previste nel piano di progetto, che può portare a una riduzione della qualità del prodotto finale.],
    [*Probabilità di occorrenza*],
    [4],
    [*Pericolosità*],
    [Alta],
    [*Tecniche di mitigazione*],
    [Monitorare costantemente il budget e le spese sostenute, in modo da individuare tempestivamente eventuali scostamenti rispetto a quanto preventivato. Valutare con attenzione le priorità e le necessità del progetto, cercando di ottimizzare le risorse disponibili e di ridurre al minimo gli sprechi.]
  ), 
  caption: [ROI2 - Budget insufficiente per sostenere le spese del progetto]
) <tabella-ROI2>
#figure(
  table(
    columns: (1fr, 2fr),
    fill: (_, y) => if (y==0) { red.darken(15%) } else { if calc.even(y) { gray.lighten(50%) } else { white } },
    align: center+horizon,
    table.header(
      table.cell(colspan: 2, text(weight: "bold", "ROI3 - Mancata assunzione di responsabilità")),
    ),
    [*Descrizione*],
    [Un membro del team non assume le responsabilità legate al ruolo ricoperto, causando ritardi e problemi nella realizzazione del progetto.],
    [*Probabilità di occorrenza*],
    [2],
    [*Pericolosità*],
    [Media],
    [*Tecniche di mitigazione*],
    [Definire chiaramente i ruoli e le responsabilità di ciascun membro del team all'inizio di ogni sprint, in modo da evitare sovrapposizioni e ambiguità. Monitorare costantemente l'attività svolta da ciascun membro, fornendo supporto e feedback in caso di necessità.]
  ), 
  caption: [ROI3 - Mancata assunzione di responsabilità]
) <tabella-ROI3>
#figure(
  table(
    columns: (1fr, 2fr),
    fill: (_, y) => if (y==0) { red.darken(15%) } else { if calc.even(y) { gray.lighten(50%) } else { white } },
    align: center+horizon,
    table.header(
      table.cell(colspan: 2, text(weight: "bold", "ROE1 - Tempi di risposta da parte del proponente")),
    ),
    [*Descrizione*],
    [Ritardi nei tempi di risposta da parte del proponente, che possono rallentare il processo decisionale e la realizzazione del progetto.],
    [*Probabilità di occorrenza*],
    [3],
    [*Pericolosità*],
    [Media],
    [*Tecniche di mitigazione*],
    [Comunicare tempestivamente al proponente le necessità e le richieste del team, in modo da favorire una maggiore tempestività nelle risposte attraverso canali di comunicazione differenti dal servizio di email. Organizzare incontri periodici con il proponente per discutere lo stato di avanzamento del progetto e per condividere eventuali dubbi o problematiche riscontrate.]
    ), 
  caption: [ROE1 - Tempi di risposta da parte del proponente troppo lunghi]
) <tabella-ROE1>
#figure(
  table(
    columns: (1fr, 2fr),
    fill: (_, y) => if (y==0) { red.darken(15%) } else { if calc.even(y) { gray.lighten(50%) } else { white } },
    align: center+horizon,
    table.header(
      table.cell(colspan: 2, text(weight: "bold", "ROE2 - Ritardi nei tempi di fornitura degli strumenti necessari")),
    ),
    [*Descrizione*],
    [Ritardi nei tempi di fornitura degli strumenti necessari per lo svolgimento del progetto, che possono compromettere la pianificazione e la qualità del lavoro svolto.],
    [*Probabilità di occorrenza*],
    [3],
    [*Pericolosità*],
    [Media],
    [*Tecniche di mitigazione*],
    [Contattare il proponente per sollecitare la consegna degli strumenti necessari, evidenziando l'importanza e l'urgenza della situazione. Valutare la possibilità di utilizzare alternative o soluzioni temporanee in attesa della fornitura dei materiali richiesti.]
  ), 
  caption: [ROE2 - Tempi di risposta da parte del proponente troppo lunghi]
) <tabella-ROE2>
== Rischi tecnologici
All'interno di questa categoria vengono inseriti tutti i rischi che possono derivare da problemi legati alle tecnologie utilizzate.\
I rischi tecnologici sono identificati con la sigla "RT" seguita da un numero progressivo.\
#figure(
  table(
    columns: (1fr, 2fr),
    fill: (_, y) => if (y==0) { red.darken(15%) } else { if calc.even(y) { gray.lighten(50%) } else { white } },
    align: center+horizon,
    table.header(
      table.cell(colspan: 2, text(weight: "bold", "RT1")),
    ),
    [*Descrizione*],
    [],
    [*Probabilità di occorrenza*],
    [],
    [*Pericolosità*],
    [],
    [*Tecniche di mitigazione*],
    []
    ), 
  caption: [RT1 - ]
) <tabella-RT1>