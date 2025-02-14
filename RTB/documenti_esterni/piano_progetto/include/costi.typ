#import "/template/template.typ": glossario,team,tabellaSprint,textCellColorConsuntivo,calcolaBilancio,pieChartSprint

#let getSprintData() = {
    // Sprint 1
    let bressan_preventivo   = ((0, 0, 0, 0, 0, 3),)
    let corradin_preventivo  = ((0, 0, 3, 0, 0, 0),)
    let lazzarin_preventivo  = ((0, 4, 0, 0, 0, 0),)
    let salviato_preventivo  = ((0, 0, 4, 0, 0, 0),)
    let squarzoni_preventivo = ((3, 0, 0, 0, 0, 0),)
    let tutino_preventivo    = ((0, 0, 4, 0, 0, 0),)
    let vallotto_preventivo  = ((0, 0, 0, 0, 0, 3),)

    let bressan_consuntivo   = ((0, 0, 0, 0, 0, "4 (+1)"),)
    let corradin_consuntivo  = ((0, 0, 3, 0, 0, 0),)
    let lazzarin_consuntivo  = ((0, "5 (+1)", 0, 0, 0, 0),)
    let salviato_consuntivo  = ((0, 0, "2 (-2)", 0, 0, 0),)
    let squarzoni_consuntivo = (("4 (+1)", "1 (+1)", 0, 0, 0, "1 (+1)"),)
    let tutino_consuntivo    = ((0, "2 (+2)", "3 (-1)", 0, 0, 0),)
    let vallotto_consuntivo  = ((0, 0, 0, 0, 0, "5 (+2)"),)

    // Sprint 2
    bressan_preventivo.push(   (0, 0, 6, 0, 0, 1) )
    corradin_preventivo.push(  (0, 0, 0, 0, 0, 8) )
    lazzarin_preventivo.push(  (0, 0, 0, 0, 7, 0) )
    salviato_preventivo.push(  (0, 0, 0, 0, 0, 8) )
    squarzoni_preventivo.push( (0, 0, 6, 0, 0, 1) )
    tutino_preventivo.push(    (3, 2, 0, 0, 2, 0) )
    vallotto_preventivo.push(  (0, 8, 0, 0, 0, 0) )

    bressan_consuntivo.push(   (0, 0, 6, 0, 0, "0 (-1)") )
    corradin_consuntivo.push(  (0, 0, 0, 0, 0, "10 (+2)") )
    lazzarin_consuntivo.push(  (0, 0, 0, 0, 7, 0) )
    salviato_consuntivo.push(  (0, 0, 0, 0, 0, "11 (+3)") )
    squarzoni_consuntivo.push( (0, 0, "7 (+1)", 0, 0, "0 (-1)") )
    tutino_consuntivo.push(    (3, 2, 0, 0, "4 (+2)", 0) )
    vallotto_consuntivo.push(  (0, "10 (+2)", 0, 0, 0, 0) )

    //sprint 3
    bressan_preventivo.push(   (3, 0, 4, 0, 0, 0) )
    corradin_preventivo.push(  (0, 8, 0, 0, 0, 0) )
    lazzarin_preventivo.push(  (0, 0, 0, 0, 7, 0) )
    salviato_preventivo.push(  (0, 0, 0, 0, 0, 8) )
    squarzoni_preventivo.push( (0, 0, 0, 0, 0, 8) )
    tutino_preventivo.push(    (0, 0, 0, 0, 7, 0) )
    vallotto_preventivo.push(  (0, 0, 7, 0, 0, 1) ) 

    bressan_consuntivo.push(   (3, 0, 4, 0, 0, 0) )
    corradin_consuntivo.push(  (0, 8, 0, 0, 0, 0) )
    lazzarin_consuntivo.push(  (0, 0, 0, 0, "6 (-1)", 0) )
    salviato_consuntivo.push(  (0, 0, 0, 0, 0, "7 (-1)") )
    squarzoni_consuntivo.push( (0, 0, 0, 0, 0, "7 (-1)") )
    tutino_consuntivo.push(    (0, 0, 0, 0, "6 (-1)", 0) )
    vallotto_consuntivo.push(  (0, "1 (+1)", 7, 0, 0, "0 (-1)") )

    // Sprint 4
    bressan_preventivo.push(   (0, 5, 0, 0, 0, 0) )
    corradin_preventivo.push(  (2, 0, 2, 0, 0, 0) )
    lazzarin_preventivo.push(  (0, 0, 4, 0, 0, 0) )
    salviato_preventivo.push(  (0, 5, 0, 0, 0, 0) )
    squarzoni_preventivo.push( (0, 5, 0, 0, 0, 0) )
    tutino_preventivo.push(    (0, 0, 0, 0, 0, 5) )
    vallotto_preventivo.push(  (0, 0, 0, 0, 0, 5) )

    bressan_consuntivo.push(   (0, 5, 0, 0, 0, 0) )
    corradin_consuntivo.push(  (2, 0, 2, 0, 0, 0) )
    lazzarin_consuntivo.push(  (0, 0, "5 (+1)", 0, 0, 0) )
    salviato_consuntivo.push(  (0, 5, 0, 0, 0, 0) )
    squarzoni_consuntivo.push( (0, 5, 0, 0, 0, 0) )
    tutino_consuntivo.push(    (0, 0, 0, 0, 0, 5) )
    vallotto_consuntivo.push(  (0, 0, 0, 0, 0, 5) )

    //Sprint 5
    bressan_preventivo.push(   (0, 8, 0, 0, 0, 3) )
    corradin_preventivo.push(  (0, 4, 5, 0, 0, 2) )
    lazzarin_preventivo.push(  (0, 0, 0, 0, 0, 15) )
    salviato_preventivo.push(  (6, 0, 0, 0, 0, 2) )
    squarzoni_preventivo.push( (0, 0, 0, 0, 0, 15) )
    tutino_preventivo.push(    (0, 13, 0, 0, 0, 0) )
    vallotto_preventivo.push(  (0, 9, 0, 0, 0, 2) )

    bressan_consuntivo.push(   (0, 8, 0, 0, 0, 3) )
    corradin_consuntivo.push(  (0, 4, 5, 0, 0, 2) )
    lazzarin_consuntivo.push(  (0, 0, 0, 0, 0, 15) )
    salviato_consuntivo.push(  (6, "2 (+2)", 0, 0, 0, "0 (-2)") )
    squarzoni_consuntivo.push( (0, 0, 0, 0, 0, 15) )
    tutino_consuntivo.push(    (0, 13, 0, 0, 0, "2 (+2)") )
    vallotto_consuntivo.push(  (0, "10 (+1)", 0, 0, 0, "3 (+1)") )


    let preventivo = (
        bressan: bressan_preventivo,
        corradin: corradin_preventivo,
        lazzarin: lazzarin_preventivo,
        salviato: salviato_preventivo,
        squarzoni: squarzoni_preventivo,
        tutino: tutino_preventivo,
        vallotto: vallotto_preventivo)

    let consuntivo = (
        bressan: bressan_consuntivo,
        corradin: corradin_consuntivo,
        lazzarin: lazzarin_consuntivo,
        salviato: salviato_consuntivo,
        squarzoni: squarzoni_consuntivo,
        tutino: tutino_consuntivo,
        vallotto: vallotto_consuntivo)

    return (preventivo, consuntivo)
}

