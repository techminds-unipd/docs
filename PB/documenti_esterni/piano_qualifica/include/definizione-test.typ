#import "/template/template.typ": glossario
#import "../../analisi_requisiti/include/definizione_requisiti.typ": getFRByNumber

#let getSistema() = {
    let sistema = ()

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa effettuare il login interno.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire il proprio username per effettuare il login interno.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire la propria password per effettuare il login interno.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato riceva un messaggio di errore in caso abbia inserito credenziali errate per il login interno.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa effettuare il login con Google.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa effettuare il logout.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa registrarsi.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire lo username per la registrazione.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire la password per la registrazione.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire nuovamente la password per la registrazione.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato riceva un messaggio di
        errore in caso abbia inserito credenziali non valide per la
        registrazione.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa associare un account
        Google da utilizzare per i servizi offerti dai blocchi dei
        workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato riceva un messaggio in caso di
        errore nell’associazione dell’account Google per i servizi
        offerti dai blocchi del workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa scollegare l’account
        Google precedentemente collegato.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare la lista dei
        workflow creati.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, visualizzando la lista dei workflow,
        possa visualizzare il nome di ciascun workflow sotto
        forma di link.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, visualizzando la lista dei workflow,
        possa visualizzare per ogni workflow nella lista
        un’opzione per eliminarlo.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa creare un nuovo workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa inserire il nome del
        workflow che sta creando.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un avviso che
        indica la non univocità del nome del workflow inserito
        durante la sua creazione.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un avviso che
        indica la non validità del nome del workflow inserito
        durante la sua creazione.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare quali blocchi
        (servizi) sono stati configurati.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, visualizzando i blocchi configurati, possa visualizzare il nome di ogni blocco.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, visualizzando i blocchi configurati, possa visualizzare un’opzione per ottenere
        informazioni sul servizio associato al blocco.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato riceva un avviso in caso non
        abbia collegato nessun servizio associato ai blocchi.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare una breve
        descrizione relativa al blocco Gmail.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare le funzioni
        offerte dal blocco Gmail.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

        sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare una breve
        descrizione relativa al blocco Pastebin.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare le funzioni
        offerte dal blocco Pastebin.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

        sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare una breve
        descrizione relativa al blocco Calendar.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare le funzioni
        offerte dal blocco Calendar.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa aggiungere un blocco in
        un workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, per poter aggiungere un blocco in un
        workflow, lo deve trascinare nell'area drag and drop.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa eliminare un blocco in un
        workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa collegare due blocchi in
        un workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa scollegare due blocchi in
        un workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa inserire una descrizione
        dell'automazione in linguaggio naturale tra due blocchi
        collegati.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare la struttura
        del workflow],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare ogni blocco
        presente nel workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare il nome del
        servizio di ogni blocco presente nel workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare gli archi che
        collegano i blocchi presenti nel workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare la descrizione
        di ogni arco presente nel workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa salvare un workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un messaggio di avviso che
        informa del fallimento nel salvataggio del workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa cancellare un workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un messaggio di avviso che
        informa del fallimento nell'eliminazione del workflow],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa mandare in esecuzione un workflow],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, dopo aver mandato in esecuzione un
        workflow con una struttura non valida, visualizzi un
        messaggio d'errore.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un messaggio che lo
        informa di un errore runtime nell'esecuzione del
        workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare il risultato
        dell’esecuzione del workflow.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare, all’interno
        del risultato del workflow, i passi dell’esecuzione.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare, all’interno
        del risultato del workflow, i link delle risorse generate.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il frontend possa inviare la lista dei blocchi del
        workflow al backend.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il frontend possa inviare la lista degli archi del
        workflow al backend.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il frontend possa inviare la lista delle automazioni del
        workflow al backend.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il backend possa inviare la lista dei blocchi del workflow all'agente.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il backend possa inviare la lista degli archi del workflow all'agente.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il backend possa inviare la lista delle automazioni del workflow all'agente.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il backend possa inviare i token di autorizzazione necessari all'agente.],
        (..getFRByNumber(sistema.len()+1)),
        [NI],
    ))

    return sistema
}
