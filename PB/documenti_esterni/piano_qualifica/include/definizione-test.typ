#import "/template/template.typ": glossario
#import "../../analisi_requisiti/include/definizione_requisiti.typ": getFRByNumber

#let getIntegrazione() = {
    let backend = ()

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *user/register*. Verificare che il backend possa ricevere i dati di un utente, registrarlo all'interno del database e ritornare i suoi dati.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *user/register*. Verificare che il backend lanci un'eccezione con http status 400 poiché lo _username_ dell'utente è già salvato nel database.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *user/login*. Verificare che il backend possa ricevere i dati di un utente, autenticarlo e ritornare la stringa contenente il token JWT.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *user/login*. Verificare che il backend lanci un'eccezione con http status 401 poiché la _password_ o lo _username _dell'utente non sono corretti.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/create*. Verificare che il backend autorizzi la richiesta, riceva il nome del _workflow_, lo crei e salvi all'interno del database e ritorni il _workflow_ creato.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/create*. Verificare che il backend lanci un'eccezione con http status 400 poiché il _workflow_ avente quel nome è già presente nel database.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/save*. Verificare che il backend autorizzi la richiesta, riceva il _workflow_ da salvare, controlli che sia valido, lo salvi all'interno del database e ritorni il _workflow_ salvato.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/save*. Verificare che il backend lanci un'eccezione con http status 412 poiché il _workflow_ da salvare non è valido.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/get*. Verificare che il backend autorizzi la richiesta, riceva il nome del _workflow_ da ottenere, lo recuperi dal database e lo ritorni.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/get*. Verificare che il backend lanci un'eccezione con http status 404 poiché il _workflow_ avente quel nome non è presente nel database.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/all*. Verificare che il backend autorizzi la richiesta, recuperi tutti i _workflow_ dell'utente dal database e ritorni una lista con i loro nomi.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/execute*. Verificare che il backend autorizzi la richiesta, riceva il _workflow_ da eseguire, controlli che sia valido, invii la richiesta all'agente e ritorni il risultato.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/execute*. Verificare che il backend lanci un'eccezione con http status 412 poiché il _workflow_ da eseguire non è valido.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/delete*. Verificare che il backend autorizzi la richiesta, riceva il nome del _workflow_ da eliminare, lo elimini dal database e ritorni il _workflow_ eliminato.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/delete*. Verificare che il backend lanci un'eccezione con http status 404 poiché il _workflow_ avente quel nome non è presente nel database.],
        [S],
    ))

    return backend
}

