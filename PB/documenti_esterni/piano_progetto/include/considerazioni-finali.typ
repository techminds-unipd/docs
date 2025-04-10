#import "/template/template.typ": glossario,team,pieChartSprint
#import "costi.typ": getOreConsumatePersona, getOreConsumateRuoli, getOreConsumatePersonaPerRuolo
#pagebreak()
= Considerazioni finali

== Ore totali per persona suddivise per ruolo
Il numero di ore limite per persona è di 95 ore, come previsto dal regolamento del progetto didattico. Di seguito il prospetto del numero di ore totali effettivamente consumate per persona, suddivise per ogni ruolo:
#set par(justify: false)
#figure(
    table(
        columns: (auto, 1.7cm, 1.7cm, 1.7cm, 1.7cm, 1.7cm, 1.7cm, 1.7cm),
        align: center+horizon,
        fill: (x, y) => if (y==0 or y==8) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        table.header([*Persona*], [*Resp*], [*Amm*], [*An*], [*Proget*], [*Program*], [*Ver*], [*Totale*]),
        [#team.A], ..getOreConsumatePersonaPerRuolo(sprintNumber: 9).bressan.map(x => str(x)), [*#getOreConsumatePersona(sprintNumber: 9).bressan.at(8)*],
        [#team.S], ..getOreConsumatePersonaPerRuolo(sprintNumber: 9).corradin.map(x => str(x)), [*#getOreConsumatePersona(sprintNumber: 9).corradin.at(8)*],
        [#team.T], ..getOreConsumatePersonaPerRuolo(sprintNumber: 9).lazzarin.map(x => str(x)), [*#getOreConsumatePersona(sprintNumber: 9).lazzarin.at(8)*],
        [#team.L], ..getOreConsumatePersonaPerRuolo(sprintNumber: 9).salviato.map(x => str(x)), [*#getOreConsumatePersona(sprintNumber: 9).salviato.at(8)*],
        [#team.M], ..getOreConsumatePersonaPerRuolo(sprintNumber: 9).squarzoni.map(x => str(x)), [*#getOreConsumatePersona(sprintNumber: 9).squarzoni.at(8)*],
        [#team.G], ..getOreConsumatePersonaPerRuolo(sprintNumber: 9).tutino.map(x => str(x)), [*#getOreConsumatePersona(sprintNumber: 9).tutino.at(8)*],
        [#team.C], ..getOreConsumatePersonaPerRuolo(sprintNumber: 9).vallotto.map(x => str(x)), [*#getOreConsumatePersona(sprintNumber: 9).vallotto.at(8)*],
        [*Totale*], ..getOreConsumateRuoli(sprintNumber: 9).map(x => [*#x*]), [*659*],
    ),
    caption: "Totale ore-persona."
) <tabella-totale-ore-persona>
#set par(justify: true)
== Ore totali per ruolo
Nella seguente tabella viene riportato il numero di ore totali inizialmente previste per ogni ruolo in candidatura e il numero di ore totali effettivamente consumate:
#figure(
    table(
        columns: (5cm, 4cm, 4cm),
        align: center+horizon,
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        table.header([*Ruolo*], [*Ore preventivate*], [*Ore effettive*]),
        [Responsabile], [55], [#getOreConsumateRuoli().at(0)],
        [Amministratore], [45], [#getOreConsumateRuoli().at(1)],
        [Analista], [95], [#getOreConsumateRuoli().at(2)],
        [Progettista], [100], [#getOreConsumateRuoli().at(3)],
        [Programmatore], [190], [#getOreConsumateRuoli().at(4)],
        [Verificatore], [180], [#getOreConsumateRuoli().at(5)],
    ),
    caption: "Totale ore-ruolo."
) <tabella-totale-ore-ruolo>

Come si può notare, il team ha utilizzato meno ore di responsabile rispetto a quante preventivate, dato che grafici e tabelle del piano di progetto sono state in parte automatizzate. Per quanto riguarda le ore di amministratore è stato registrato un notevole incremento di ore effettive rispetto alle preventivate, ciò è dovuto alle automazioni implementate per i documenti redatti in #glossario[typst] e quelle relative agli script presenti nella CI. Inoltre le ore del ruolo di analista sono state sovrastimate, a causa delle molte ore di allenamento che poi hanno portato ad essere più efficenti nelle ore produttive. Infine per i ruoli rimanenti le previsioni si sono verificate essere corrette, ad eccezione del ruolo di programmatore che ha consumato meno ore rispetto a quelle preventivate. 

== Aspetti positivi
Il gruppo durante lo svolgimento del progetto ha rilevato i seguenti aspetti positivi:
- *Collaborazione*: il team ha lavorato in armonia per tutta la durata del progetto senza incontrare problemi interpersonali, promuovendo un clima di aiuto reciproco e condivisione delle conoscenze pregresse e apprese;
- *Rispetto del budget e dei tempi previsti*: il gruppo ha rispettato i costi inizialmente previsti per lo svolgimento del progetto, candidandosi per la seconda revisione PB con qualche giorno di ritardo rispetto a quanto pianificato durante la candidatura e in anticipo rispetto a quanto preventivato successivamente alla revisione RTB;
- *Rapporto ore di orologio - ore produttive*: durante i primi sprint, soprattutto quelli iniziali di RTB e di PB, il rapporto tra le ore di orologio e le ore produttive era molto elevato a causa della poca conoscenza delle tecnologie da utilizzare, incertezze, necessità di coordinamento e altri fattori. Con l'avanzamento degli sprint il gruppo è riuscito a diminuire questo rapporto, terminando tutte le task preventivate prima di quanto pianificato;
- *Nuove conoscenze*: il gruppo ha appreso nuove tecnologie e metodologie di lavoro, come l'uso di GitHub per la gestione del codice sorgente, il versionamento e il sistema di ticketing, oppure l'uso di #glossario[Docker] per la creazione di ambienti di sviluppo e produzione. Il gruppo ha anche appreso come utilizzare le tecniche di test e #glossario[verifica] del software, come i #glossario[test di unità], i #glossario[test di integrazione] e i #glossario[test di sistema].

== Aspetti negativi
- *Cruscotto piano di qualifica*: il cruscotto è stato implementato tardivamente, impedendo la valutazione delle metriche di qualità durante i primi sprint. Questo ha portato a una mancanza di visibilità sui problemi e sui miglioramenti da apportare. Verso la fine del periodo RTB il cruscotto è stato implementato e il gruppo ha iniziato a monitorare le metriche di qualità; 
- *Profondità analisi dei requisiti*: il gruppo non aveva inizialmente compreso quanto un requisito dovesse essere atomico. Ciò ha portato a dei rallentamenti nell'avanzamento del progetto dovuti alle correzioni da apportare al documento di analisi dei requisiti. 
