#import "/template/template.typ": glossario,team
#import "costi.typ": getOreConsumatePersona
#pagebreak()
= Considerazioni finali

== Ore totali persona
Il numero di ore totali per persona inizialmente era di 95 ore massime come previsto dal regolamento del progetto didattico. Di seguito il prospetto del numero di ore totali per persona:
#figure(
    table(
        columns: (5cm, 2cm),
        align: center+horizon,
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        table.header([*Persona*], [*Ore*]),
        [#team.A], [#getOreConsumatePersona(sprintNumber: 9).bressan.at(8)],
        [#team.S], [#getOreConsumatePersona(sprintNumber: 9).corradin.at(8)],
        [#team.T], [#getOreConsumatePersona(sprintNumber: 9).lazzarin.at(8)],
        [#team.L], [#getOreConsumatePersona(sprintNumber: 9).salviato.at(8)],
        [#team.M], [#getOreConsumatePersona(sprintNumber: 9).squarzoni.at(8)],
        [#team.G], [#getOreConsumatePersona(sprintNumber: 9).tutino.at(8)],
        [#team.C], [#getOreConsumatePersona(sprintNumber: 9).vallotto.at(8)],
    ),
    caption: "Totale ore-persona."
) <tabella-totale-ore-persona>

== Aspetti positivi
Il gruppo durante lo svolgimento del progetto ha rilevato i seguenti aspetti positivi:
- *Collaborazione*: il team ha lavorato in armonia per tutta la durata del progetto senza incontrare problemi interpersonali, promuovendo un clima di aiuto reciproco e condivisione delle conoscenze pregresse e apprese;
- *Rispetto del budget e dei tempi previsti*: il gruppo ha rispettato i costi inizialmente previsti per lo svolgimento del progetto, candidandosi per la seconda revisione PB con qualche giorno di ritardo rispetto a quanto pianificato durante la candidatura (28/03/2025) e in anticipo rispetto a quanto dichiarato durante la revisione RTB (04/04/2025);
- *Rapporto ore di orologio - ore produttive*: durante i primi sprint, soprattutto quelli iniziali di RTB e di PB, il rapporto tra le ore di orologio e le ore produttive era molto elevato a causa della poca conoscenza delle tecnologie da utilizzare, incertezze, necessità di coordinamento e altri fattori. Con l'avanzamento degli sprint il gruppo è riuscito a diminuire questo rapporto, terminando tutte le task preventivate prima di quanto pianificato;
- *Nuove conoscenze*: il gruppo ha appreso nuove tecnologie e metodologie di lavoro, come ad esempio l'uso di GitHub per la gestione del codice sorgente, il versionamento e il sistema di ticketing oppure l'uso di Docker per la creazione di ambienti di sviluppo e produzione. Il gruppo ha anche appreso come utilizzare le tecniche di test e verifica del software, come i test di unità, i test di integrazione e i test di sistema.

== Aspetti negativi
- *Cruscotto piano di qualifica*: il cruscotto è stato implementato tardivamente, impedendo la valutazione delle metriche di qualità durante i primi sprint. Questo ha portato a una mancanza di visibilità sui problemi e sui miglioramenti da apportare. Verso la fine del periodo RTB il cruscotto è stato implementato e il gruppo ha iniziato a monitorare le metriche di qualità; 
- *Profondità analisi dei requisiti*: il gruppo non aveva inizialmente compreso quanto un requisito debba essere atomico. Ciò ha portato a dei rallentamenti nell'avanzamento del progetto dovuti alle correzioni da apportare al documento di analisi dei requisiti. 