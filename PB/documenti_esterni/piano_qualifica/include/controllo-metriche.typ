#import "/template/template.typ": glossario
#import "@preview/cetz:0.3.1"
#import "@preview/cetz-plot:0.1.0": plot, chart
#import "../../piano_progetto/include/costi.typ": getSprintCostsSection, getSprintNumber

//#glossario[sprint]
//#glossario[label]
//#glossario[ac]
//#glossario[etc]
//#glossario[push]
//#glossario[eac]
//#glossario[ev]
//#glossario[pv]
//#glossario[rtb]
//#glossario[pb]
//#glossario[cv]
//#glossario[sv]
//#glossario[cpi]
//#glossario[spi]
//#glossario[rsi]
//#glossario[code coverage]
//#glossario[workflow]
//#glossario[agente]

// lines   :: [[number], [number]]
// legends :: [content, content]
// hlines  :: [number]
#let lineChart(lines: array, legends: array, hlines: array, vlines: array, x-label: str, y-label: str, y-tick-step: int, caption: content) = {
    let colours = (black, lime, yellow, teal, purple, orange, green, red, blue)
    if y-tick-step <= 0 {
        y-tick-step = auto
    }

    figure(
        cetz.canvas({
            plot.plot(size: (14,6),
                legend: auto,
                axis-style: "left",
                x-label: [#pad(left: 35pt, top: 5pt, x-label)],
                y-label: [#pad(right: 5pt, bottom: 5pt, y-label)],
                x-tick-step: 1,
                y-tick-step: y-tick-step, {

                    for data in lines.zip(legends) {
                        if (data.at(1) == []) {
                            plot.add(data.at(0)(offset: 0), line: "linear", style: (stroke: (paint: colours.pop())))
                        } else {
                            plot.add(data.at(0)(offset: 0), line: "linear", label: data.at(1), style: (stroke: (paint: colours.pop())))
                        }
                    }

                    for hline in hlines {
                        plot.add-hline(hline, style:(stroke: (dash: "dashed", paint: gray)))
                    }

                    for vline in vlines {
                        plot.add-vline(vline, style:(stroke: (dash: "dashed", paint: red)))
                    }
                })
        }), caption: caption)
}

#let calcoloMetricheAccettabili(
    ev, ac, pv,
    cv, sv, cpi,
    eac, etc, spi,
    caption_figure, rischi,
    g_adr, g_pdp, g_pdq, g_ndp, g_gloss,
    cod_cov_backend, cod_cov_frontend, cod_cov_agente,
    test_sup,
    req_obb_sodd,
    req_des_sodd,
    req_opz_sodd,
    tem_med_workflow,
    click_funz,
    browser_supp,
    rsi) = {

        let metriche_accettabili = 0

        metriche_accettabili += int(ev >= 0)
        metriche_accettabili += int(ac >= 0)
        metriche_accettabili += int(pv >= 0)
        metriche_accettabili += int(cv >= 0)
        metriche_accettabili += int(sv >= 0)
        metriche_accettabili += int(cpi >= 1)
        metriche_accettabili += int(eac >= 12800 +0.5*12800 or eac >= 12800 -0.5*12800)
        metriche_accettabili += int(etc >= 0)
        metriche_accettabili += int(spi >= 1)
        metriche_accettabili += int(caption_figure == 100)
        metriche_accettabili += int(rischi <= 4)
        metriche_accettabili += int((g_adr, g_pdp, g_pdq, g_ndp, g_gloss).sorted().first() >= 40)
        metriche_accettabili += int((cod_cov_backend, cod_cov_frontend, cod_cov_agente).sorted().first() >= 75)
        metriche_accettabili += int(test_sup >= 90)
        metriche_accettabili += int(req_obb_sodd == 100)
        metriche_accettabili += int(req_des_sodd >= 0)
        metriche_accettabili += int(req_opz_sodd >= 0)
        metriche_accettabili += int(tem_med_workflow <= 20)
        metriche_accettabili += int(click_funz <= 7)
        metriche_accettabili += int(browser_supp >= 75)
        metriche_accettabili += int(rsi >= 80)

        return metriche_accettabili
}

