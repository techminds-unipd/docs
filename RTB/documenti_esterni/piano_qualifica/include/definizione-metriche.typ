#import "/template/template.typ": glossario

#let getMPRO(number) = {
    let MPRO = ()

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [#glossario[Earned Value] (EV)],
                [Misura il valore del lavoro effettivamente completato in un dato momento.],
                [\u{2A7E}0],
                [\u{2264} EAC]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [#glossario[Actual Cost] (AC)],
                [Misura i costi effettivamente sostenuti per svolgere le attività completate.],
                [\u{2A7E}0],
                [\u{2264} EAC]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [#glossario[Planned Value] (PV)],
                [Misura il valore del lavoro che doveva essere completato in un determinato momento secondo il piano di progetto.],
                [\u{2A7E}0],
                [\u{2264} BAC]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [#glossario[Cost Variance] (CV)],
                [Misura la differenza tra il valore e il costo del lavoro completato. Indica se il progetto è sotto o sopra il budget pianificato per il lavoro completato.],
                [\u{2A7E}-10%],
                [\u{2A7E}0]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [#glossario[Schedule Variance] (SV)],
                [Misura il valore del lavoro completato rispetto a quanto pianificato. Indica se il progetto è in anticipo, in ritardo o in linea rispetto alla pianificazione.],
                [\u{2A7E}-10%],
                [\u{2A7E}0]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [#glossario[Cost Performance Index] (CPI)],
                [Valuta l'efficienza dei costi di un progetto fino a un determinato momento mettendo in relazione il valore prodotto e i costi sostenuti.],
                [\u{00B1}10%],
                [\u{00B1}0%]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [#glossario[Estimate at completion] (EAC)],
                [Stima il costo totale del progetto sulla base delle performance attuali.],
                [preventivato \u{00B1}5%],
                [\u{003D} preventivato]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [#glossario[Estimate to complete] (ETC)],
                [Stima il costo rimanente necessario per completare il progetto.],
                [\u{2A7E}0],
                [\u{2264} EAC]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [#glossario[Schedule Performance Index] (SPI)],
                [Misura l’efficienza del progetto mettendo in relazione il lavoro completato con quello pianificato.],
                [\u{00B1}10%],
                [\u{00B1}0%]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [#glossario[Requirements Stability Index] (RSI)],
                [Misura la stabilità dei requisiti durante il ciclo di vita. Indica quanto frequentemente cambiano i requisiti.],
                [\u{2A7E}80%],
                [100%]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [Rischi non previsti],
                [Misura la quantità di rischi non previsti, che hanno causato problemi durante lo svolgimento del progetto.],
                [\u{2A7D}4],
                [0]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [Code Coverage],
                [Misura la percentuale di righe di codice coperte dai test.],
                [\u{2A7E}75%],
                [100%]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [Test superati],
                [Misura la percentuale di test superati.],
                [\u{2A7E}90%],
                [100%]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [Metriche accettabili],
                [Misura la percentuale di metriche che hanno raggiunto il valore accettabile.],
                [\u{2A7E}90%],
                [100%]))

    MPRO.push(  ("MPRO" + str(MPRO.len()+1),
                [Metriche ottimali],
                [Misura la percentuale di metriche che hanno raggiunto il valore ottimale.],
                [\u{2A7E}30%],
                [100%]))

    return MPRO.at(number - 1)
}

#let getMFUN(number) = {
    let MFUN = ()

    MFUN.push(  ("MFUN" + str(MFUN.len()+1),
                [Percentuale di requisiti obbligatori soddisfatti],
                [Metrica che valuta
                quanto del lavoro svolto
                durante lo sviluppo corrisponda ai requisiti essenziali o obbligatori
                definiti in fase di analisi
                dei requisit],
                [100%],
                [100%]))

    MFUN.push(  ("MFUN" + str(MFUN.len()+1),
                [Percentuale di requisiti desiderabili soddisfatti],
                [Metrica usata per valutare quanti di quei
                requisiti, che se integrati arricchirebbero
                l’esperienza dell’utente
                o fornirebbero vantaggi
                aggiuntivi non strettamente necessari, sono
                stati implementati o
                soddisfatti nel prodotto],
                [\u{2A7E}0%],
                [100%]))

    MFUN.push(  ("MFUN" + str(MFUN.len()+1),
                [Percentuale di requisiti opzionali soddisfatti],
                [Metrica per valutare
                quanti dei requisiti aggiuntivi, non essenziali o
                di bassa priorità, sono
                stati implementati o
                soddisfatti nel prodotto],
                [\u{2A7E}0%],
                [100%]))

    return MFUN.at(number - 1)
}

#let getMAFF(number) = {
    let MAFF = ()

    MAFF.push(  ("MAFF" + str(MAFF.len()+1),
                [#glossario[Indice di Gulpease]],
                [Misura la leggibilità di
                un testo in base alla
                lunghezza delle parole
                e delle frasi],
                [40],
                [70]))

    return MAFF.at(number - 1)
}

#let getMMAN(number) = {
    let MMAN = ()

    MMAN.push(  ("MMAN" + str(MMAN.len()+1),
                [Accoppiamento tra
                classi],
                [Misura della dipendenza
                e dell’interconnessione
                tra le classi all’interno di
                un sistema software],
                [\u{2A7D}9],
                [\u{2A7D}6]))

    MMAN.push(  ("MMAN" + str(MMAN.len()+1),
                [Complessità ciclomatica
                per metodo],
                [Rappresenta la complessità di un metodo in
                base ai percorsi possibili.],
                [\u{2A7D}7],
                [\u{2A7D}5]))

    MMAN.push(  ("MMAN" + str(MMAN.len()+1),
                [Parametri per metodo],
                [Numero massimo di parametri per metodo.],
                [\u{2A7D}6],
                [\u{2A7D}5]))

    MMAN.push(  ("MMAN" + str(MMAN.len()+1),
                [Linee di codice per
                metodo],
                [Numero massimo di linee di codice per metodo.],
                [\u{2A7D}30],
                [\u{2A7D}20]))

    MMAN.push(  ("MMAN" + str(MMAN.len()+1),
                [Attributi per classe],
                [Numero massimo di attributi per classe.],
                [\u{2A7D}4],
                [\u{2A7D}3]))

    MMAN.push(  ("MMAN" + str(MMAN.len()+1),
                [Profondità della gerarchie],
                [Metrica che misura il
                numero di livelli tra una
                classe base (superclasse) e le sue sottoclassi (classi derivate)],
                [\u{2A7D}5],
                [\u{2A7D}3]))

    return MMAN.at(number - 1)
}

#let getMEFF(number) = {
    let MEFF = ()

    MEFF.push(  ("MEFF" + str(MEFF.len()+1),
                [Tempo medio di esecuizone di un workflow],
                [Misura il tempo medio di esecuzione di un workflow],
                [\u{2A7D}20 secondi (tempo timeout)],
                [\u{2A7D}10 secondi]))

    return MEFF.at(number - 1)
}

#let getMUSA(number) = {
    let MUSA = ()

    MUSA.push(  ("MUSA" + str(MUSA.len()+1),
                [Click per utilizzare una funzionalità],
                [Metrica che misura il numero di click minimo necessari per poter utilizzare una funzionalità.],
                [⩽7 click],
                [⩽5 click]))

    return MUSA.at(number - 1)
}

#let getMACC(number) = {
    let MACC = ()

    MACC.push(  ("MACC" + str(MACC.len()+1),
                [Caption in tabelle e figure],
                [Indica quante figure e tabelle hanno un titolo descrittivo associato.],
                [100%],
                [100%]))

    MACC.push(  ("MACC" + str(MACC.len()+1),
                [Livello WCAG],
                [Valuta il livello di conformità agli standard WCAG per l'accessibilità.],
                [A],
                [AA]))

    return MACC.at(number - 1)
}

#let getMPOR(number) = {
    let MPOR = ()

    MPOR.push(  ("MPOR" + str(MPOR.len()+1),
                [Versioni dei browser supportate],
                [Calcola la percentuale di versioni di browser compatibili rispetto al totale disponibile sul mercato.],
                [⩾75%],
                [100%]))

    return MPOR.at(number - 1)
}