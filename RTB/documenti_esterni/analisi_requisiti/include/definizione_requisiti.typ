#import "/template/template.typ": glossario

#let getFR(number) = {
    let FR = ()
    let FMR = 1
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
        [Capitolato,
            Riunione col proponente],
    ))
    FMR+=1

    FR.push(("FMR" + str(FMR),
        [Il sistema deve interfacciarsi con i servizi di Pastebin.],
        [Capitolato,
            Riunione col proponente]
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

    return FR.at(number - 1)
}
