#import "/template/template.typ": glossario,team
#import "@preview/timeliney:0.1.0"

= Periodi
In questa sezione elenchiamo i periodi di lavoro suddivisi per le milestone più rilevanti del progetto didattico. Ogni periodo è composto da più sprint dato che abbiamo deciso di utilizzare una metodologia di lavoro agile, prendendo come riferimento il modello Scrum. Inoltre analizziamo la variazione del costo stimato di completamento del progetto e l'assegnazione delle ore ai ruoli. Tale analisi risulta fondamentale per comprendere al meglio se le previsioni effettuate durante la fase di candidatura risultino poi adatte e congruenti alla realtà dei fatti.

== Preventivo Candidatura
Durante la fase di Candidatura, la ripartizione oraria per i vari ruoli è stata la seguente:
#figure(
    table(
        columns: (1fr,)*5,
        align: center+horizon,
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        table.header([*Ruolo*],[*Costo orario*],[*Stima oraria*],[*Percentuale*],[*Stima costo*]),
        [Responsabile], [30 #sym.euro], [55], [8%], [1.650 #sym.euro],
        [Amministratore], [20 #sym.euro], [45], [7%], [900 #sym.euro],
        [Analista], [25 #sym.euro], [95], [14%], [2.375 #sym.euro],
        [Progettista], [25 #sym.euro], [100], [15%], [2.500 #sym.euro],
        [Programmatore], [15 #sym.euro], [190], [29%], [2.850 #sym.euro],
        [Verificatore], [15 #sym.euro], [180], [27%], [2.700 #sym.euro],
        table.cell([*Costo Totale*], colspan: 4, fill: white), table.cell([*12.975 #sym.euro*], fill: white)
    ),
    caption: "Ripartizione oraria tra ruoli - Candidatura."
)

Tali suddivisioni orarie sono state scelte in base alle seguenti motivazioni:
- Le ore dedicate al ruolo di programmatore sono circa il 30% del totale in modo da riflettere ciò che solitamente avviene nei progetti professionali;
- Tenendo conto della natura esplorativa del progetto e dell’inesperienza dei membri, circa il 25% delle ore sono state assegnate al ruolo di verificatore, per assicurare una buona qualità dei prodotti;
- Come suggerito da tutti i proponenti contattati, il 30% delle ore è dedicato alle fasi di analisi e progettazione nell'ottica di porre delle buone fondamenta per le attività di codifica;
- Le ore rimanenti sono state valutate sufficienti per le attività che dovranno svolgere il responsabile e l’amministratore.

Il costo totale di completamento previsto risulta quindi essere *12.975 #sym.euro*.

== Struttura degli Sprint

Ogni sprint nel documento è descritto seguendo una struttura chiara e ripetuta. In particolare ogni sprint contiene le seguenti sezioni:

- *Durata*: le date di inizio e fine dello sprint;
- *Pianificazione*: descrive gli obiettivi principali dello sprint, le attività previste e le motivazioni delle scelte fatte;
- *Ruoli*: elenca i ruoli assegnati ai membri del team in quel determinato sprint;
- *Issue*: elenco delle attività da svolgere, suddivise per categoria, con riferimenti a #glossario[GitHub] ;
- #glossario[Diagramma di Gantt]: un grafico che mostra la distribuzione temporale delle attività pianificate e svolte. Viene data enfasi nel mostrare le differenze tra il tempo preventivato (colore grigio) e il tempo effettivamente impiegato (colore rosso) per completare ogni issue;
- *Conclusioni*: riassume i risultati raggiunti e i task completati o rimasti in sospeso;
- #glossario[Retrospettiva]: analizza le difficoltà incontrate e le decisioni prese per migliorare il lavoro nei successivi sprint;
- *Costi*:
  - *Preventivo*:
    - Tabella contenente le ore e i costi preventivati per ciascun ruolo e persona;
    - Grafico a torta che mostra la distribuzione delle ore preventivate per ruolo.
  - *Consuntivo*:
    - Tabella contenente le ore e i costi a consuntivo per ciascun ruolo e persona. Viene data enfasi nel mostrare la differenza tra le ore preventivate e quelle effettivamente consumate;
    - Grafico a torta che mostra la distribuzione delle ore consumate per ruolo.
== RTB
Subito dopo l'assegnazione del capitolato, abbiamo ritenuto opportuno non avviare il primo sprint senza un incontro preliminare con il proponente del progetto. Durante questa fase iniziale, in attesa del confronto con l'azienda VarGroup, ci siamo focalizzati su:
- Stesura della struttura dei documenti del progetto;
- Definizione dei ruoli all'interno del team per il primo sprint.

Questa settimana, chiamata “pre-sprint”, è stata essenziale per:
- Familiarizzare con i diversi ruoli del team;
- Svolgere attività preparatorie per un avvio più rapido del primo sprint.

#include "sprint/sprint1.typ"
#include "sprint/sprint2.typ"
#include "sprint/sprint3.typ"
#include "sprint/sprint4.typ"

=== Preventivo a Finire
Avvicinandosi alla prima revisione RTB, è stato subito chiaro che la ripartizione delle ore svolta in precedenza non risultava del tutto corretta. In particolare per i ruoli di responsabile, amministratore e analista abbiamo notato una forte discrepanza tra quanto previsto e quanto effettivamente necessario. La pianificazione errata era prevedibile data l'inesperienza del team. Con una più attenta analisi delle ore e di conseguenza dei costi consumati durante i vari periodi, abbiamo deciso di ridistribuire nuovamente il carico orario:

#figure(
    table(
        columns: (1fr,)*5,
        align: center+horizon,
            fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        table.header([*Ruolo*],[*Costo orario*],[*Stima oraria*],[*Percentuale*],[*Stima costo*]),
        [Responsabile], [30 #sym.euro], [40 #text(rgb("#204680"))[(-15)]], [6%], [1.200 #sym.euro],
        [Amministratore], [20 #sym.euro], [100 #text(rgb("#204680"))[(+55)]], [15%], [2.000 #sym.euro],
        [Analista], [25 #sym.euro], [55 #text(rgb("#204680"))[(-40)]], [8%], [1.375 #sym.euro],
        [Progettista], [25 #sym.euro], [100], [15%], [2.500 #sym.euro],
        [Programmatore], [15 #sym.euro], [190], [29%], [2.850 #sym.euro],
        [Verificatore], [15 #sym.euro], [180], [27%], [2.700 #sym.euro],
        table.cell([*Costo Totale*], colspan: 4, fill: white), table.cell([*12.625 #sym.euro*], fill: white)
    ),
    caption: "Ripartizione oraria tra ruoli - RTB."
)<table-PaF>

Come si può notare dalla @table-PaF, c'è stata una forte ridistribuzione delle ore per i ruoli di responsabile, amministratore e analista. Per quanto riguarda programmatore e verificatore riteniamo che le ore assegnate siano in linea con le responsabilità richieste dai due ruoli. Infine anche per il progettista il carico orario è rimasto invariato perché, non avendo ancora svolto nessuna attività ricoperta da questo ruolo, non sono presenti abbastanza indicatori per poter aggiungere o togliere carico orario.

Grazie ai cambiamenti effettuati il costo di progetto preventivato risulta ora essere di *12.625 #sym.euro*, con una lieve diminuzione rispetto ai precedenti *12.975 #sym.euro*.