#let calcoloMetricheOttime(
    ev, ac, pv,
    cv, sv, cpi,
    eac, etc, spi,
    caption_figure, rischi,
    g_adr, g_pdp, g_pdq, g_ndp, g_gloss,
    cod_cov_backend, cod_cov_frontend, cod_cov_agente,
    test_sup,
    req_obb_sodd,
    req_des_sodd,
    req_opz_sodd,
    tem_med_workflow,
    click_funz,
    browser_supp, rsi) = {

        let metriche_ottime = 0

        metriche_ottime += int(ev <= eac)
        metriche_ottime += int(ac <= eac)
        metriche_ottime += int(pv <= 12800)
        metriche_ottime += int(cv >= 0)
        metriche_ottime += int(sv >= 0)
        metriche_ottime += int(cpi >= 1)
        metriche_ottime += int(eac == 12800)
        metriche_ottime += int(etc >= eac)
        metriche_ottime += int(spi >= 1)
        metriche_ottime += int(caption_figure == 100)
        metriche_ottime += int(rischi == 0)
        metriche_ottime += int((g_adr, g_pdp, g_pdq, g_ndp, g_gloss).sorted().first() >= 70)
        metriche_ottime += int((cod_cov_backend, cod_cov_frontend, cod_cov_agente).sorted().first() == 100)
        metriche_ottime += int(test_sup == 100)
        metriche_ottime += int(req_obb_sodd == 100)
        metriche_ottime += int(req_des_sodd == 100)
        metriche_ottime += int(req_opz_sodd == 100)
        metriche_ottime += int(tem_med_workflow <= 10)
        metriche_ottime += int(click_funz <= 5)
        metriche_ottime += int(browser_supp == 100)
        metriche_ottime += int(rsi == 100)

        return metriche_ottime
}


// tot_spesa.at(i) => spesa sostenuta allo sprint i
#let tot_spesa = ()
#let sprint_number = getSprintNumber()
#for i in range(1, sprint_number+1) {
    let (_, consuntivo) = getSprintCostsSection(sprint_number: i)
    let bilancio  = consuntivo.bilancioConsuntivo
    tot_spesa.push(12975 - tot_spesa.sum(default: 0) - bilancio)
}

#let tot_spesa_preventivata = ()
#for i in range(1, sprint_number+1) {
    let (preventivo, _) = getSprintCostsSection(sprint_number: i)
    let bilancio  = preventivo.bilancioPreventivo
    if(i<=5){
    tot_spesa_preventivata.push(12975 - tot_spesa_preventivata.sum(default: 0) - bilancio)
    }else if(i <= 7){
    tot_spesa_preventivata.push(12625 - tot_spesa_preventivata.sum(default: 0) - bilancio)
    }
    else if(i <= 8){
    tot_spesa_preventivata.push(12750 - tot_spesa_preventivata.sum(default: 0) - bilancio)
    }
    else if(i <= 9){
    tot_spesa_preventivata.push(12800 - tot_spesa_preventivata.sum(default: 0) - bilancio)
    }
}

#let num_metriche = 26

// Valori metriche
#let ac = ()
#let etc = ()
#let eac = ()
#let ev = ()
#let pv = ()
#let cv = ()
#let sv = ()
#let cpi = ()
#let spi = ()
#let cpi = ()
#let caption_figure = ()
#let rischi = ()
#let costo_totale_stimato = ()

#let rsi = ((5, 100), (6, 68), (7, 29), (8, 100), (9, 97))
#let code_coverage_backend = ((7, 0), (8, 96), (9, 96))
#let code_coverage_frontend = ((7, 0), (8, 61), (9, 98)) //da inserire valore sprint 9
#let code_coverage_agente = ((7, 0), (8, 76), (9, 76))
#let test_superati = ((7, 100), (8, 100), (9, 100))
#let requisiti_obbligatori_soddisfatti = ((7, 10), (8, 71), (9, 100))
#let requisiti_desiderabili_soddisfatti = ((7, 0), (8, 67), (9, 100))
#let requisiti_opzionali_soddisfatti = ((7, 0), (8, 0), (9, 0))
#let tempo_medio_workflow = ((8, 9), (9, 8))
#let click_funzionalita = ((8, 6), (9, 8))
#let browser_supportati = ((8, 100), (9, 100))

#let metriche_accettabili = ()
#let metriche_ottime = ()

//Indice di Gulpease
#let g_adr = ((1,64),(2,66),(3,65),(4,66),(5,66),(6,68),(7,68),(8,68),(9,68))
#let g_pdp = ((1,48),(2,47),(3,56),(4,68),(5,76),(6,85),(7,80),(8,82),(9,80))
#let g_pdq = ((1,52),(2,56),(3,49),(4,58),(5,58),(6,58),(7,58),(8,60),(9,62))
#let g_ndp = ((1,47),(2,51),(3,52),(4,66),(5,68),(6,68),(7,68),(8,69),(9,72))
#let g_gloss = ((1,59),(2,59),(3,47),(4,58),(5,58),(6,58),(7,58),(8,57),(9,58))
#let g_st = ((7,53),(8,61),(9,64))
#let g_mu = ((8,42),(9,60))

