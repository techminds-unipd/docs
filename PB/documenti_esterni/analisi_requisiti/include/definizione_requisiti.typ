#import "/template/template.typ": glossario

#let getFR(getLen: bool) = {
    let FR = ()
    let FMR = 1
    let FDR = 1
    let FOR = 1

    FR.push(  ("FMR" + str(FMR),
        [Il sistema deve offrire almeno tre blocchi di automazione diversi.],
        [Capitolato]))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il sistema deve eseguire il workflow attraverso l'uso di un agente AI.],
        [Capitolato],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il sistema deve esporre un'interfaccia drag-and-drop per poter inserire i blocchi.],
        [Capitolato],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il sistema deve interfacciarsi con i servizi di Google.],
        [Riunione col proponente],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il sistema deve interfacciarsi con i servizi di Pastebin.],
        [Riunione col proponente]
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente deve poter effettuare il login interno.],
        [@login, @login-interno],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente deve poter inserire il proprio username per effettuare il login interno.],
        [@login, @login-interno, @inserimento-username],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente deve poter inserire la propria password per effettuare il login interno.],
        [@login, @login-interno, @inserimento-password],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente deve ricevere un messaggio di errore in caso abbia inserito credenziali errate per il login interno.],
        [@login, @login-interno, @credenziali-errate],
    ))
    FMR+=1

    FR.push(("FOR" + str(FOR),
        [L'utente deve poter fare il login con Google.],
        [@login, @login-google],
    ))
    FOR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter fare il logout.],
        [@logout],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente deve potersi registrare.],
        [@registrazione],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente deve poter inserire lo username con cui vuole registrarsi.],
        [@registrazione, @creazione-username],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente deve poter inserire la password per la registrazione.],
        [@registrazione, @creazione-password],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente deve poter confermare la password precedentemente inserita per la registrazione.],
        [@registrazione, @conferma-password],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente deve ricevere un messaggio di errore in caso abbia inserito credenziali non valide per la registrazione.],
        [@registrazione, @errore-registrazione],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter associare un account Google da utilizzare per i servizi offerti dai blocchi dei workflow.],
        [@aggiunta-account-google-associato],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve ricevere un messaggio in caso di errore nell'associazione dell'account Google.],
        [@errore-comunicazione-google],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter scollegare l'account Google precedentemente collegato.],
        [@rimozione-account-google-associato],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare la lista dei workflow creati.],
        [@visualizzazione-lista-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato, visualizzando la lista dei workflow, deve poter visualizzare il nome di ciascun workflow sotto forma di link.],
        [@visualizzazione-lista-workflow, @visualizzazione-singolo-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato, visualizzando la lista dei workflow, deve poter visualizzare per ogni workflow nella liste un'opzione per eliminarlo.],
        [@visualizzazione-lista-workflow, @visualizzazione-singolo-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter creare un nuovo workflow.],
        [@creazione-nuovo-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter inserire il nome del workflow che sta creando.],
        [@creazione-nuovo-workflow, @inserimento-nome-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare quali blocchi (servizi) sono stati configurati.],
        [@visualizzazione-lista-blocchi-configurati],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato, visualizzando i blocchi configurati, deve poter visualizzare il nome di ogni blocco.],
        [@visualizzazione-lista-blocchi-configurati, @visualizzazione-singolo-blocco-configurato],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato, visualizzando i blocchi configurati, deve poter visualizzare un'opzione per ottenere informazioni sul servizio associato al blocco.],
        [@visualizzazione-lista-blocchi-configurati, @visualizzazione-singolo-blocco-configurato],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve ricevere un avviso in caso non abbia collegato nessun servizio.],
        [@visualizzazione-lista-blocchi-configurati, @avviso-servizi-non-collegati],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare una breve descrizione relativa al blocco Gmail.],
        [@funzionalità-blocco, @funzionalità-blocco-gmail],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare le funzioni offerte dal blocco Gmail.],
        [@funzionalità-blocco, @funzionalità-blocco-gmail],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare una breve descrizione relativa al blocco Pastebin.],
        [@funzionalità-blocco, @funzionalità-blocco-pastebin],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare le funzioni offerte dal blocco Pastebin.],
        [@funzionalità-blocco, @funzionalità-blocco-pastebin],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare una breve descrizione relativa al blocco Calendar.],
        [@funzionalità-blocco, @funzionalità-blocco-calendar],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare le funzioni offerte dal blocco Calendar.],
        [@funzionalità-blocco, @funzionalità-blocco-calendar],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter aggiungere un blocco in un workflow.],
        [@aggiunta-blocco],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato, per poter aggiungere un blocco in un workflow, deve trascinarlo nell'area drag and drop.],
        [@aggiunta-blocco],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter eliminare un blocco in un workflow.],
        [@eliminazione-blocco],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter collegare due blocchi in un workflow.],
        [@collegamento-arco],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter scollegare due blocchi in un workflow.],
        [@scollegamento-arco],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter inserire una descrizione dell'automazione in linguaggio naturale tra due blocchi collegati.],
        [Capitolato,
            @inserimento-descrizione],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare la struttura del workflow.],
        [@visualizzazione-struttura-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare ogni blocco presente nel workflow.],
        [@visualizzazione-struttura-workflow, @visualizzazione-blocco-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare il nome del servizio di ogni blocco presente nel workflow.],
        [@visualizzazione-struttura-workflow, @visualizzazione-blocco-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare gli archi che collegano i blocchi presenti nel workflow.],
        [@visualizzazione-struttura-workflow, @visualizzazione-arco-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare la descrizione di ogni arco presente nel workflow.],
        [@visualizzazione-struttura-workflow, @visualizzazione-arco-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter salvare un workflow.],
        [@salvataggio-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato visualizza un messaggio che lo avvisi del fallimento del salvataggio del workflow.],
        [@salvataggio-workflow, @vis-errore-operazione-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter cancellare un workflow.],
        [@eliminazione-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato visualizza un messaggio che lo avvisi del fallimento dell'eliminazione del workflow.],
        [@eliminazione-workflow,
            @vis-errore-operazione-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter mandare in esecuzione un workflow.],
        [@esecuzione-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato, dopo aver mandato in esecuzione un workflow con una struttura non valida, visualizza un messaggio d'errore.],
        [@esecuzione-workflow, @vis-errore-struttura-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato visualizza un messaggio che lo informa di un errore runtime nell'esecuzione del workflow.],
        [@esecuzione-workflow, @vis-errore-runtime],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare il risultato dell'esecuzione del workflow.],
        [@vis-risultato-esecuzione-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare, all'interno del risultato del workflow, i passi dell'esecuzione.],
        [@vis-risultato-esecuzione-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare, all'interno del risultato del workflow, i link delle risorse generate.],
        [@vis-risultato-esecuzione-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il frontend deve poter inviare la lista dei blocchi del workflow al backend.],
        [@invio-dati-frontend-backend],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il frontend deve poter inviare la lista degli archi del workflow al backend.],
        [@invio-dati-frontend-backend],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il frontend deve poter inviare la lista delle automazioni del workflow al backend.],
        [@invio-dati-frontend-backend],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il backend deve poter inviare la lista dei blocchi del workflow all'agente.],
        [@invio-dati-backend-agente],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il backend deve poter inviare la lista degli archi del workflow all'agente.],
        [@invio-dati-backend-agente],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il backend deve poter inviare la lista delle automazioni del workflow all'agente.],
        [@invio-dati-backend-agente],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il backend deve poter inviare i token di autorizzazione necessari all'agente.],
        [@invio-dati-backend-agente],
    ))
    FMR+=1

    if getLen {
        return (FMR -1, FDR -1, FOR -1)
    }
    return FR
}

