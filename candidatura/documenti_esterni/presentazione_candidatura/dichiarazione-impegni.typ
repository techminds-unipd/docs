#import "/template/template.typ": documento
#import "/template/template.typ": team

#show: documento.with(
  title: "Dichiarazione degli impegni",
  sommario: "Dichiarazione degli impegni per il capitolato 3.",
  changelog: (
    "1.0.0", "05/11/2024", "Aggiornamento dei contenuti in seguito alla modifica del preventivo", team.C + linebreak() + team.M + linebreak() + team.L, team.A + linebreak() + team.G + linebreak() + team.T,
    "0.1.1", "05/11/2024", "Modifica posizione e struttura changelog", team.S, team.G + linebreak() + team.C,
    "0.1.0", "29/10/2024", "Prima versione", "Il gruppo Tech Minds", team.G + linebreak() + team.C
  )
)

#set text(
  lang: "it"
)


= Valutazione orari e costi
Ogni componente del gruppo si impegna a dedicare *95 ore* produttive per il progetto, ottenendo così un monte ore totale di *665 ore*. La @table illustra la divisione delle ore per ogni ruolo con relativi costi.

== Suddivisione ore totali
Le ore dedicate al ruolo di programmatore sono circa il 30% del totale in modo da riflettere ciò che solitamente avviene nei progetti professionali. Tenendo conto della natura esplorativa del progetto e dell’inesperienza dei membri, abbiamo deciso di assegnare circa il 25% delle ore al ruolo di verificatore, per assicurare una buona qualità dei prodotti. Come suggerito da tutti i proponenti contattati, il 30% delle ore è dedicato alle fasi di analisi e progettazione nell'ottica di porre delle buone fondamenta per le attività di codifica. Le ore rimanenti sono state valutate sufficienti per le attività che dovranno svolgere il responsabile e l’amministratore.

#figure(
    table(
        columns: (1fr,)*5,
        align: center+horizon,
        fill: (_, x) => if calc.odd(x) {rgb(191,191,191)} else {white},
        table.header([*Ruolo*],[*Costo orario*],[*Stima oraria*],[*Percentuale*],[*Stima costo*]),
        [Responsabile], [30 #sym.euro], [55], [8%], [1.650 #sym.euro],
        [Amministratore], [20 #sym.euro], [45], [7%], [900 #sym.euro],
        [Analista], [25 #sym.euro], [95], [14%], [2.375 #sym.euro],
        [Progettista], [25 #sym.euro], [100], [15%], [2.500 #sym.euro],
        [Programmatore], [15 #sym.euro], [190], [29%], [2.850 #sym.euro],
        [Verificatore], [15 #sym.euro], [180], [27%], [2.700 #sym.euro],
        table.cell([*Costo Totale*], colspan: 4, fill: white), table.cell([*12.975 #sym.euro*], fill: white)
    ),
    caption: "Ripartizione oraria tra ruoli"
)<table>

== Suddivisione oraria dei ruoli per membro
Le ore verranno suddivise equamente tra i membri del gruppo, così da garantire che ognuno possa ricoprire tutti i ruoli durante lo svolgimento del progetto. All’inizio di ogni sprint, a ciascun membro sarà assegnato un ruolo diverso rispetto a quello svolto in precedenza, compatibilmente con i bisogni richiesti dalle task dello sprint. Per consentire a tutti di prendere un'adeguata confidenza con il ruolo ricoperto, prevediamo che gli sprint iniziali avranno una durata maggiore rispetto alle due settimane che il gruppo si pone come obiettivo. Durante le prime retrospettive, valuteremo la fattibilità di accorciare lo sprint successivo.

= Scadenza prevista
A seguito delle valutazioni del gruppo Tech Minds la scadenza stimata di consegna relativa al capitolato 3 _Automatizzare le routine digitali tramite l’intelligenza generativa_ è prevista in data 28 marzo 2025.