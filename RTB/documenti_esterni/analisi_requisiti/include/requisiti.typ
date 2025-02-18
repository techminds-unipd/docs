#import "/template/template.typ": glossario
#show figure: set block(breakable: true)
= Requisiti

== Requisiti funzionali

- FMR (Functional Mandatory Requirement): irrinunciabili per qualcuno degli #glossario[stakeholder] ;
- FDR (Functional Desirable Requirement): non strettamente necessari ma a valore aggiunto riconoscibile;
- FOR (Functional Optional Requirement): relativamente utili oppure contrattabili anche in fasi avanzate nel progetto.
#set par(justify: false)
#figure(
    table(
        columns: (1fr, 5fr, 2fr),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }}, 
        inset: 10pt,
        table.header([*Codice*], [*Descrizione*], [*Fonti*]),
        align: horizon + center,

        [FMR1],[Il sistema deve offrire almeno tre blocchi di automazione diversi.],[Capitolato],

        [FMR2], [L'utente deve poter effettuare il login.], [@login, @login-interno, @inserimento-username, @inserimento-password, @credenziali-errate],

        [FOR1], [L'utente deve poter fare il login con Google.], [@login-google],

        [FMR3], [L'utente autenticato deve poter fare il logout.], [@logout],
        
        [FMR4], [L'utente deve potersi registrare.], [@registrazione, @creazione-username, @inserimento-email, @creazione-password, @conferma-password, @errore-registrazione],

        [FMR5], [L'utente autenticato deve poter associare un account Google da utilizzare per i servizi offerti dai blocchi dei workflow.], [@aggiunta-account-google-associato, @errore-comunicazione-google],

        [FMR6], [L'utente autenticato deve poter scollegare l'account Google precedentemente collegato.],[@rimozione-account-google-associato],

        [FMR7], [L'utente autenticato deve poter visualizzare i workflow creati.], [@visualizzazione-lista-workflow, @visualizzazione-singolo-workflow],

        [FMR8], [L'utente autenticato deve poter creare un nuovo workflow.], [@creazione-nuovo-workflow, @inserimento-nome-workflow],

        [FMR9], [L'utente autenticato deve poter visualizzare quali blocchi (servizi) sono stati configurati.], [@visualizzazione-lista-blocchi-configurati, @avviso-servizi-non-collegati],

        [FMR10], [L'utente autenticato deve poter visualizzare le informazioni relative al blocco Gmail.], [@funzionalità-blocco, @funzionalità-blocco-gmail],

        [FMR11], [L'utente autenticato deve poter visualizzare le informazioni relative al blocco Pastebin.], [@funzionalità-blocco, @funzionalità-blocco-pastebin],

        [FMR12], [L'utente autenticato deve poter visualizzare le informazioni relative al blocco Calendar.], [@funzionalità-blocco, @funzionalità-blocco-calendar],


        [FMR13], [L'utente autenticato deve poter aggiungere un blocco in un workflow.], [@aggiunta-blocco],

        [FMR14], [L'utente autenticato deve poter eliminare un blocco in un workflow.], [@eliminazione-blocco],

        [FMR15], [L'utente autenticato deve poter collegare due blocchi in un workflow.], [@collegamento-arco],

        [FMR16], [L'utente autenticato deve poter scollegare due blocchi in un workflow.], [@scollegamento-arco],

        [FMR17], [L'utente autenticato deve poter inserire una descrizione dell'automazione tra due blocchi collegati.], [@inserimento-descrizione],

        [FMR18], [L'utente autenticato deve poter visualizzare la struttura del workflow.], [@visualizzazione-struttura-workflow, @visualizzazione-blocco-workflow, @visualizzazione-arco-workflow],

        [FMR19], [L'utente autenticato deve poter salvare un workflow.], [@salvataggio-workflow, @vis-errore-operazione-workflow],

        [FMR20], [L'utente autenticato deve poter cancellare un workflow.], [@eliminazione-workflow, @vis-errore-operazione-workflow],

        [FMR21], [L'utente autenticato deve poter mandare in esecuzione un workflow.], [Capitolato, @esecuzione-workflow, @vis-errore-struttura-workflow, @vis-errore-runtime],

        [FMR22], [L'utente autenticato deve poter vedere il risultato dell'esecuzione del workflow.], [@vis-risultato-esecuzione-workflow],

        [FMR23], [Il frontend deve poter inviare i dati del workflow al backend.], [@invio-dati-frontend-backend],
        [FMR34], [Il backend deve poter inviare i dati del workflow all'agente.], [@invio-dati-backend-agente],
        
    ),
    caption: [Tabella dei requisiti funzionali.],
)<tabella-dei-requisiti>

== Requisiti di qualità
I requisiti di #glossario[qualità] rappresentano come il sistema deve essere per soddisfare i requisiti dello stakeholder.\
Si dividono in:
- QMR (Qualitative Mandatory Requirement): irrinunciabili per qualcuno degli stakeholder;
- QDR (Qualitative Desirable Requirement): non strettamente necessari ma a valore aggiunto riconoscibile;
- QOR (Qualitative Optional Requirement): relativamente utili oppure contrattabili anche in fasi avanzate nel progetto.
#set par(justify: false)
#figure(
    table(
        columns: (1fr, 4fr, 2fr),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }}, 
        inset: 10pt, 
        table.header([*Codice*], [*Descrizione*], [*Fonti*] ),
        align: horizon + center,
        [QMR1],[Documentare nella specifica tecnica le criticità e i limiti delle soluzioni individuate.],[Capitolato],
        //[QMR2], [Dotarsi di un design modulare per agevolare la creazione di nuovi blocchi.],[],[Capitolato],
        [QMR2],[Documentare nel #glossario[piano di qualifica] i bug presenti.],[Capitolato],
        [QMR3],[Fornire il codice sorgente del prodotto attraverso un sistema di versionamento.],[Capitolato],
        [QMR4],[Documentare nel piano di qualifica la copertura dei #glossario[test di unità] (almeno il 70% del codice prodotto).],[Capitolato],
        //Questo è un link ricorsivo
        [QMR5],[Documentare nell'#glossario[analisi dei requisiti] i casi d'uso.],[Capitolato],
        [QMR6],[Documentare nella specifica tecnica le classi attraverso #glossario[diagrammi UML].],[Capitolato],
        //[QMR7],[Rispettare quanto scritto nel documento "Norme di progetto" durante lo sviluppo del prodotto e della documentazione.],[],[Norme di progetto],
        [QMR7],[La documentazione deve rispettare le metriche descritte nel piano di qualifica.],[Piano di qualifica §2.2],
        [QDR1],[Le #glossario[API] devono essere documentate attraverso #glossario[Swagger].],[Formazione col proponente],
        [QDR2],[Il codice #glossario[TypeScript] deve essere formattato secondo le regole #glossario[ESLint] descritte nelle norme di progetto.],[Decisione interna, Formazione col proponente]
    ),
    caption: [Tabella dei requisiti di qualità.]
)<tabella-requisiti-di-qualita>
== Requisiti di vincolo
I requisiti di vincolo rappresentano delle restrizioni o dei limiti che il sistema deve rispettare.
- CMR (Constraint Mandatory Requirement): irrinunciabili per qualcuno degli stakeholder;
- CDR (Constraint Desirable Requirement): non strettamente necessari ma a valore aggiunto riconoscibile;
- COR (Constraint Optional Requirement): relativamente utili oppure contrattabili anche in fasi avanzate nel progetto.
#set par(justify: false)
#figure(
    table(
        columns: (1fr, 5fr, 2fr),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }}, 
        inset: 10pt, 
        table.header([*Codice*], [*Descrizione*], [*Fonti*]),
        align: horizon + center,
        
        [CDR1], [Il prodotto deve essere sviluppato in container #glossario[Docker], facilitando così il rilascio su vari ambienti cloud (ad esempio #glossario[AWS]).], [Capitolato, Riunione col proponente],
        [CMR1],[Le parti del sistema devono comunicare tra di loro attraverso #glossario[API] che usano il protocollo HTTP.],[Decisione interna],
        [CMR2], [Il prodotto deve funzionare correttamente su Firefox 128 ESR o versioni successive.], [Decisione interna],
        [CMR3], [Il prodotto deve funzionare correttamente sull'ultima versione stable di Chromium.], [Decisione interna],
    ),
    caption: [Tabella dei requisiti di vincolo.]
)<tabella-requisiti-di-vincolo>

== Riepilogo
#set par(justify: false)
#figure(
    table(
        columns: (auto, auto, auto, auto, auto),
        fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        inset: 10pt,
        table.header([*Tipologia*], [*Obbligatorio*], [*Desiderabile*], [*Opzionale*], [*Complessivo*]),
        align: horizon + center,
        [Funzionale], [], [], [],[],
        [Di qualità], [], [], [], [],
        [Di vincolo], [], [], [], [],
        [*Totale*], [*26*], [*3*], [*1*], [*30*],
    ),
    caption: [Tabella di riepilogo dei requisiti.]
)<tabella-riepilogo>