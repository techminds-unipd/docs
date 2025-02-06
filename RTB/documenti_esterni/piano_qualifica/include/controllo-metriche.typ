#import "/template/template.typ": glossario
#import "@preview/cetz:0.3.1"
#import "@preview/cetz-plot:0.1.0": plot, chart
#import "../../piano_progetto/include/costi.typ": getSprintCostsSection

//#glossario[sprint]
//#glossario[label]
//#glossario[ac]
//#glossario[etc]
//#glossario[push]
//#glossario[eac]
//#glossario[ev]
//#glossario[pv]
//#glossario[rtb]

// lines   :: [[number], [number]]
// legends :: [content, content]
// hlines  :: [number]
#let lineChart(lines: array, legends: array, hlines: array, x-label: str, y-label: str, caption: content) = {
    figure(
    cetz.canvas({
      plot.plot(size: (14,6),
        legend: auto,
        axis-style: "left",
        x-label: [#pad(left: 35pt, top: 5pt, x-label)],
        y-label: [#pad(right: 5pt, bottom: 5pt, y-label)],
        x-tick-step: 1, {

        for data in lines.zip(legends) {
            if (data.at(1) == []) {
                plot.add(data.at(0)(offset: 0), line: "linear")
            } else {
                plot.add(data.at(0)(offset: 0), line: "linear", label: data.at(1))
            }
        }

        for hline in hlines {
            plot.add-hline(hline, style:(stroke: (dash: "dashed", paint: gray)))
        }
      })
    }), caption: caption)
}

// tot_spesa.at(i) => spesa sostenuta allo sprint i
#let tot_spesa = ()
#let sprint_number = 3
#for i in range(1, sprint_number+1) {
    let (_, consuntivo) = getSprintCostsSection(sprint_number: i)
    let bilancio  = consuntivo.bilancioConsuntivo
    tot_spesa.push(12975 - tot_spesa.sum(default: 0) - bilancio)
}

#let tot_spesa_preventivata = ()
#for i in range(1, sprint_number+1) {
    let (preventivo, _) = getSprintCostsSection(sprint_number: i)
    let bilancio  = preventivo.bilancioPreventivo
    tot_spesa_preventivata.push(12975 - tot_spesa_preventivata.sum(default: 0) - bilancio)
}

// Valori metriche

#let ac = ()
#let etc = ()
#let eac = ()
#let ev = ()
#let pv = ()
#let costo_totale_stimato = (12975, 12975, 12975)
#for i in range(1, sprint_number+1) {
    ac.push((i, tot_spesa.slice(0,i).sum()))
    etc.push((i, costo_totale_stimato.at(i - 1) - tot_spesa.slice(0,i).sum()))
    eac.push((i, costo_totale_stimato.at(i - 1)))

    ev.push((i, tot_spesa.slice(0,i).sum()))
    pv.push((i, tot_spesa_preventivata.slice(0,i).sum()))
}

#let ac_fun(offset: 0) = ac
#let etc_fun(offset: 0) = etc
#let eac_fun(offset: 0) = eac
#let ev_fun(offset: 0) = ev
#let pv_fun(offset: 0) = pv

= Cruscotto
== MPRO1 (AC), MPRO8 (ETC), MPRO7 (EAC)
#linebreak()

#lineChart(lines: (ac_fun,etc_fun,eac_fun),
          legends: ([AC],[ETC],[EAC]),
          hlines: (),
          x-label: "sprint",
          y-label: "costo \u{20AC}",
          caption: [AC, ETC, EAC],)

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

== MPRO3 (PV), MPRO1 (EV)
#linebreak()

#lineChart(lines: (ev_fun,pv_fun),
          legends: ([EV],[PV]),
          hlines: (),
          x-label: "sprint",
          y-label: "costo \u{20AC}",
          caption: [EV, PV])

Il grafico illustra:
- #glossario[Planned Value] (PV): Costo pianificato per realizzare le attività di progetto alla data corrente;
- #glossario[Earned Value] (EV): Valore delle attività realizzate alla data corrente.

#linebreak()
*RTB*
#linebreak()
In questo periodo abbiamo rispettato abbastanza bene i costi preventivati, scostandoci di poco. Questo mette in evidenza una buona metodologia di pianificazione.
In generale i costi sono bassi perchè in questo periodo erano presenti molti impegni fra lezioni e esami che non permettevano di allocare molto tempo.