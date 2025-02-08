#import "/template/template.typ": glossario
= Specifica dei test
L'identificazione e l'esecuzione dei test è cruciale nel processo di sviluppo del software per diverse ragioni, ognuna mirata a specifici livelli di verifica e validazione.
Nelle successive sezioni andremo quindi ad individuare i testi di unità, di sistema e di accettazione.
I #glossario[test di unità] verificano le singole parti, i test di sistema sono interessati al comportamento complessivo e i test di accettazione osservano la corrispondenza con le aspettative del committente. Questa combinazione di test è fondamentale per garantire la qualità e l'affidabilità del software. Ciascuno di questi test ha quindi un ruolo specifico e importante nel processo di sviluppo, contribuendo a minimizzare i difetti e ad assicurare che il software funzioni come previsto.

Nelle tre sottosezioni seguenti, i test sono suddivisi per categoria e ad ognuno di essi viene associato un codice identificativo, una descrizione e lo stato di esecuzione.
Lo stato di ciascun test è indicato come:
- NI: Non Implementato;
- S: Superato;
- NS: Non Superato.

//== Test di unità
/*Test di Unità (TU): Si concentrano sulla verifica delle singole unità o componenti del software. Questi test sono fondamentali perché:

Verificano la correttezza del codice "as implemented".

Rilevano la maggior parte dei difetti di un prodotto.

Consentono un alto grado di parallelismo e automazione nello svolgimento, rendendoli efficienti.

Accertano la correttezza del codice a livello più basso, garantendo che ogni singola parte funzioni come previsto.*/


== Test di sistema
In questa sezione esponiamo i test di sistema che hanno lo scopo di verificare come l'esecuzione del sistema soddisfi i requisiti funzionali individuati durante la fase di analisi.



//== Test di accettazione
/*Test di Accettazione: Si concentrano sulla validazione del software rispetto ai requisiti utente, coinvolgendo il committente. Sono fondamentali per:

Dimostrare la conformità del prodotto alle attese del committente attraverso casi di prova specifici.

Essere un'attività formale con la supervisione del committente, e il loro buon esito porta al rilascio finale del prodotto.
*/