#let getSprintNumber() = {
    let (_, consuntivo) = getSprintData()
    return consuntivo.bressan.len()
}

#let getNumber(data) = {
    if type(data) == str {
        return int(data.find(regex("\d+")))
    }
    return int(data)
}

#let getOreConsumateRuoli() = {
    let (_, consuntivo) = getSprintData()
    let sprintNumber = getSprintNumber()

    let ruoli = ()
    for i in range(0, 6) {
        let oreRuolo = 0;
        for j in range(0, sprintNumber) {
            oreRuolo += getNumber(consuntivo.bressan.at(j).at(i))
            oreRuolo += getNumber(consuntivo.corradin.at(j).at(i))
            oreRuolo += getNumber(consuntivo.lazzarin.at(j).at(i))
            oreRuolo += getNumber(consuntivo.salviato.at(j).at(i))
            oreRuolo += getNumber(consuntivo.squarzoni.at(j).at(i))
            oreRuolo += getNumber(consuntivo.tutino.at(j).at(i))
            oreRuolo += getNumber(consuntivo.vallotto.at(j).at(i))
        }
        ruoli.push(oreRuolo)
    }
    return ruoli
}

#let getSprintCostsSection(
    sprint_number: int,
) = {
    let bilancioConsuntivo = 12975
    let bilancioPreventivo = 12975

    let (preventivo, consuntivo) = getSprintData()

    // Per calcolare il bilancio allo sprint n devo calcolare i bilanci precendenti
    for i in range(0, sprint_number) {

        let bressan   = preventivo.bressan.at(i)
        let corradin  = preventivo.corradin.at(i)
        let lazzarin  = preventivo.lazzarin.at(i)
        let salviato  = preventivo.salviato.at(i)
        let squarzoni = preventivo.squarzoni.at(i)
        let tutino    = preventivo.tutino.at(i)
        let vallotto  = preventivo.vallotto.at(i)
        bilancioPreventivo = calcolaBilancio(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo)

        if consuntivo.bressan.len() >= i + 1 {
            let bressan   = consuntivo.bressan.at(i)
            let corradin  = consuntivo.corradin.at(i)
            let lazzarin  = consuntivo.lazzarin.at(i)
            let salviato  = consuntivo.salviato.at(i)
            let squarzoni = consuntivo.squarzoni.at(i)
            let tutino    = consuntivo.tutino.at(i)
            let vallotto  = consuntivo.vallotto.at(i)
            bilancioConsuntivo = calcolaBilancio(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo)
        }
    }

    preventivo.insert("bilancioPreventivo", bilancioPreventivo)
    preventivo.bressan = preventivo.bressan.at(sprint_number - 1)
    preventivo.corradin = preventivo.corradin.at(sprint_number - 1)
    preventivo.lazzarin = preventivo.lazzarin.at(sprint_number - 1)
    preventivo.salviato = preventivo.salviato.at(sprint_number - 1)
    preventivo.squarzoni = preventivo.squarzoni.at(sprint_number - 1)
    preventivo.tutino = preventivo.tutino.at(sprint_number - 1)
    preventivo.vallotto = preventivo.vallotto.at(sprint_number - 1)


    if consuntivo.bressan.len() >= sprint_number {
        consuntivo.insert("bilancioConsuntivo", bilancioConsuntivo)
        consuntivo.bressan = consuntivo.bressan.at(sprint_number - 1)
        consuntivo.corradin = consuntivo.corradin.at(sprint_number - 1)
        consuntivo.lazzarin = consuntivo.lazzarin.at(sprint_number - 1)
        consuntivo.salviato = consuntivo.salviato.at(sprint_number - 1)
        consuntivo.squarzoni = consuntivo.squarzoni.at(sprint_number - 1)
        consuntivo.tutino = consuntivo.tutino.at(sprint_number - 1)
        consuntivo.vallotto = consuntivo.vallotto.at(sprint_number - 1)
    }

    return (preventivo,consuntivo)
}
