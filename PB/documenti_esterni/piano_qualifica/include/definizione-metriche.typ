#import "/template/template.typ": glossario

// WARNING: aggiungere le nuove metriche con il push solo alla fine. Altrimenti potrebbe cambiare l'ordine degli indici e nel cruscotto viene fuori un macello.
// Se si rimuovono delle metriche bisogna controllare i codici all'interno del cruscotto.
#let MPROC = ()

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [#glossario[Earned Value] (EV)],
            [Misura il valore del lavoro effettivamente completato in un dato momento],
            [Earned Value = Budget at Completion \* Percentuale di lavoro completato],
            [\u{2A7E}0],
            [\u{2264} EAC],
            "fornitura"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [#glossario[Actual Cost] (AC)],
            [Misura i costi effettivamente sostenuti per svolgere le attività completate],
            [Actual Cost = Costo sostenuto in euro],
            [\u{2A7E}0],
            [\u{2264} EAC],
            "fornitura"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [#glossario[Planned Value] (PV)],
            [Misura il valore del lavoro che doveva essere completato in un determinato momento secondo il piano di progetto],
            [Planned Value = Budget at Completion \* Percentuale di lavoro pianificato],
            [\u{2A7E}0],
            [\u{2264} BAC],
            "fornitura"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [#glossario[Cost Variance] (CV)],
            [Misura la differenza tra il valore e il costo del lavoro completato. Indica se il progetto è sotto o sopra il budget pianificato per il lavoro completato],
            [Cost Variance = Earned Value - Actual Cost],
            [\u{2A7E}0],
            [\u{2A7E}0],
            "fornitura"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [#glossario[Schedule Variance] (SV)],
            [Misura il valore del lavoro completato rispetto a quanto pianificato. Indica se il progetto è in anticipo, in ritardo o in linea rispetto alla pianificazione],
            [Schedule Variance = Earned Value - Planned Value],
            [\u{2A7E}0],
            [\u{2A7E}0],
            "fornitura"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [#glossario[Cost Performance Index] (CPI)],
            [Valuta l'efficienza dei costi di un progetto fino a un determinato momento mettendo in relazione il valore prodotto e i costi sostenuti. #linebreak()Se CPI = 1 il 
            progetto è costato esattamente quanto pianificato; se CPI < 1 il costo del lavoro svolto è superiore a quanto pianificato; se CPI > 1 il costo del progetto è 
            sotto al budget pianificato],
            [Cost Perfomance Index = Earned Value / Actual Cost],
            [\u{2A7E}1],
            [\u{2A7E}1],
            "fornitura"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [#glossario[Estimate at completion] (EAC)],
            [Stima il costo totale del progetto sulla base delle performance attuali],
            [Estimate At Completion = Budget At Completion / Cost Performance Index],
            [preventivato \u{00B1}5%],
            [\u{003D} preventivato],
            "fornitura"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [#glossario[Estimate to complete] (ETC)],
            [Stima il costo rimanente necessario per completare il progetto],
            [Estimate to complete = Estimate At Completion - Actual Cost],
            [\u{2A7E}0],
            [\u{2264} EAC],
            "fornitura"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [#glossario[Schedule Performance Index] (SPI)],
            [Misura l’efficienza del progetto mettendo in relazione il lavoro completato con quello pianificato.#linebreak()Se SPI = 1 il lavoro completato corrisponde con quello pianificato;
             se SPI < 1 il progetto è in ritardo rispetto alla pianificazione; se SPI > 1 il progetto è in anticipo rispetto a quanto pianificato],
            [Schedule Performance Index = Earned Value / Planned Value],
            [\u{2A7E}1],
            [\u{2A7E}1],
            "fornitura"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [#glossario[Requirements Stability Index] (RSI)],
            [Misura la stabilità dei requisiti durante il ciclo di vita. Indica quanto frequentemente cambiano i requisiti. Più RSI è vicino a 1, più i requisiti sono stabili],
            [$"Requirements Stability Index" &= 1 - ("NRA"+"NRM"+"NRC")/"NRI" * 100$, dove: #list(..("NRA: numero di requisiti aggiunti;", "NRM: numero di requisiti modificati;", "NRC: numero di requisiti cancellati;"), spacing: 12pt)#box(list("NRI: numero di requisiti iniziali"))],
            [\u{2A7E}80%],
            [100%],
            "sviluppo"))


#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [#glossario[Indice di Gulpease]],
            [Misura la leggibilità di un testo in base alla lunghezza delle parole e delle frasi. #linebreak()I documenti con un indice inferiore a 80 sono difficili da comprendere per chi ha la licenza elementare; 
            quelli con un indice inferiore a 60 sono difficili da comprendere per chi ha la licenzia media; quelli con un indice inferiore a 40 sono difficili da comprendere per chi ha un diploma superiore],
            [$"Indice di Gulpease" &= 89 - "Numero di lettere"/"Numero di parole" *10 +"Numero di frasi"/"Numero di parole"*300$],
            [40],
            [70],
            "documentazione"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [Caption in tabelle e figure],
            [Indica quante figure e tabelle hanno un titolo descrittivo associato],
            [$"Caption in tabelle e figure" &= "TFC"/"TF"$, dove: #list("TFC: numero di tabelle e figure con caption nel documento", spacing: 12pt)#box(list("TF: numero totale di tabelle e figure nel documento"))],
            [100%],
            [100%],
            "documentazione"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [Code Coverage],
            [Misura la percentuale di righe di codice coperte dai test],
            [$"Code Coverage" &= "Numero di linee di codice testate"/"Numero di linee di codice totali" * 100$],
            [\u{2A7E}75%],
            [100%],
            "verifica"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [Test superati],
            [Misura la percentuale di test superati],
            [$"Test superati" &= "Numero di test passati"/"Numero di test totali" * 100$],
            [\u{2A7E}90%],
            [100%],
            "verifica"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [Rischi non previsti],
            [Misura la quantità di rischi non previsti, che hanno causato problemi durante lo svolgimento del progetto],
            [Rischi non previsti = Numero di rischi non previsti nel periodo in esame],
            [\u{2A7D}4],
            [0],
            "gestione rischi"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [Metriche accettabili],
            [Misura la percentuale di metriche che hanno raggiunto il valore accettabile],
            [$"Metriche accettabili" &= "Numero di metriche soddisfatte" / "Numero di metriche" * 100$],
            [\u{2A7E}90%],
            [100%],
            "gestione qualità"))

#MPROC.push(  ("MPROC" + str(MPROC.len()+1),
            [Metriche ottimali],
            [Misura la percentuale di metriche che hanno raggiunto il valore ottimale],
            [$"Metriche accettabili" &= "Numero di metriche soddisfatte all'ottimo" / "Numero di metriche" * 100$],
            [\u{2A7E}30%],
            [100%],
            "gestione qualità"))

//Restituisce tutte le metriche di processo
#let getAllMPROC() = {
    return MPROC.map((x) => x.slice(0, 6))
}

//Restituisce la metrica di processo con il numero specificato
#let getMPROCByNumber(number) = {
    return MPROC.at(number - 1).slice(0, 6)
}

//Restituisce le metriche di processo relative al processo specificato
//Se description è true, restituisce anche la descrizione della metrica
// Se boundaries è true, restituisce anche i valori accettabili e ottimali
#let getMPROCByProcess(process, description, formula, boundaries) = {
    let res = ();
    for m in MPROC{
        if(m.at(6) == lower(process)){
            let e = ()
            e.push(m.slice(0, 2))
            if(description){
                e.push(m.slice(2, 3))
            }
            if(formula){
                e.push(m.slice(3, 4))
            }
            if(boundaries){
                e.push(m.slice(4, 6))
            }
            res.push(e)
        }
    }
    return res;
}

#let MPROD = ()

#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
            [Requisiti obbligatori soddisfatti],
            [Metrica che valuta quanto del lavoro svolto durante lo sviluppo corrisponda ai requisiti essenziali o obbligatori definiti in fase di analisi dei requisiti],
            [$"Requisiti obbligatori soddisfatti" &= "Numero di requisiti obbligatori soddisfatti"/"Numero di requisiti totali"*100$],
            [100%],
            [100%],
            "funzionalità"))

#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
            [Requisiti desiderabili soddisfatti],
            [Metrica usata per valutare quanti requisiti opzionali, che potrebbero migliorare l'esperienza dell'utente o offrire vantaggi aggiuntivi non strettamente necessari, sono stati effettivamente implementati nel prodotto],
            [$"Requisiti desiderabili soddisfatti" &= "Numero di requisiti desiderabili soddisfatti"/"Numero di requisiti totali"*100$],
            [\u{2A7E}0%],
            [100%],
            "funzionalità"))

