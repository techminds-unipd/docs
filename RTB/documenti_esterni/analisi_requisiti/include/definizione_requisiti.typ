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
        [L'utente deve poter effettuare il login.],
        [@login, @login-interno, @inserimento-username, @inserimento-password, @credenziali-errate],
    ))
    FMR+=1

    FR.push(("FOR" + str(FOR),
        [L'utente deve poter fare il login con Google.],
        [@login-google],
    ))
    FOR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter fare il logout.],
        [@logout],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente deve potersi registrare.],
        [@registrazione, @creazione-username, @inserimento-email, @creazione-password, @conferma-password, @errore-registrazione],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter associare un account Google da utilizzare per i servizi offerti dai blocchi dei workflow.],
        [@aggiunta-account-google-associato, @errore-comunicazione-google],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter scollegare l'account Google precedentemente collegato.],
        [@rimozione-account-google-associato],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare i workflow creati.],
        [@visualizzazione-lista-workflow, @visualizzazione-singolo-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter creare un nuovo workflow.],
        [@creazione-nuovo-workflow, @inserimento-nome-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare quali blocchi (servizi) sono stati configurati.],
        [@visualizzazione-lista-blocchi-configurati, @visualizzazione-singolo-blocco-configurato, @avviso-servizi-non-collegati],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare le informazioni relative al blocco Gmail.],
        [@funzionalità-blocco, @funzionalità-blocco-gmail],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare le informazioni relative al blocco Pastebin.],
        [@funzionalità-blocco, @funzionalità-blocco-pastebin],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare le informazioni relative al blocco Calendar.],
        [@funzionalità-blocco, @funzionalità-blocco-calendar],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter aggiungere un blocco in un workflow.],
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
        [L'utente autenticato deve poter inserire una descrizione dell'automazione tra due blocchi collegati.],
        [Capitolato,
            @inserimento-descrizione],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter visualizzare la struttura del workflow.],
        [@visualizzazione-struttura-workflow, @visualizzazione-blocco-workflow, @visualizzazione-arco-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter salvare un workflow.],
        [@salvataggio-workflow, @vis-errore-operazione-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter cancellare un workflow.],
        [@eliminazione-workflow,
            @vis-errore-operazione-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter mandare in esecuzione un workflow.],
        [@esecuzione-workflow, @vis-errore-struttura-workflow, @vis-errore-runtime],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [L'utente autenticato deve poter vedere il risultato dell'esecuzione del workflow.],
        [@vis-risultato-esecuzione-workflow],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il frontend deve poter inviare i dati del workflow al backend.],
        [@invio-dati-frontend-backend],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il backend deve poter inviare i dati del workflow all'agente.],
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
        [Piano di qualifica §2.2],
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