#for i in range(1, sprint_number+1) {
    if(i<=5){
    costo_totale_stimato.push(12975)
    } else if(i<=7){
    costo_totale_stimato.push(12625)
    } else if(i<=8) {
    costo_totale_stimato.push(12750)    
    } else if(i<=9) {
    costo_totale_stimato.push(12800)    
    }

    ac.push((i, tot_spesa.slice(0,i).sum()))
    etc.push((i, costo_totale_stimato.at(i - 1) - tot_spesa.slice(0,i).sum()))
    eac.push((i, costo_totale_stimato.at(i - 1)))

    ev.push((i, tot_spesa.slice(0,i).sum()))
    pv.push((i, tot_spesa_preventivata.slice(0,i).sum()))

    cv.push((i, ev.at(i - 1).at(1) - ac.at(i - 1).at(1)))
    sv.push((i, ev.at(i - 1).at(1) - pv.at(i - 1).at(1)))

    cpi.push((i, ev.at(i - 1).at(1) / ac.at(i - 1).at(1)))
    spi.push((i, ev.at(i - 1).at(1) / pv.at(i - 1).at(1)))

    caption_figure.push((i, 100))
    if i == 8 {
        rischi.push((i, 1))
    } else {
        rischi.push((i, 0))
    }

    let req_stab_index = 0
    if i >= 5 {
        req_stab_index = rsi.at(i - 5).at(1)
    }
    let cod_cov_backend = 0
    let cod_cov_frontend = 0
    let cod_cov_agente = 0
    let test_sup = 0
    let req_obb_sodd = 0
    let req_des_sodd = -1
    let req_opz_sodd = -1
    if i >= 7 {
        cod_cov_backend = code_coverage_backend.at(i - 7).at(1)
        cod_cov_frontend = code_coverage_frontend.at(i - 7).at(1)
        cod_cov_agente = code_coverage_agente.at(i - 7).at(1)
        test_sup = test_superati.at(i - 7).at(1)
        req_obb_sodd = requisiti_obbligatori_soddisfatti.at(i - 7).at(1)
        req_des_sodd = requisiti_desiderabili_soddisfatti.at(i - 7).at(1)
        req_opz_sodd = requisiti_opzionali_soddisfatti.at(i - 7).at(1)
    }

    let tem_med_workflow = 100
    let click_funz = 100
    let browser_supp = 0
    if i >= 8 {
        tem_med_workflow = tempo_medio_workflow.at(i - 8).at(1)
        click_funz = click_funzionalita.at(i - 8).at(1)
        browser_supp = browser_supportati.at(i - 8).at(1)
    }

    
    metriche_accettabili.push((i,
        calcoloMetricheAccettabili(
            ev.at(i - 1).at(1), ac.at(i - 1).at(1), pv.at(i - 1).at(1), cv.at(i - 1).at(1),
            sv.at(i - 1).at(1), cpi.at(i - 1).at(1), eac.at(i - 1).at(1), etc.at(i - 1).at(1),
            spi.at(i - 1).at(1), caption_figure.at(i - 1).at(1), rischi.at(i - 1).at(1),
            g_adr.at(i - 1).at(1), g_pdp.at(i - 1).at(1), g_pdq.at(i - 1).at(1), g_ndp.at(i - 1).at(1), g_gloss.at(i - 1).at(1), cod_cov_backend, cod_cov_frontend, cod_cov_agente, test_sup, req_obb_sodd, req_des_sodd, req_opz_sodd, tem_med_workflow, click_funz, browser_supp, req_stab_index)))
    
    if i >= 7 {
        metriche_accettabili.at(i - 1).at(1) += 5
    }

    metriche_ottime.push((i,
        calcoloMetricheOttime(
            ev.at(i - 1).at(1), ac.at(i - 1).at(1), pv.at(i - 1).at(1), cv.at(i - 1).at(1),
            sv.at(i - 1).at(1), cpi.at(i - 1).at(1), eac.at(i - 1).at(1), etc.at(i - 1).at(1),
            spi.at(i - 1).at(1), caption_figure.at(i - 1).at(1), rischi.at(i - 1).at(1),
            g_adr.at(i - 1).at(1), g_pdp.at(i - 1).at(1), g_pdq.at(i - 1).at(1), g_ndp.at(i - 1).at(1), g_gloss.at(i - 1).at(1), cod_cov_backend, cod_cov_frontend, cod_cov_agente, test_sup, req_obb_sodd, req_des_sodd, req_opz_sodd, tem_med_workflow, click_funz, browser_supp, req_stab_index)))

    if i >= 7 {
        metriche_ottime.at(i - 1).at(1) += 3
    }
}

#let ac_fun(offset: 0) = ac
#let etc_fun(offset: 0) = etc
#let eac_fun(offset: 0) = eac
#let ev_fun(offset: 0) = ev
#let pv_fun(offset: 0) = pv
#let cv_fun(offset: 0) = cv
#let sv_fun(offset: 0) = sv
#let cpi_fun(offset: 0) = cpi
#let spi_fun(offset: 0) = spi
#let caption_figure_fun(offset: 0) = caption_figure
#let g_adr_fun(offset: 0) = g_adr
#let g_pdp_fun(offset: 0) = g_pdp
#let g_pdq_fun(offset: 0) = g_pdq
#let g_ndp_fun(offset: 0) = g_ndp
#let g_gloss_fun(offset: 0) = g_gloss
#let g_st_fun(offset: 0) = g_st
#let g_mu_fun(offset: 0) = g_mu
#let rischi_fun(offset: 0) = rischi

