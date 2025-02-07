#import "/template/template.typ": glossario

= Budget e costi
In questa sezione analizziamo la variazione del costo stimato di completamento del progetto e l'assegnazione delle ore ai ruoli. Tale analisi risulta fondamentale per comprendere al meglio se le previsioni effettuate durante la fase di candidatura risultino poi adatte e congruenti alla realtà dei fatti.

== Candidatura
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

== RTB
Durante lo scorrere dei periodi tra la Candidatura e l'avanzamento RTB, è stato subito chiaro che la ripartizione delle ore svolta in precedenza non risultava del tutto corretta. In particolare per i ruoli di responsabile, amministratore e analista abbiamo notato una forte discrepanza tra quanto previsto e quanto effettivamente necessario. Questo sbaglio era, come sottolineato prima, già calcolato data l'inesperienza del gruppo. Con un'attenta analisi delle ore, e di conseguenza dei costi, consumati durante i vari periodi, abbiamo deciso di distribuire nuovamente il carico orario:

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
)<table>

Come si può notare dalla @table, c'è stata una forte ridistribuzione delle ore per i ruoli di responsabile, amministratore e analista. Per quanto riguarda programmatore e verificatore riteniamo che le ore assegnate siano in linea con le responsabilità richieste dai due ruoli. Infine anche per progettista il carico orario è rimasto invariato perchè, non avendo ancora svolto nessuna attività ricoperta da questo ruolo, non avevamo abbastanza indicatori per poter aggiungere o togliere carico orario.

Grazie ai cambiamenti effettuati il costo di progetto preventivato risulta ora essere di *12.625 #sym.euro*, con una lieve diminuzione rispetto ai precedenti *12.975 #sym.euro*.