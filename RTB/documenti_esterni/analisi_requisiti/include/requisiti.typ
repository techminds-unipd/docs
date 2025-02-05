#import "/template/template.typ": glossario
= Requisiti e tracciamento

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
        [FMR1], [L'utente deve poter effettuare il login],
        [@login, @login-interno, @inserimento-username, @inserimento-password, @credenziali-errate],

        [FOR1], [L'utente deve poter fare il login con Google], [@login-google],
        
        [FMR2], [L'utente deve potersi registrare], [@registrazione, @creazione-username, @inserimento-email, @creazione-password, @conferma-password, @errore-registrazione],

        [FMR3], [L'utente autenticato deve poter associare e dissociare un account Google da utilizzare per i servizi offerti dai blocchi dei workflow], [@aggiunta-account-google-associato, @errore-comunicazione-google, @rimozione-account-google-associato],

        [FMR4], [L'utente autenticato deve poter eseguire un workflow], [@esecuzione-workflow, @vis-errore-workflow, @vis-errore-runtime, (Approfondimento: @esecuzione-workflow-backend, @frontend-invio-dati-workflow, @esecuzione-workflow-agente, @errore-workflow-llm)],

        [FMR5], [L'utente autenticato deve poter vedere il risultato dell'esecuzione del workflow], [@vis-risultato-esecuzione-workflow],

        [FMR6], [L'utente autenticato deve poter creare un workflow], [@creazione-nuovo-workflow],

        [FMR7], [L'utente autenticato deve poter visualizzare un workflow], [@visualizzazione-workflow],

        [FMR8], [L'utente autenticato deve poter aggiungere ed eliminare un blocco in un workflow], [@aggiunta-blocco, @eliminazione-blocco],

        [FMR9], [L'utente autenticato deve poter collegare e scollegare due blocchi in un workflow], [@collegamento-arco, @scollegamento-arco],

        [FMR10], [L'utente autenticato deve poter aggiungere e modificare una descrizione dell'automazione tra due blocchi collegati], [@aggiunta-descrizione, @modifica-descrizione],

        [FMR11], [L'utente autenticato deve poter visualizzare quali blocchi (servizi) sono stati configurati], [@visualizzazione-blocchi-configurati, @avviso-servizi-non-collegati],
       
        [FMR12], [L'utente autenticato deve poter salvare un workflow], [@salvataggio-workflow, @errore-connessione-database],

        [FMR13], [L'utente autenticato deve poter visualizzare le informazioni relative ai blocchi Gmail, Pastebin e Calendar], [@funzionalità-blocco, @funzionalità-blocco-gmail, @funzionalità-blocco-pastebin, @funzionalità-blocco-calendar],

        [FMR14], [L'utente autenticato deve poter fare il logout], [@logout],

        [FMR15], [L'utente autenticato deve poter cancellare un workflow], [@eliminazione-workflow]
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
        [QMR1],[Documentare le criticità e i limiti delle soluzioni individuate],[Capitolato],
        [QMR2], [Dotarsi di un design modulare per agevolare la creazione di nuovi blocchi],[Capitolato],
        [QMR3],[Documentare i bug presenti],[Capitolato],
        [QMR4],[Fornire il codice sorgente del prodotto attraverso un sistema di versionamento.],[Capitolato],
        [QMR5],[Copertura dei #glossario[test di unità] pari ad almeno il 70% del codice prodotto],[Capitolato],
        [QMR6],[Documentare i casi d'uso],[Capitolato],
        [QMR7],[Documentare le classi attraverso #glossario[diagrammi UML]],[Capitolato],
        [QMR8],[Rispettare quanto scritto nel documento "Norme di progetto" durante lo sviluppo del prodotto e della documentazione],[Norme di progetto],
        [QDR1],[Le #glossario[API] devono essere documentate in formato #glossario[Swagger]],[Formazione col proponente],
        [QMR9],[La documentazione deve rispettare le metriche descritte nel #glossario[piano di qualifica]],[Piano di qualifica §2.2],
        [QDR2],[Il codice #glossario[TypeScript] deve essere formattato secondo le regole #glossario[ESLint]],[Decisione interna]
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
        [CMR1],[Il prodotto deve prevedere almeno tre blocchi],[Capitolato],
        [CDR1], [Il prodotto deve essere sviluppato in container #glossario[Docker], facilitando così il rilascio su vari ambienti cloud (ad esempio #glossario[AWS])], [Capitolato, Riunione col proponente],
        [CMR2],[Le parti del sistema devono comunicare tra di loro attraverso #glossario[API] che usano il protocollo HTTP],[Decisione interna]
    ),
    caption: [Tabella dei requisiti di vincolo.]
)<tabella-requisiti-di-vincolo>

== Riepilogo
#set par (justify: false)
#figure(
    table(
        columns: (auto, auto, auto, auto),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        inset: 10pt,
        table.header([*Tipologia*], [*Obbligatorio*], [*Desiderabile*], [*Complessivo*]),
        align: horizon + center,
        [Funzionale], [15], [1], [16],
        [Di qualità], [9], [2], [11],
        [Di vincolo], [2], [1], [3],
        [*Totale*], [*#str(15+9+2)*], [*#str(1+2+1)*], [*#str(16+11+3)*],
    ),
    caption: [Tabella di riepilogo dei requisiti.]
)<tabella-riepilogo>