#let rsi_fun(offset: 0) = rsi
#let code_coverage_backend_fun(offset: 0) = code_coverage_backend
#let code_coverage_frontend_fun(offset: 0) = code_coverage_frontend
#let code_coverage_agente_fun(offset: 0) = code_coverage_agente
#let test_superati_fun(offset: 0) = test_superati
#let requisiti_obbligatori_soddisfatti_fun(offset: 0) = requisiti_obbligatori_soddisfatti
#let requisiti_desiderabili_soddisfatti_fun(offset: 0) = requisiti_desiderabili_soddisfatti
#let requisiti_opzionali_soddisfatti_fun(offset: 0) = requisiti_opzionali_soddisfatti
#let tempo_medio_workflow_fun(offset: 0) = tempo_medio_workflow
#let click_funzionalita_fun(offset: 0) = click_funzionalita
#let browser_supportati_fun(offset: 0) = browser_supportati

#let metriche_accettabili_fun(offset:0) = metriche_accettabili
#let metriche_ottime_fun(offset:0) = metriche_ottime

#pagebreak()

= Cruscotto
== MPROC2 (AC), MPROC8 (ETC), MPRO7 (EAC)
#linebreak()

#lineChart(lines: (ac_fun,etc_fun,eac_fun),
    legends: ([AC],[ETC],[EAC]),
    hlines: (),
    vlines: (),
    x-label: "sprint",
    y-label: "costo \u{20AC}",
    y-tick-step: -1,
    caption: [AC, ETC, EAC.])

Il grafico illustra:
- #glossario[Actual Cost] (AC): i costi sostenuti fino ad ora;
- #glossario[Estimate to Complete] (ETC): il valore stimato per la realizzazione delle rimanenti attività necessarie al completamento del progetto;
- #glossario[Estimated at Completion] (EAC): revisione del valore stimato per la realizzazione del progetto (AC + ETC).

#linebreak()
*RTB*
#linebreak()
In questo periodo abbiamo un incremento di AC proporzionale al decremento di ETC. AC sta crescendo lentamente, questo perchè inizialmente le ore produttive sono molte meno rispetto a quelle di orologio.
Inoltre in questo periodo erano presenti altri impegni importanti come le lezioni e gli esami.
EAC resta invariato (= preventivo iniziale) però in futuro potrebbe abbassarsi.
#linebreak() #linebreak()
*PB*
#linebreak()
Dal grafico si può notare che l'AC è in linea con l'EAC, questo è dovuto al fatto che i costi del progetto sono stati in linea con quelli dell'ultimo #glossario[preventivo a finire]. Inoltre l'ETC è arrivato a quota 0, segno che tutte le attività del progetto sono state completate. L'EAC durante il periodo PB ha subito alcune oscillazioni, ma è rimasto sempre sotto il budget iniziale, ciò è dovuto alla nuova pianificazione dei vari preventivi a finire redatti alla fine di ogni sprint. 

== MPROC3 (PV), MPROC1 (EV)
#linebreak()

#lineChart(lines: (ev_fun,pv_fun),
    legends: ([EV],[PV]),
    hlines: (),
    vlines: (),
    x-label: "sprint",
    y-label: "costo \u{20AC}",
    y-tick-step: -1,
    caption: [EV, PV.])

Il grafico illustra:
- #glossario[Planned Value] (PV): costo pianificato per realizzare le attività di progetto alla data corrente;
- #glossario[Earned Value] (EV): valore delle attività realizzate alla data corrente.

#linebreak()
*RTB*
#linebreak()
In questo periodo abbiamo rispettato abbastanza bene i costi preventivati, scostandoci di poco. Questo mette in evidenza una buona metodologia di pianificazione.
In generale i costi sono bassi perchè in questo periodo erano presenti molti impegni fra lezioni e esami che non permettevano di allocare molto tempo.
#linebreak() #linebreak()
*PB*
#linebreak()
Come nel periodo RTB anche in questo periodo i costi sono stati rispettati, ma si nota un incremento di EV rispetto a PV, soprattutto tra lo sprint 6 e 8. Questo è dovuto al fatto che il lavoro svolto è stato maggiore rispetto a quello pianificato, quindi il team è riuscito a portare avanti il progetto in modo più veloce del previsto. Inoltre l'EV ha subito un incremento costante fino a raggiungere il budget iniziale, segno che il progetto è stato portato avanti e completato in modo proficuo. 

#pagebreak()
== MPROC4 (CV), MPROC5 (SV)
#linebreak()

#lineChart(lines: (cv_fun,sv_fun),
    legends: ([CV],[SV]),
    hlines: (0,),
    vlines: (),
    x-label: "sprint",
    y-label: "y",
    y-tick-step: -1,
    caption: [CV, SV.])