#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
            [Percentuale di requisiti opzionali soddisfatti],
            [Metrica per valutare quanti dei requisiti aggiuntivi, non essenziali o
            di bassa priorità, sono stati implementati o soddisfatti nel prodotto],
            [$"Requisiti opzionali soddisfatti" &= "Numero di requisiti opzionali soddisfatti"/"Numero di requisiti totali"*100$],
            [\u{2A7E}0%],
            [100%],
            "funzionalità"))

#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
            [Accoppiamento tra classi],
            [Misura della dipendenza e dell’interconnessione tra le classi all’interno di un sistema software],
            [$"Accoppiamento tra classi" &= "Numero di dipendenze"/"Numero di componenti"$],
            [\u{2A7D}9],
            [\u{2A7D}6],
            "manutenibilità"))

#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
            [Complessità ciclomatica per metodo],
            [Rappresenta la complessità di un metodo in base ai percorsi possibili],
            [$"Complessità ciclomatica" &= "A - N + P"$, dove: #list(..("A: numero di archi nel grafo;", "N: numero di nodi nel grafo;", "P: numero di componenti connesse nel grafo"), spacing: 12pt)#box(list("NRI: numero di requisiti iniziali"))],
            [\u{2A7D}7],
            [\u{2A7D}5],
            "manutenibilità"))

