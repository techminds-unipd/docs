#import "/template/template.typ": glossario
= Requisiti

== Requisiti funzionali

- FMR (Functional Mandatory Requirement);
    - irrinunciabili per qualcuno degli #glossario[stakeholder];.
- FDR (Functional Desirable Requirement);
    - non strettamente necessari ma a valore aggiunto riconoscibile.
- FOR (Functional Optional Requirement).
    - relativamente utili oppure contrattabili anche in fasi avanzate nel progetto.
#set par (justify: false)
#figure(
    table(
        columns: (1fr, 5fr, 2fr),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }}, 
        inset: 10pt,
        table.header([*Codice*], [*Descrizione*], [*Fonti*]),
        align: horizon + center,
        [FMR 1], [L'utente deve poter effettuare il login], 
        [@login, @login-interno, @inserimento-username, @inserimento-password, @credenziali-errate],

        [FOR 1], [L'utente deve poter fare il login con Google], [@login-google],
        
        [FMR 2], [L'utente deve potersi registrare], [@registrazione, @creazione-username, @inserimento-email, @creazione-password, @conferma-password, @errore-registrazione],

        [FMR 3], [L'utente autenticato deve poter associare e dissociare un account Google da utilizzare per i servizi offerti dai blocchi dei workflow], [@aggiunta-account-google-associato, @errore-comunicazione-google, @rimozione-account-google-associato],

        [FMR 4], [L'utente autenticato deve poter eseguire un workflow], [@esecuzione-workflow, @vis-errore-workflow, @vis-errore-runtime, (Approfondimento: @esecuzione-workflow-sistema, @esecuzione-workflow-agente, @errore-workflow-llm)],

        [FMR 5], [L'utente autenticato deve poter vedere il risultato dell'esecuzione del workflow], [@vis-risultato-esecuzione-workflow],

        [FMR 6], [L'utente autenticato deve poter creare un workflow], [@creazione-nuovo-workflow],

        [FMR 7], [L'utente autenticato deve poter visualizzare un workflow], [@visualizzazione-workflow],

        [FMR 8], [L'utente autenticato deve poter aggiungere ed eliminare un blocco in un workflow], [@aggiunta-blocco, @eliminazione-blocco],

        [FMR 9], [L'utente autenticato deve poter collegare e scollegare due blocchi in un workflow], [@collegamento-arco, @scollegamento-arco],

        [FMR 10], [L'utente autenticato deve poter aggiungere e modificare una descrizione dell'automazione tra due blocchi collegati], [@aggiunta-descrizione, @modifica-descrizione],

        [FMR 11], [L'utente autenticato deve poter visualizzare quali blocchi (servizi) sono stati configurati], [@visualizzazione-blocchi-configurati, @avviso-servizi-non-collegati],
       
        [FDR 1], [L'utente autenticato deve poter salvare un workflow], [@salvataggio-workflow, @errore-connessione-database],

        [FMR 12], [L'utente autenticato deve poter visualizzare le funzionalità dei blocchi Gmail, Pastebin e Calendar], [@funzionalità-blocco-gmail, @funzionalità-blocco-pastebin, @funzionalità-blocco-calendar],

        [FMR 13], [L'utente autenticato deve poter fare il logout], [@logout],
    ),
    caption: [Tabella dei requisiti funzionali.],
)<tabella-dei-requisiti>

== Requisiti di qualità
I requisiti di #glossario[qualità] rappresentano come il sistema deve essere per soddisfare i requisiti dello stakeholder.\
Si dividono in:
- QMR (Qualitative Mandatory Requirement);
    - irrinunciabili per qualcuno degli stakeholder.
- QDR (Qualitative Desirable Requirement);
    - non strettamente necessari ma a valore aggiunto riconoscibile.
#set par (justify: false)
#figure(
    table(
        columns: (1fr, 5fr, 2fr),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }}, 
        inset: 10pt, 
        table.header([*Codice*], [*Descrizione*], [*Fonti*]),
        align: horizon + center,
        [QMR 1],[Documentare le criticità e i limiti delle soluzioni individuate],[Capitolato],
        [QMR 2], [Dotarsi di un design modulare per agevolare la creazione di nuovi blocchi],[Capitolato],
        [QMR 3],[Documentare i bug presenti],[Capitolato],
        [QMR 4],[Fornire il codice sorgente del prodotto attraverso un sistema di versionamento.],[Capitolato],
        [QMR 5],[Copertura dei #glossario[test di unità] pari ad almeno il 70% del codice prodotto],[Capitolato],
        [QMR 6],[Documentare i casi d'uso],[Capitolato],
        [QMR 7],[Documentare le classi attraverso #glossario[diagrammi UML]],[Capitolato],
        [QMR 8],[Rispettare quanto scritto nel documento "Norme di progetto" durante lo sviluppo del prodotto e della documentazione],[Norme di progetto],
        [QDR 1],[Le #glossario[API] devono essere documentate in formato #glossario[Swagger]],[Formazione col proponente],
        [QMR 10],[La documentazione deve rispettare le metriche descritte nel #glossario[piano di qualifica]],[Piano di qualifica §2.2],
        [QDR 2],[Il codice TypeScript deve essere formattato secondo le regole #glossario[ESLint]],[Decisione interna]
    ),
    caption: [Tabella dei requisiti di qualità.]
)<tabella-requisiti-di-qualita>
== Requisiti di vincolo
I requisiti di vincolo rappresentano delle restrizioni o dei limiti che il sistema deve rispettare.
- CMR (Constraint Mandatory Requirement)
    - irrinunciabili per qualcuno degli stakeholder.
- CDR (Constraint Desirable Requirement)
    - non strettamente necessari ma a valore aggiunto riconoscibile.
#set par (justify: false)
#figure(
    table(
        columns: (1fr, 5fr, 2fr),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }}, 
        inset: 10pt, 
        table.header([*Codice*], [*Descrizione*], [*Fonti*]),
        align: horizon + center,
        [CMR 1],[Il prodotto deve prevedere almeno tre blocchi],[Capitolato],
        [CDR 1], [Il prodotto deve essere sviluppato in container #glossario[Docker] così il deploy su vari ambienti cloud (ad esempio #glossario[AWS])], [Capitolato, Riunione col proponente],
        [CMR 2],[Le parti del sistema devono comunicare tra di loro attraverso #glossario[API] che usano il protocollo HTTP],[Decisione interna]
    ),
    caption: [Tabella dei requisiti di vincolo.]
)<tabella-requisiti-di-vincolo>
== Tracciamento

== Riepilogo