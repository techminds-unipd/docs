#import "/template/template.typ": glossario,team,tabellaSprint,textCellColorConsuntivo,calcolaBilancio,pieChartSprint

#let getSprintCostsSection(
    sprint_number: int,
) = {
    let bilancioConsuntivo = 12975
    let bilancioPreventivo = 12975
    let numSprint = state("numSprint", 0)

    let bressan_preventivo = ()
    let corradin_preventivo = ()
    let lazzarin_preventivo = ()
    let salviato_preventivo = ()
    let squarzoni_preventivo = ()
    let tutino_preventivo = ()
    let vallotto_preventivo = ()

    let bressan_consuntivo = ()
    let corradin_consuntivo = ()
    let lazzarin_consuntivo = ()
    let salviato_consuntivo = ()
    let squarzoni_consuntivo = ()
    let tutino_consuntivo = ()
    let vallotto_consuntivo = ()

    // Sprint 1

    bressan_preventivo.push((0, 0, 0, 0, 0, 3))
    corradin_preventivo.push((0, 0, 3, 0, 0, 0))
    lazzarin_preventivo.push((0, 4, 0, 0, 0, 0))
    salviato_preventivo.push((0, 0, 4, 0, 0, 0))
    squarzoni_preventivo.push((3, 0, 0, 0, 0, 0))
    tutino_preventivo.push((0, 0, 4, 0, 0, 0))
    vallotto_preventivo.push((0, 0, 0, 0, 0, 3))

    bressan_consuntivo.push((0, 0, 0, 0, 0, "4 (+1)"))
    corradin_consuntivo.push((0, 0, 3, 0, 0, 0))
    lazzarin_consuntivo.push((0, "5 (+1)", 0, 0, 0, 0))
    salviato_consuntivo.push((0, 0, "2 (-2)", 0, 0, 0))
    squarzoni_consuntivo.push(("4 (+1)", "1 (+1)", 0, 0, 0, "1 (+1)"))
    tutino_consuntivo.push((0, "2 (+2)", "3 (-1)", 0, 0, 0))
    vallotto_consuntivo.push((0, 0, 0, 0, 0, "5 (+2)"))

    // Per dare in output le tabelle dello sprint n devo calcolare tutti i costi precendenti
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

    [===== Preventivo]

    let bressan   = bressan_preventivo.at(sprint_number - 1)
    let corradin  = corradin_preventivo.at(sprint_number - 1)
    let lazzarin  = lazzarin_preventivo.at(sprint_number - 1)
    let salviato  = salviato_preventivo.at(sprint_number - 1)
    let squarzoni = squarzoni_preventivo.at(sprint_number - 1)
    let tutino    = tutino_preventivo.at(sprint_number - 1)
    let vallotto  = vallotto_preventivo.at(sprint_number - 1)

    [#tabellaSprint(numSprint, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)]
    [<tabella-PreventivoSprint1> \ ]
    [#pieChartSprint(numSprint, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)]
    [<grafico-PreventivoSprint1> \ ]

    if bressan_consuntivo.len() >= sprint_number {
        [===== Consuntivo]
        [I numeri tra parentesi indicano le variazioni rispetto al preventivo.]

        let bressan   = bressan_consuntivo.at(sprint_number - 1)
        let corradin  = corradin_consuntivo.at(sprint_number - 1)
        let lazzarin  = lazzarin_consuntivo.at(sprint_number - 1)
        let salviato  = salviato_consuntivo.at(sprint_number - 1)
        let squarzoni = squarzoni_consuntivo.at(sprint_number - 1)
        let tutino    = tutino_consuntivo.at(sprint_number - 1)
        let vallotto  = vallotto_consuntivo.at(sprint_number - 1)

        [#tabellaSprint(numSprint, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)]
        [<tabella-ConsuntivoSprint1> \ ]
        [#pieChartSprint(numSprint, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)]
        [<grafico-ConsuntivoSprint1> \ ]
    }
}