Il grafico illustra:
- #glossario[Cost Variance] (CV): indica se il valore del costo realmente maturato è maggiore, uguale o minore rispetto al costo effettivo;
- #glossario[Schedule Variance] (SV): indica se si è in linea, in anticipo o in ritardo rispetto alla schedulazione delle attività di progetto pianificate nella #glossario[baseline].

#linebreak()
*RTB*
#linebreak()
In questo periodo si nota che CV è sempre 0, ovvero stiamo usando le risorse producendo adeguatamente.
SV ha un picco iniziale, indicando un anticipo rispetto allo schedule delle attività, successivamente con un rallentamento causato dalla sessione di esami.
#linebreak() #linebreak()
*PB*
#linebreak()
Come nel periodo precendente anche in questo periodo CV è sempre 0, segno che il costo sostenuto è in linea con quello pianificato. SV ha un picco a cavallo tra lo sprint 6 e 8, indicando un anticipo rispetto alla schedulazione delle attività. In generale negli ultimi sprint il lavoro è sempre stato completato in maniera anticipata rispetto a quanto pianificato, segno che il team ha spesso sovrastimato alcune task che sono state portate a termine in meno tempo del previsto. Al contempo però il gruppo ha sfruttato questo anticipo per portare a termine più task di quante preventivate all'inizio di ogni sprint.
#pagebreak()

== MPROC6 (CPI), MPROC9 (SPI)
#linebreak()

#lineChart(lines: (cpi_fun,spi_fun),
    legends: ([CPI],[SPI]),
    hlines: (1,),
    vlines: (),
    x-label: "sprint",
    y-label: "y",
    y-tick-step: -1,
    caption: [CPI, SPI.])

Il grafico illustra:
- #glossario[Cost Performance Index] (CPI): indica l’#glossario[efficienza] dei costi di un progetto mettendo in relazione il valore prodotto e i costi sostenuti;
- #glossario[Schedule Performance Index] (SPI): indica l’efficienza del progetto mettendo in relazione il lavoro completato con quello pianificato.

#linebreak()
*RTB*
#linebreak()
In questo periodo si nota che CPI è esattamente a 1, indicando che il costo per completare i lavori è in linea a quanto stabilito.
La SPI inizialmente supera 1, indicando che abbiamo ottenuto i risultati aspettati con costi minori dei preventivati, aumentanto così l'efficienza.
Con l'avanzamento del progetto la SPI è iniziata a scendere, questo è dovuto ad aspettative troppo ambiziose e poco tempo disponibile con l'avvicinarsi della sessione di esami.
#linebreak() #linebreak()
*PB*
#linebreak()
Come nel periodo RTB anche in questo periodo CPI è sempre 1, segno che il costo sostenuto per completare i lavori è in linea con quello pianificato.
In seguito allo sprint 6 la SPI ha sempre superato 1, segno che il team è stato molto efficente nel portare avanti il lavoro. Infatti terminata la sessione di esami il tempo da dedicare al progetto è stato maggiore in termini di ore di allenamento e questo ha portato ad essere più efficenti durante le ore produttive.

#pagebreak()

== MPROC10 (RSI)
#linebreak()
#let point = ((6,0),)
#let point_fun(offset: 0) = point
#lineChart(lines: (rsi_fun, point_fun,),
    legends: ([RSI],[]),
    hlines: ((80,100)),
    vlines: (),
    x-label: "sprint",
    y-label: "%",
    y-tick-step: -1,
    caption: [RSI.])
Il grafico illustra:
- #glossario[Requirements Stability Index] (RSI): misura la stabilità dei requisiti durante il ciclo di vita, andando ad indicare quanto frequentemente cambiano i requisiti.

#linebreak()
*PB*
#linebreak()
Come è possibile notare dal grafico, il valore dell'RSI ha subito un forte calo in seguito alla revisione RTB, infatti sono stati aggiunti molti requisiti al fine di renderli più atomici. In seguito allo sprint 7 il valore dell'RSI è aumentato, segno che il team ha iniziato a stabilizzare i requisiti e a non modificarli più. Infatti il valore dell'RSI è sempre stato sopra la soglia accettabile (80%), indicando che il numero di modifiche ai requisiti è stato limitato. Durante l'ultimo sprint si può notare un leggero calo dell'RSI in seguito alla modifica di un requisito che però non ha avuto nessuna ripercussione sulla pianificazione.

#pagebreak()
== MPROC11 (Indice di Gulpease)
#linebreak()

#let x_axis = ((1,36),)
#let x_axis_fun(offset: 0) = x_axis

