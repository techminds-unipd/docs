#import "/template/template.typ": glossario,team
#import "@preview/timeliney:0.1.0"
#import "costi.typ": getOreConsumateRuoli

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
- *Issue aggiuntive* (Opzionale): attività non pianificate e aggiunte durante lo svolgersi dello sprint;
- *Ruoli*: elenca i ruoli assegnati ai membri del team in quel determinato sprint;
- *Issue*: elenco delle attività da svolgere, suddivise per categoria, con riferimenti a #glossario[GitHub]\;
- #glossario[Diagramma di Gantt]: un grafico che mostra la distribuzione temporale delle attività pianificate e svolte. Il diagramma conteggia solamente i giorni produttivi. Viene data enfasi nel mostrare le differenze tra il tempo preventivato (colore #underline("grigio", stroke: 1pt + gray, evade: false)) e il tempo effettivamente impiegato (colore #underline("rosso", stroke: 1pt + red, evade: false)) per completare ogni issue. Inoltre le attività sono divise in macrosezioni, la cui linea (colore #underline("nero", stroke: 1pt + black, evade: false)) indica il tempo complessivo.
- *Conclusioni*: riassume i risultati raggiunti e i task completati o rimasti in sospeso;
- #glossario[Retrospettiva]: analizza le difficoltà incontrate e le decisioni prese per migliorare il lavoro nei successivi sprint;
- *Preventivo*:
  - tabella contenente le ore e i costi preventivati per ciascun ruolo e persona;
  - grafico a torta che mostra la distribuzione delle ore preventivate per ruolo.
- *Consuntivo*:
  - tabella contenente le ore e i costi a consuntivo per ciascun ruolo e persona. Viene data enfasi nel mostrare la differenza tra le ore preventivate e quelle effettivamente consumate;
  - grafico a torta che mostra la distribuzione delle ore consumate per ruolo.
- *Aggiornamento Preventivo a Finire*: testo e tabella che descrivono la variazione oraria e di costo del preventivo a finire.
== RTB
Subito dopo l'assegnazione del capitolato, abbiamo ritenuto opportuno non avviare il primo sprint senza un incontro preliminare con il proponente del progetto. Durante questa fase iniziale, in attesa del confronto con l'azienda VarGroup, ci siamo focalizzati su:
- Stesura della struttura dei documenti del progetto;
- Definizione dei ruoli all'interno del team per il primo sprint.

Questa settimana, chiamata “pre-sprint”, è stata essenziale per:
- Familiarizzare con i diversi ruoli del team;
- Svolgere attività preparatorie per un avvio più rapido del primo sprint.

#include "sprint/sprint1.typ"
#pagebreak()
#include "sprint/sprint2.typ"
#pagebreak()
#include "sprint/sprint3.typ"
#pagebreak()
#include "sprint/sprint4.typ"
#pagebreak()
#include "sprint/sprint5.typ"
#pagebreak()
#include "sprint/sprint6.typ"


#linebreak()
#linebreak()
#linebreak()
#let oreConsumate = getOreConsumateRuoli(5)
#let totale = oreConsumate.zip((30, 20, 25, 25, 15, 15)).map(x => x.at(0) * x.at(1)).sum()

=== Consuntivo di periodo RTB
I costi effettivamente sostenuti durante il periodo RTB sono esposti nella @tabella-totaleRTB.
#figure(
    table(
        columns: (1fr,)*4,
        align: center+horizon,
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        table.header([*Ruolo*],[*Ore*], [*Costo orario*], [*Costo totale*]),
        [Responsabile], [#oreConsumate.at(0)], [30 #sym.euro], [#(oreConsumate.at(0)*30) #sym.euro],
        [Amministratore], [#oreConsumate.at(1)], [20 #sym.euro], [#(oreConsumate.at(1)*20) #sym.euro],
        [Analista], [#oreConsumate.at(2)], [25 #sym.euro], [#(oreConsumate.at(2)*25) #sym.euro],
        [Progettista], [#oreConsumate.at(3)], [25 #sym.euro], [#(oreConsumate.at(3)*25) #sym.euro],
        [Programmatore], [#oreConsumate.at(4)], [15 #sym.euro], [#(oreConsumate.at(4)*15) #sym.euro],
        [Verificatore], [#oreConsumate.at(5)], [15 #sym.euro], [#(oreConsumate.at(5)*15) #sym.euro],
        table.cell([*Totale*], colspan: 3, fill: white), table.cell([*#totale #sym.euro*], fill: white)
    ),
    caption: "Consuntivo di periodo RTB."
) <tabella-totaleRTB>

