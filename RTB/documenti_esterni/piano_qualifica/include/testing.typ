#import "/template/template.typ": glossario
#show figure: set block(breakable: true)

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
In questa sezione esponiamo i test di sistema che hanno lo scopo di verificare come l'esecuzione del sistema soddisfi i requisiti funzionali individuati durante la fase di #glossario[analisi dei requisiti] (vedi 
#link("https://techminds-unipd.github.io/docs/RTB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf")[Analisi dei requisiti] #footnote(link("https://techminds-unipd.github.io/docs/RTB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf")) [versione 1.0.0]).

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
    [Verificare che venga visualizzato un messaggio di errore se l'utente inserisce credenziali non valide per effettuare il login.],
    [FMR1],
    [NI],
    [TS3],
    [Verificare che l'utente possa effettuare il login con Google.],
    [FOR1],
    [NI],
    [TS4],
    [Verificare che l'utente possa registrarsi.],
    [FMR2],
    [NI],
    [TS5],
    [Verificare che venga visualizzato un messaggio di errore se l'utente inserisce credenziali non valide per registrarsi.],
    [FMR2],
    [NI],
    [TS6],
    [Verificare che l'utente autenticato possa associare un account Google da utilizzare per i servizi offerti dai #glossario[blocchi] dei workflow.],
    [FMR3],
    [NI],
    [TS7],
    [Verificare che l'utente autenticato possa dissociare un account Google da utilizzare per i servizi offerti dai #glossario[blocchi] dei workflow.],
    [FMR3],
    [NI],
    [TS8],
    [Verificare che l'utente autenticato possa eseguire un workflow.],
    [FMR4],
    [NI],
    [TS9],
    [Verificare che venga visualizzato un messaggio di errore se l'utente esegue un workflow non valido.],
    [FMR4],
    [NI],
    [TS10],
    [Verificare che venga visualizzato un messaggio di errore se l'agente non riesce a completare l'operazione.],
    [FMR4],
    [NI],
    [TS11],
    [Verificare che l'utente autenticato possa visualizzare il risultato dell'esecuzione del workflow.],
    [FMR5],
    [NI],
    [TS12],
    [Verificare che l'utente autenticato possa creare un workflow.],
    [FMR6],
    [NI],
    [TS13],
    [Verificare che l'utente autenticato possa visuliazzare un workflow.],
    [FMR7],
    [NI],
    [TS14],
    [Verificare che l'utente autenticato possa aggiungere un blocco in un workflow.],
    [FMR8],
    [NI],
    [TS15],
    [Verificare che l'utente autenticato possa eliminare un blocco in un workflow.],
    [FMR8],
    [NI],
    [TS16],
    [Verificare che l'utente autenticato possa collegare due blocchi in un workflow.],
    [FMR9],
    [NI],
    [TS17],
    [Verificare che l'utente autenticato possa scollegare due blocchi in un workflow.],
    [FMR9],
    [NI],
    [TS18],
    [Verificare che l'utente autenticato possa aggiungere una descrizione dell'automazione tra due blocchi collegati.],
    [FMR10],
    [NI],
    [TS19],
    [Verificare che l'utente autenticato possa modificare una descrizione dell'automazione tra due blocchi collegati.],
    [FMR10],
    [NI],
    [TS20],
    [Verificare che l'utente autenticato possa visualizzare quali blocchi (servizi) sono stati configurati.],
    [FMR11],
    [NI],
    [TS21],
    [Verificare che l'utente autenticato possa salvare un workflow.],
    [FMR12],
    [NI],
    [TS22],
    [Verificare che l'utente autenticato possa visualizzare le informazioni relative al blocco Gmail.],
    [FMR13],
    [NI],
    [TS23],
    [Verificare che l'utente autenticato possa visualizzare le informazioni relative al blocco #glossario[Pastebin].],
    [FMR13],
    [NI],
    [TS24],
    [Verificare che l'utente autenticato possa visualizzare le informazioni relative al blocco Calendar.],
    [FMR13],
    [NI],
    [TS25],
    [Verificare che l'utente autenticato possa eseguire il logout.],
    [FMR14],
    [NI],
    [TS26],
    [Verificare che l'utente autenticato possa cancellare un workflow.],
    [FMR15],
    [NI],
  ), 
  caption: [Test di sistema.]
)

== Test di accettazione
Si concentrano sulla validazione del software rispetto ai requisiti utente, coinvolgendo il committente. Sono fondamentali per:
- Dimostrare la conformità del prodotto alle attese del committente attraverso casi di prova specifici;
- Portare, con buon esito, al rilascio finale del prodotto con supervisione del committente.