#let getQR(getLen: bool) = {
    let QR = ()
    let QMR = 1
    let QDR = 1
    let QOR = 1

    QR.push(("QMR" + str(QMR),
        [Documentare nella specifica tecnica le criticità e i limiti delle soluzioni individuate.],
        [Capitolato],
    ))
    QMR+=1

    QR.push(("QMR" + str(QMR),
        [Documentare nel #glossario[piano di qualifica] i bug presenti.],
        [Capitolato],
    ))
    QMR+=1

    QR.push(("QMR" + str(QMR),
        [Fornire il codice sorgente del prodotto attraverso un sistema di versionamento.],
        [Capitolato],
    ))
    QMR+=1

    QR.push(("QMR" + str(QMR),
        [Documentare nel piano di qualifica la copertura dei #glossario[test di unità] (almeno il 70% del codice prodotto).],
        [Capitolato],
    ))
    QMR+=1

    QR.push(("QMR" + str(QMR),
        [Documentare nell'#glossario[analisi dei requisiti] i casi d'uso.],
        [Capitolato],
    ))
    QMR+=1

    QR.push(("QMR" + str(QMR),
        [Documentare nella specifica tecnica le classi attraverso #glossario[diagrammi UML].],
        [Capitolato],
    ))
    QMR+=1

    QR.push(("QMR" + str(QMR),
        [La documentazione deve rispettare le metriche descritte nel piano di qualifica.],
        [Piano di qualifica],
    ))
    QMR+=1

    QR.push(("QDR" + str(QDR),
        [Le #glossario[API] devono essere documentate attraverso #glossario[Swagger].],
        [Formazione col proponente],
    ))
    QDR+=1

    QR.push(("QDR" + str(QDR),
        [Il codice #glossario[TypeScript] deve essere formattato secondo le regole #glossario[ESLint] descritte nelle norme di progetto.],
        [Decisione interna, Formazione col proponente],
    ))
    QDR+=1

    if getLen {
        return (QMR -1, QDR -1, QOR -1)
    }
    return QR
}


#let getCR(getLen: bool) = {
    let CR = ()
    let CMR = 1
    let CDR = 1
    let COR = 1

    CR.push(("CDR" + str(CDR),
        [Il prodotto deve essere sviluppato in container #glossario[Docker], facilitando così il rilascio su vari ambienti cloud (ad esempio #glossario[AWS]).],
        [Capitolato, Riunione col proponente],
    ))
    CDR+=1

    CR.push(("CMR" + str(CMR),
        [Le parti del sistema devono comunicare tra di loro attraverso #glossario[API] che usano il protocollo HTTP contenenti oggetti in formato JSON.],
        [Decisione interna],
    ))
    CMR+=1

    CR.push(("CMR" + str(CMR),
        [Il prodotto deve funzionare correttamente su Firefox 128 ESR o versioni successive.],
        [Decisione interna],
    ))
    CMR+=1

    CR.push(("CMR" + str(CMR),
        [Il prodotto deve funzionare correttamente sull'ultima versione stable di Chromium.],
        [Decisione interna],
    ))
    CMR+=1

    if getLen {
        return (CMR -1, CDR -1, COR -1)
    }
    return CR

}