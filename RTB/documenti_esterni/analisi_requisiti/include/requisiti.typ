#import "/template/template.typ": glossario
= Requisiti

== Requisiti funzionali

- FMR (Functional Mandatory Requirement);
    - Irrinunciabili per qualcuno degli stakeholder;
- FDR (Functional Desirable Requirement);
    - Non strettamente necessari ma a valore aggiunto riconoscibile
- FOR (Functional Optional Requirement).
    - Relativamente utili oppure contrattabili più avanti nel progetto

#figure(
    table(
        columns: (1fr, 5fr, 2fr),
        table.header([*Codice*], [*Descrizione*], [*Fonti*]),
        align: horizon + center,
        [FMR 1], [L'utente deve poter effettuare il login], [@login,@login-interno,@inserimento-username,
        @inserimento-password,@credenziali-errate, ],

        [FOR 1], [L'utente può fare il login con Google], [@login-google],
        
        [FMR 2], [L'utente deve poter registrarsi], [@registrazione,@creazione-username,@inserimento-email,@creazione-password, @conferma-password, @errore-registrazione],

        [FMR 3], [L'utente deve poter associare e dissociare un account Google da utilizzare per i servizi offerti dai blocchi dei workflow], [@aggiunta-account-google-associato, @errore-comunicazione-google, @rimozione-account-google-associato],

        [FMR 4], [L'utente deve poter eseguire un workflow], [@esecuzione-workflow,@vis-errore-workflow,@vis-errore-runtime, (Approfondimento: @esecuzione-workflow-sistema,@esecuzione-workflow-agente,@errore-workflow-llm)],

        [FMR 5], [L'utente deve poter vedere il risultato dell'esecuzione del workflow], [@vis-risultato-esecuzione-workflow],

        [FMR 6], [L'utente deve poter creare un workflow], [@creazione-nuovo-workflow],

        [FMR 7], [L'utente deve poter visualizzare un workflow], [@visualizzazione-workflow],

        [FMR 7], [L'utente deve poter aggiungere e eliminare un blocco in un workflow], [@aggiunta-blocco, @eliminazione-blocco],

        [FMR 8], [L'utente deve poter collegare e scollegare due blocchi in un workflow], [@collegamento-arco, @scollegamento-arco],

        [FMR 9], [L'utente deve poter aggiungere e modificare una descrizione dell'automazione tra due blocchi collegati], [@aggiunta-descrizione, @modifica-descrizione],

        [FMR 10], [L'utente deve poter visualizzare quali blocchi (servizi) sono stati configurati], [@visualizzazione-blocchi-configurati, @avviso-servizi-non-collegati],
       
        [FDR 1], [L'utente può salvare un workflow], [@salvataggio-workflow, @errore-connessione-database],

        [FMR 11], [L'utente deve poter visualizzare le funzionalità del blocco Gmail, Pastebin e Calendar], [@funzionalità-blocco-gmail, @funzionalità-blocco-pastebin, @funzionalità-blocco-calendar],

        [FMR 12], [L'utente deve poter fare il Logout], [@logout],
    ),
    caption: [Tabella dei requisiti.]
)<tabella-dei-requisiti>

== Requisiti di qualità

== Requisiti di vincolo

== Tracciamento

== Riepilogo