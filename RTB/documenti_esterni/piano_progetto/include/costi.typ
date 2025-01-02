#import "/template/template.typ": glossario,team,tabellaSprint,textCellColorConsuntivo,calcolaBilancio,pieChartSprint

#let getSprintCostsSection(
    sprint_number: int,
) = {
    let bilancioConsuntivo = 12975
    let bilancioPreventivo = 12975

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
    vallotto_preventivo.push(  (0, 7, 0, 0, 0, 1) ) 
    // Per calcolare il bilancio allo sprint n devo calcolare i bilanci precendenti
    for i in range(0, sprint_number) {

        let bressan   = bressan_preventivo.at(i)
        let corradin  = corradin_preventivo.at(i)
        let lazzarin  = lazzarin_preventivo.at(i)
        let salviato  = salviato_preventivo.at(i)
        let squarzoni = squarzoni_preventivo.at(i)
        let tutino    = tutino_preventivo.at(i)
        let vallotto  = vallotto_preventivo.at(i)
        bilancioPreventivo = calcolaBilancio(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo)

        if bressan_consuntivo.len() >= i + 1 {
            let bressan   = bressan_consuntivo.at(i)
            let corradin  = corradin_consuntivo.at(i)
            let lazzarin  = lazzarin_consuntivo.at(i)
            let salviato  = salviato_consuntivo.at(i)
            let squarzoni = squarzoni_consuntivo.at(i)
            let tutino    = tutino_consuntivo.at(i)
            let vallotto  = vallotto_consuntivo.at(i)
            bilancioConsuntivo = calcolaBilancio(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo)
        }
    }

    let preventivo = (bressan: bressan_preventivo.at(sprint_number - 1),
        corradin: corradin_preventivo.at(sprint_number - 1),
        lazzarin: lazzarin_preventivo.at(sprint_number - 1),
        salviato: salviato_preventivo.at(sprint_number - 1),
        squarzoni: squarzoni_preventivo.at(sprint_number - 1),
        tutino: tutino_preventivo.at(sprint_number - 1),
        vallotto: vallotto_preventivo.at(sprint_number - 1),
        bilancioPreventivo: bilancioPreventivo)

    let consuntivo = none

    if bressan_consuntivo.len() >= sprint_number {
        consuntivo = (bressan: bressan_consuntivo.at(sprint_number - 1),
            corradin: corradin_consuntivo.at(sprint_number - 1),
            lazzarin: lazzarin_consuntivo.at(sprint_number - 1),
            salviato: salviato_consuntivo.at(sprint_number - 1),
            squarzoni: squarzoni_consuntivo.at(sprint_number - 1),
            tutino: tutino_consuntivo.at(sprint_number - 1),
            vallotto: vallotto_consuntivo.at(sprint_number - 1),
            bilancioConsuntivo: bilancioConsuntivo)
    }

    return (preventivo,consuntivo)
}