#lineChart(lines: (g_adr_fun, g_pdp_fun, g_pdq_fun, g_gloss_fun, g_ndp_fun, g_st_fun, g_mu_fun, x_axis_fun),
    legends: ([AdR],[PdP],[PdQ],[Glossario],[NdP],[ST],[MU]),
    hlines: ((40,40)),
    vlines: (),
    x-label: "sprint",
    y-label: "indice",
    y-tick-step: -1,
    caption: [Indice di Gulpease in AdR, PdP, PdQ, ST, MU, Glossario e NdP.])

Il grafico illustra il valore dell'indice di Gulpease calcolato per i seguenti documenti:
- #glossario[Analisi dei requisiti] ;
- Piano di progetto;
- Piano di qualifica;
- Glossario;
- Norme di progetto;
- Specifica Tecnica;
- Manuale utente.

#linebreak()
*RTB*
#linebreak()
I valori dell'indice di Gulpease calcolati sono sempre sopra la soglia accettabile (ovvero 40). In alcuni documenti, come Analisi dei requisiti, il valore dell'indice è rimasto abbastanza stabile. Si sono riscontrati dei notevoli incrementi in Norme di progetto e Piano di progetto, dovuti dalla maggiore cura e attenzione da parte del gruppo nella formulazione delle frasi. Infine, anche se in Glossario e Piano di qualifica ci sono stati dei peggioramenti, tra lo sprint 3 e lo sprint 4 si è registrato un impegno nel migliorare il valore dell'indice.
#linebreak() #linebreak()
*PB*
#linebreak()
Tutti i documenti prodotti hanno raggiunto la soglia accettabile dell'indice di Gulpease (40). Alcuni documenti, come la Specifica Tecnica o il Manuale utente, sono stati iniziati in questo periodo dunque è stato possibile effettuare meno misurazioni rispetto agli altri documenti già presenti. I valori sono stati generati da uno script che calcola l'indice di Gulpease in modo automatico, questo ha permesso di avere un'analisi più accurata e veloce. Inoltre, il team ha prestato particolare attenzione a questo aspetto, cercando di migliorare il valore dell'indice di Gulpease in tutti i documenti. 

== MPROC12 (Caption in tabelle e figure)
#linebreak()

#let x_axis = ((1,0),)
#let x_axis_fun(offset: 0) = x_axis

#lineChart(lines: (caption_figure_fun, x_axis_fun),
    legends: ([MACC1], []),
    hlines: (),
    vlines: (),
    x-label: "sprint",
    y-label: "%",
    y-tick-step: -1,
    caption: [Caption in tabelle e figure.])

Il grafico illustra:
- Caption in tabelle e figure: indica quante figure e tabelle hanno un titolo descrittivo associato.

#linebreak()
*RTB*
#linebreak()
Come sopra rappresentato, tutte le figure e le tabelle presenti all'interno di tutti i documenti presentano una caption. Tale caption risulta utile per apprendere in modo istantaneo cosa rappresenta la tabella o la figura corrispondente. Inoltre permette di creare la lista delle figure, ovvero l'indice a loro dedicato.
#linebreak() #linebreak()
*PB*
#linebreak()
In questo periodo il valore della caption in tabelle e figure è sempre stato al 100%, segno che il team ha sempre prestato attenzione a questo aspetto. Infatti, ogni figura e tabella presente nei documenti ha una caption che ne descrive il contenuto. 

#pagebreak()
== MPROC13 (Code coverage)
#linebreak()

#lineChart(lines: (code_coverage_backend_fun, code_coverage_frontend_fun, code_coverage_agente_fun),
    legends: ([Backend], [Frontend], [Agente]),
    hlines: ((75, 75)),
    vlines: (),
    x-label: "sprint",
    y-label: [code #linebreak() coverage],
    y-tick-step: -1,
    caption: [Code coverage.])
Il grafico illustra:
- #glossario[Code coverage]: indica la percentuale di righe codice coperta dai test, per ognuno dei componenti del prodotto (frontend, backend e agente).
#linebreak()
*PB*
#linebreak()
Ogni componente del prodotto software ha raggiunto la soglia accettabile del 75% di code coverage. In seguito all'inizio delle attività di codifica il team ha implementato molti test di unità, questo ha portato ad un notevole incremento della code coverage. Sono state riscontrate più difficoltà nei test dell'agente AI dove il valore è rimasto appena al di sopra la soglia accettabile. Il frontend ha raggiunto la soglia accettabile solo tra lo sprint 8 e lo sprint 9, dato che è stato l'ultimo componente ad essere codificato. Inoltre i test di unità sono stati integrati nella CI e questo ha permesso di avere un feedback immediato sullo stato della code coverage. 

#pagebreak()

== MPROC14 (Test superati)
#linebreak()
#let x_axis = ((7,0),)
#let x_axis_fun(offset: 0) = x_axis
#lineChart(lines: (test_superati_fun, x_axis_fun),
    legends: ([Test superati],[]),
    hlines: ((90, 90)),
    vlines: (),
    x-label: "sprint",
    y-label: [%],
    y-tick-step: -1,
    caption: [Test superati.])
