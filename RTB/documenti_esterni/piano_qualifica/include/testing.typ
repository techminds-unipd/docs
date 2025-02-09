#import "/template/template.typ": glossario
= Specifica dei test
Nelle successive sezioni andremo ad individuare varie tipologie di test.
In particolare:
- I #glossario[test di unità] verificano le singole unità software;
- I test di sistema sono interessati al comportamento complessivo del prodotto software;
- I test di accettazione osservano la corrispondenza con le aspettative del committente. 
Questa combinazione di test è fondamentale per garantire la qualità e l'affidabilità del software. Ciascuno di questi test ha quindi un ruolo specifico e importante nel processo di sviluppo, contribuendo a minimizzare i difetti e ad assicurare che il software funzioni come previsto.

Per ogni test viene associato un codice identificativo, una descrizione, il requisito funzionale associato e lo stato di esecuzione.
Lo stato di ciascun test è indicato come:
- NI: Non Implementato;
- S: Superato;
- NS: Non Superato.

//== Test di unità
/*Test di Unità (TU): Si concentrano sulla verifica delle singole unità o componenti del software. Questi test sono fondamentali perché:

Verificano la correttezza del codice "as implemented".

Rilevano la maggior parte dei difetti di un prodotto.

Consentono un alto grado di parallelismo e automazione nello svolgimento, rendendoli efficienti.

Accertano la correttezza del codice a livello più basso, garantendo che ogni singola parte funzioni come previsto.

#figure(
  table(
    columns: (auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white}},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice test*], [*Descrizione*], [*Stato test*],
    ),
    [aa],
    [bb],
    [cc]
  ), 
  caption: [Test di unità.]
)
*/


== Test di sistema
In questa sezione esponiamo i test di sistema che hanno lo scopo di verificare come l'esecuzione del sistema soddisfi i requisiti funzionali individuati durante la fase di analisi (vedi #link("https://techminds-unipd.github.io/docs/RTB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf")).

#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white}},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice test*], [*Descrizione*], [*Requisito*], [*Stato test*],
    ),
    [TS1],
    [Verificare che l'utente possa effettuare il login.],
    [FMR1],
    [NI],
    [TS2],
    [Verificare che l'utente possa effettuare il login con Google.],
    [FOR1],
    [NI],
    [TS3],
    [Verificare che l'utente possa registrarsi.],
    [FMR2],
    [NI],
    [TS4],
    [Verificare che l'utente autenticato possa associare e dissociare un account Google da utilizzare per i servizi offerti dai #glossario[blocchi] dei workflow.],
    [FMR3],
    [NI],
    [TS5],
    [Verificare che l'utente autenticato possa eseguire un workflow.],
    [FMR4],
    [NI],
  ), 
  caption: [Test di sistema.]
)



//== Test di accettazione
/*Test di Accettazione: Si concentrano sulla validazione del software rispetto ai requisiti utente, coinvolgendo il committente. Sono fondamentali per:

Dimostrare la conformità del prodotto alle attese del committente attraverso casi di prova specifici.

Essere un'attività formale con la supervisione del committente, e il loro buon esito porta al rilascio finale del prodotto.

#figure(
  table(
    columns: (auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white}},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice test*], [*Descrizione*], [*Stato test*],
    ),
    [aa],
    [bb],
    [cc]
  ), 
  caption: [Test di accettazione.]
)

*/