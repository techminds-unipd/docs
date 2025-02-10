#import "/template/template.typ": glossario
= Specifica dei test
Nelle successive sezioni andremo ad individuare varie tipologie di test.
In particolare:
- I #glossario[test di unità] verificano le singole unità software;
- I #glossario[test di integrazione] verificano come si interfacciano le componenti architetturali;
- I #glossario[test di sistema] sono interessati al comportamento complessivo del prodotto software;
- I #glossario[test di accettazione] osservano la corrispondenza con le aspettative del committente. 
Questa combinazione di test è fondamentale per garantire la qualità e l'affidabilità del software. Ciascuno di questi test ha quindi un ruolo specifico e importante nel processo di sviluppo, contribuendo a minimizzare i difetti e ad assicurare che il software funzioni come previsto.

/*Per ogni test viene associato un codice identificativo, una descrizione, il requisito funzionale associato e lo stato di esecuzione.
Lo stato di ciascun test è indicato come:
- NI: Non Implementato;
- S: Superato;
- NS: Non Superato.*/

== Test di unità
Si concentrano sulla verifica delle singole unità del software. Questi test sono fondamentali perché:
- Verificano la correttezza del codice "as implemented";
- Consentono un alto grado di parallelismo e automazione nello svolgimento, rendendoli efficienti;
- Accertano la correttezza del codice a livello più basso, verificando che ogni singola parte funzioni come previsto.

== Test di integrazione
Hanno lo scopo di verificare il corretto funzionamento delle interfacce e dei flussi di controllo tra le componenti del software, rilevando eventuali difetti di progettazione architetturale o problemi causati da test di unità non adeguati.

== Test di sistema
In questa sezione esponiamo i test di sistema che hanno lo scopo di verificare come l'esecuzione del sistema soddisfi i requisiti funzionali individuati durante la fase di #glossario[analisi dei requisiti] (vedi #link("https://techminds-unipd.github.io/docs/RTB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf")).


== Test di accettazione
Si concentrano sulla validazione del software rispetto ai requisiti utente, coinvolgendo il committente. Sono fondamentali per:
- Dimostrare la conformità del prodotto alle attese del committente attraverso casi di prova specifici;
- Portare, con buon esito, al rilascio finale del prodotto con supervisione del committente.