Il grafico illustra:
- Test superati: indica la percentuale di test superati rispetto a quelli totali.
#linebreak()
*PB*
#linebreak()
Tutti i test di unità, integrazione e sistema previsti sono stati implementati e superati, segno che il prodotto è stato testato in modo accurato. 


#pagebreak()
== MPROC15 (Rischi non previsti)
#linebreak()

#let point = ((1,9),)
#let point_fun(offset: 0) = point

#lineChart(lines: (rischi_fun, point_fun,),
    legends: ([Rischi], []),
    hlines: (),
    vlines: (),
    x-label: "sprint",
    y-label: "rischi",
    y-tick-step: -1,
    caption: [Rischi.])

Il grafico illustra:
- Rischi: il numero di rischi non previsti che si sono verificati durante lo svolgimento del progetto.

#linebreak()
*RTB*
#linebreak()
Come sopra rappresentato, non ci sono stati problemi dovuti a rischi non previsti. Per maggiori informazioni sui rischi previsti si veda #link("https://techminds-unipd.github.io/docs/RTB/documenti_esterni/piano_progetto/piano-di-progetto.pdf#analisi-dei-rischi", "Analisi dei rischi") #footnote(link("https://techminds-unipd.github.io/docs/RTB/documenti_esterni/piano_progetto/piano-di-progetto.pdf#analisi-dei-rischi")) [Piano di Progetto, versione 1.0.0].
#linebreak() #linebreak()
*PB*
#linebreak()
In questo periodo non ci sono stati problemi dovuti a rischi non previsti. Infatti, il team ha sempre rispettato le tempistiche e i costi previsti. Durante lo sprint 8 si è verificato un rischio non prevedibile, riguardante le tecnologie utilizzate per svolgere i test, ma è stato gestito in modo efficace e non ha avuto ripercussioni sul progetto. Il team ha sempre monitorato i rischi e ha cercato di prevenirli, questo ha portato ad un buon risultato finale.

#pagebreak()

==  MPROC16 (Metriche accettabili)
#linebreak()

#let point = ((1,0),)
#let point_fun(offset: 0) = point

#lineChart(lines: (metriche_accettabili_fun, point_fun),
    legends: ([Metriche],[],),
    hlines: (num_metriche*0.9, num_metriche),
    vlines: (6,),
    x-label: "sprint",
    y-label: "n. metriche",
    y-tick-step: 2,
    caption: [Metriche accettabili.])

Il grafico illustra:
- Metriche accettabili: il numero di metriche che raggiungono la soglia accettabile.
- La linea rossa tratteggiata marca la suddivisione tra il periodo RTB e PB.
#linebreak()
*RTB*
#linebreak()
In questo periodo abbiamo quasi sempre raggiunto le soglie definite per noi accettabili.
Un caso eccezionale è lo sprint 3, che ha subito dei rallentamenti e di conseguenza alcune metriche che controllano i tempi/costi di consegna non sono state soddisfatte.
#linebreak() #linebreak()
*PB*
#linebreak()
In questo periodo sono state prese in considerazione anche le nuove metriche di cui non si era potuto rilevare alcuna misurazione nella fase RTB. Le linee grigie tratteggiate nel grafico indicano la soglia accettabile e ottimale rispetto al nuovo numero di metriche. Negli ultimi sprint il numero di metriche che hanno raggiunto la soglia accettabile è aumentato, segno che il team ha aumentato la qualità dei processi e del prodotto.

#pagebreak()

==  MPROC17 (Metriche ottimali)
#linebreak()

#let point = ((1,0),)
#let point_fun(offset: 0) = point

#lineChart(lines: (metriche_ottime_fun, point_fun),
    legends: ([Metriche],[]),
    hlines: (num_metriche*0.3, num_metriche),
    vlines: (6,),
    x-label: "sprint",
    y-label: "n. metriche",
    y-tick-step: 2,
    caption: [Metriche ottimali.])

Il grafico illustra:
- Metriche ottimali: il numero di metriche che raggiungono il valore ottimale.
- La linea rossa tratteggiata marca la suddivisione tra il periodo RTB e PB.
#linebreak()
*RTB*
#linebreak()
In questo periodo abbiamo  superato la soglia accettabile per la maggior parte degli sprint, quasi arrivando a toccare il valore ottimo (ovvero soddisfare tutte le metriche all'ottimo).
#linebreak() #linebreak()
*PB*
#linebreak()
In questo periodo sono state prese in considerazione anche le nuove metriche di cui non si era potuto rilevare alcuna misurazione nella fase RTB. Le linee grigie tratteggiate nel grafico indicano la soglia accettabile e ottimale rispetto al nuovo numero di metriche. In generale, il numero di metriche che hanno raggiunto la soglia ottimale è aumentato, segno che il team ha aumentato la qualità dei processi e del prodotto. 


#pagebreak()
== MPROD1, MPROD2, MPROD3 (Requisiti soddisfatti)
#linebreak()

#lineChart(lines: (requisiti_obbligatori_soddisfatti_fun, requisiti_desiderabili_soddisfatti_fun, requisiti_opzionali_soddisfatti_fun),
    legends: ([Obbligatori], [Desiderabili], [Opzionali]),
    hlines: ((100,100)),
    vlines: (),
    x-label: "sprint",
    y-label: "%",
    y-tick-step: -1,
    caption: [Percentuali requisiti soddisfatti.])