#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
            [Parametri per metodo],
            [Numero massimo di parametri per metodo],
            [Numero di parametri di un metodo],
            [\u{2A7D}6],
            [\u{2A7D}5],
            "manutenibilità"))

#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
            [Linee di codice per metodo],
            [Numero massimo di linee di codice per metodo],
            [Numero di linee di codice di un metodo],
            [\u{2A7D}30],
            [\u{2A7D}20],
            "manutenibilità"))

#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
            [Attributi per classe],
            [Numero massimo di attributi per classe],
            [Attributi per classe = Numero di attributi di una classe],
            [\u{2A7D}4],
            [\u{2A7D}3],
            "manutenibilità"))

#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
            [Profondità della gerarchie],
            [Metrica che misura il numero di livelli tra una classe base (superclasse) e le sue sottoclassi (classi derivate)],
            [$"Profondità della gerarchia" &= max("livelli tra una classe e la sua radice nella gerarchia")$],
            [\u{2A7D}5],
            [\u{2A7D}3],
            "manutenibilità"))

#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
            [Tempo medio di esecuzione di un workflow],
            [Misura il tempo medio di esecuzione di un workflow],
            [$"Tempo medio di esecuzione" &= 1/"N" sum_(i = 1)^N T_i$, dove: #list("N: numero di esecuzioni;", spacing: 12pt)#box(list($T_i$ + ": tempo dell'esecuzione i-esima"))],
            [\u{2A7D}20 secondi (tempo timeout)],
            [\u{2A7D}10 secondi],
            "efficienza"))

#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
            [Click per utilizzare una funzionalità],
            [Metrica che misura il numero di click minimi necessari per poter utilizzare una funzionalità],
            [Click per utilizzare una funzionalità = Numero di click necessari per l'uso di una funzionalità],
            [⩽7 click],
            [⩽5 click],
            "usabilità"))

//#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
//            [Numero di messaggi di errore],
//            [Metrica che misura il numero di messaggi di errore che può mostrare il prodotto],
//            ["Formula"],
//            [⩽7 ],
//            [⩽5 click]))


#MPROD.push(  ("MPROD" + str(MPROD.len()+1),
            [Versioni dei browser supportate],
            [Calcola la percentuale di versioni di browser compatibili rispetto al totale disponibile sul mercato],
            [$"Versioni dei browser supportate" &= ("SC" + "SF") / 2 * 100$, dove: #list("SC: funzionamento corretto su Chrome (ultima versione stable di Chromium 133);", spacing: 12pt)#box(list("SF: funzionamento corretto con Firefox 128 ESR"))],
            [⩾75%],
            [100%],
            "portabilità"))

//Restituisce tutte le metriche di prodotto
#let getAllMPROD() = {
    return MPROD.map((x) => x.slice(0, 6))
}

//Restituisce la metrica di prodotto con il numero specificato
#let getMPRODByNumber(number) = {
    return MPROD.at(number - 1).slice(0, 6)
}

//Restituisce le metriche di prodotto relative alla caratteristica specificata
//Se description è true, restituisce anche la descrizione della metrica
// Se boundaries è true, restituisce anche i valori accettabili e ottimali
#let getMPRODByCharcteristic(characteristic, formula,description, boundaries) = {
    let res = ();
    for m in MPROD{
        if(m.at(6) == lower(characteristic)){
            let e = ()
            e.push(m.slice(0, 2))
            if(description){
                e.push(m.slice(2, 3))
            }
            if(formula){
                e.push(m.slice(3, 4))
            }
            if(boundaries){
                e.push(m.slice(4, 6))
            }
            res.push(e)
        }
    }
    return res;
}
