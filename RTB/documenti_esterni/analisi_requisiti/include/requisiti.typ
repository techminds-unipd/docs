#import "/template/template.typ": glossario
= Requisiti

== Requisiti funzionali

- FMR (Functional Mandatory Requirement);
- FDR (Functional Desirable Requirement);
- FOR (Functional Optional Requirement).

#figure(
    table(
        columns: (1fr, 5fr, 2fr),
        table.header([*Codice*], [*Descrizione*], [*Fonti*]),
        align: horizon + center,
        [FMR 1], [L'utente deve poter effettuare il login], [@login,@login-interno,@inserimento-username,
        @inserimento-password,@credenziali-errate, @login-google,],
        [FMR 2], [L'utente deve poter registrarsi], [@registrazione,@creazione-username,@inserimento-email,@creazione-password, @conferma-password, @errore-registrazione],
        [FMR 3], [L'utente deve poter associare e dissociare un account Google da utilizzare per i servizi offerti dai blocchi dei workflow], [@aggiunta-account-google-associato, @errore-comunicazione-google, @rimozione-account-google-associato],
        [FMR 4], [L'utente deve poter eseguire un workflow], [@esecuzione-workflow, @vis-errore-workflow,],
        [FMR 5], [L'agente deve poter eseguire il workflow], [@esecuzione-workflow-agente,@errore-workflow-llm #linebreak() (Approfondimento @esecuzione-workflow)],
        [FMR 5], [L'utente deve poter creare un workflow], [@creazione-nuovo-workflow],
        [FDR 6], [L'utente può salvare un workflow], [@salvataggio-workflow],
    ),
    caption: [Tabella dei requisiti.]
)<tabella-dei-requisiti>

== Requisiti di qualità

== Requisiti di vincolo

== Tracciamento

== Riepilogo