Il grafico illustra:
- Requisiti soddisfatti: la percentuale di requisiti obbligatori, desiderabili e opzionali soddisfatti.
#linebreak()
*PB*
#linebreak()
Tutti i requisiti obbligatori e desiderabili sono stati soddisfatti. Il requisito opzionale, invece, non è stato soddisfatto in quanto non è stato implementato dato che avrebbe impiegato diverse ore produttive. Questa scelta è dovuta al fatto che il team ha deciso di concentrarsi sui requisiti obbligatori e desiderabili, ritenendo che fosse più importante soddisfare questi requisiti prima di passare a quelli opzionali. \ \ \  \ \ \ \ \ \ \ \ \ \ \ \


== MPROD4, MPROD5, MPROD6, MPROD7, MPROD8

Le seguenti metriche di prodotto riguardanti la manutenibilità vengono applicate e verificate da strumenti di analisi statica del codice, come ad esempio #glossario[EsLint].

#pagebreak()
== MPROD9 (Tempo medio esecuzione di un workflow)
#linebreak()
#let point = ((8,0),)
#let point_fun(offset: 0) = point
#lineChart(lines: (tempo_medio_workflow_fun, point_fun),
    legends: ([Tempo medio #linebreak() workflow],[]),
    hlines: ((10,20)),
    vlines: (),
    x-label: "sprint",
    y-label: "secondi",
    y-tick-step: 2,
    caption: [Tempo medio di esecuzione di un workflow.])
Il grafico illustra:
- Tempo medio di esecuzione di un #glossario[workflow]: indica il tempo medio impiegato per eseguire un workflow che contiene due #glossario[blocchi] e un #glossario[arco] con relativa descrizione.
#linebreak()
*PB*
#linebreak()
In seguito alla codifica dell'agente AI è stato utile stimare il tempo medio di esecuzione di un workflow, prendendo in considerazione un workflow semplice. Il valore del tempo medio di esecuzione è sempre stato sotto la soglia accettabile (20 secondi). Se il workflow è più complesso il tempo medio di esecuzione aumenta in maniera non quantificabile, dato che la complessità è data dal numero di nodi, archi e in particolare dalle descrizioni delle automazioni.

#pagebreak()
== MPROD10 (Click per utilizzare una funzionalità)
#linebreak()
#let point = ((8,0),)
#let point_fun(offset: 0) = point
#lineChart(lines: (click_funzionalita_fun, point_fun),
    legends: ([Numero click],[]),
    hlines: ((6,8)),
    vlines: (),
    x-label: "sprint",
    y-label: "n. click",
    y-tick-step: 2,
    caption: [Click per utilizzare una funzionalità.])
Il grafico illustra:
- Click per utilizzare una funzionalità: indica il numero di click utilizzati per eseguire la funzionalità che ne richiede di più, analizzando così il caso peggiore.
#linebreak()
*PB*
#linebreak()
Il numero di click per utilizzare una funzionalità è sempre stato sotto la soglia accettabile (7 click). Il team ha pensato all'usabilità strutturando il prodotto nel modo più intuitivo possibile per l'utente finale. Per calcolare la metrica è stata considerata la funzionalità che richiede più click per essere utilizzata, ossia l'esecuzione di un workflow che comprende tutti e 3 i blocchi disponibili, in modo da avere un'idea del numero massimo di click che l'utente deve fare per utilizzare il prodotto. 

#pagebreak()

== MPROD11 (Versioni browser supportate)
#linebreak()
#let point = ((8,0),)
#let point_fun(offset: 0) = point
#lineChart(lines: (browser_supportati_fun, point_fun),
    legends: ([% Browser],[]),
    hlines: ((75,75)),
    vlines: (),
    x-label: "sprint",
    y-label: "%",
    y-tick-step: -1,
    caption: [Percentuale di browser supportati.])
Il grafico illustra:
- Percentuale di browser supportati: indica la percentuale di browser supportati rispetto a quelli definiti nell'#link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf", "analisi dei requisiti") #footnote(link("https://techminds-unipd.github.io/docs/PB/documenti_esterni/analisi_requisiti/analisi-dei-requisiti.pdf")) [versione 2.0.0].
#linebreak()
*PB*
#linebreak()
Tutti i browser da supportare individuati nell'analisi dei requisiti sono stati supportati. Infatti il prodotto è stato testato con esito positivo sulle ultime versioni di Chrome e Firefox.