#let getSistema() = {
    let sistema = ()

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa effettuare il login interno.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire il proprio username per effettuare il login interno.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire la propria password per effettuare il login interno.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato riceva un messaggio di errore in caso abbia inserito credenziali errate per il login interno.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa effettuare il login con Google.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa effettuare il logout.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa registrarsi.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire lo username per la registrazione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire la password per la registrazione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire nuovamente la password per la registrazione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato riceva un messaggio di
        errore in caso abbia inserito credenziali non valide per la
        registrazione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa associare un account
        Google da utilizzare per i servizi offerti dai blocchi dei
        workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato riceva un messaggio in caso di
        errore nell’associazione dell’account Google per i servizi
        offerti dai blocchi del workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa scollegare l’account
        Google precedentemente collegato.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare la lista dei
        workflow creati.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, visualizzando la lista dei workflow,
        possa visualizzare il nome di ciascun workflow sotto
        forma di link.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, visualizzando la lista dei workflow,
        possa visualizzare per ogni workflow nella lista
        un’opzione per eliminarlo.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa creare un nuovo workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa inserire il nome del
        workflow che sta creando.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un avviso che
        indica la non univocità del nome del workflow inserito
        durante la sua creazione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un avviso che
        indica la non validità del nome del workflow inserito
        durante la sua creazione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare quali blocchi
        (servizi) sono stati configurati.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, visualizzando i blocchi configurati, possa visualizzare il nome di ogni blocco.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, visualizzando i blocchi configurati, possa visualizzare un’opzione per ottenere
        informazioni sul servizio associato al blocco.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato riceva un avviso in caso non
        abbia collegato nessun servizio associato ai blocchi.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare una breve
        descrizione relativa al blocco Gmail.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare le funzioni
        offerte dal blocco Gmail.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

        sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare una breve
        descrizione relativa al blocco Pastebin.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare le funzioni
        offerte dal blocco Pastebin.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

        sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare una breve
        descrizione relativa al blocco Calendar.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare le funzioni
        offerte dal blocco Calendar.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa aggiungere un blocco in
        un workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, per poter aggiungere un blocco in un
        workflow, lo deve trascinare nell'area drag and drop.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa eliminare un blocco in un
        workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa collegare due blocchi in
        un workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa scollegare due blocchi in
        un workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa inserire una descrizione
        dell'automazione in linguaggio naturale tra due blocchi
        collegati.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare la struttura
        del workflow],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare ogni blocco
        presente nel workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare il nome del
        servizio di ogni blocco presente nel workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare gli archi che
        collegano i blocchi presenti nel workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare la descrizione
        di ogni arco presente nel workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa salvare un workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un messaggio di avviso che
        informa del fallimento nel salvataggio del workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa cancellare un workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un messaggio di avviso che
        informa del fallimento nell'eliminazione del workflow],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa mandare in esecuzione un workflow],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, dopo aver mandato in esecuzione un
        workflow con una struttura non valida, visualizzi un
        messaggio d'errore.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un messaggio che lo
        informa di un errore runtime nell'esecuzione del
        workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare il risultato
        dell’esecuzione del workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare, all’interno
        del risultato del workflow, i passi dell’esecuzione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare, all’interno
        del risultato del workflow, i link delle risorse generate.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il frontend possa inviare l'insieme dei blocchi del workflow al backend.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il frontend possa inviare l'insieme degli archi del workflow al backend.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il frontend possa inviare l'insieme delle automazioni del workflow al backend.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il backend possa inviare l'insieme dei blocchi ordinati del workflow all'agente.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il backend possa inviare l'insieme delle automazioni del workflow all'agente.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il backend possa inviare l'insieme dei token di autorizzazione necessari all'agente.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    return sistema
}


// test accettazione
#let getAccettazione() = {
    let accettazione = ()

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il prodotto sia un webapp.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il sistema utilizzi un agente AI.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il sistema offra almeno 3 blocchi di automazione.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che l'interfaccia del prodotto sia drag and drop.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il sistema possa ricevere i dati del workflow.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il sistema possa eseguire delle automazioni.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che le automazioni eseguite dal sistema facciano delle chiamate API ai servizi finali.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il sistema comprenda dei blocchi che offrono delle funzionalità attraverso delle chiamate API.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che, data in input dall'utente l'automazione in linguaggio naturale, il sistema la esegua in autonomia.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che gli utenti possano disegnare un workflow.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che l'utente possa esprimere in linguaggio naturale la logica funzionale desiderata per ogni step del processo.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che l'utente possa eseguire operazioni CRUD sui workflow.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che l'agente sia implementato in Python.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il database sia implementato in MongoDB.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il frontend sia implementato in React.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il backend sia implementato in NestJS.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il backend utilizzi il linguaggio TypeScript.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che sia utilizzato NodeJS come runtime JavaScript.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che le componenti del prodotto comunichino tramite API Restful JSON.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che le API siano documentate attraverso Swagger.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che le componenti del prodotto siano sviluppate in container Docker.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il 70% del codice sorgente sia coperto da test di unità.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il codice sorgente sia gestito utilizzando sistemi di versionamento e repository online.],
        [NI],
    ))


    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il team abbia documentato le criticità, i limiti del prodotto e i bug rilevati.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il team abbia documentato i casi d'uso.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il team abbia documentato le classi attraverso diagrammi UML.],
        [NI],
    ))


    return accettazione
}
