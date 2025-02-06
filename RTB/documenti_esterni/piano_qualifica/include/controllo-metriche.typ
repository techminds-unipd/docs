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

// lines   :: [[number], [number]]
// legends :: [[content], [content]]
// hlines  :: [number]
#let lineChart(lines: array, legends: array, hlines: array, x-label: str, y-label: str, caption: content) = {
    figure(
    cetz.canvas({
      plot.plot(size: (14,6),
        legend: auto,
        axis-style: "left",
        x-label: [#pad(left: 35pt, top: 5pt, x-label)],
        y-label: [#pad(right: 5pt, bottom: 5pt, y-label)],
        x-tick-step: 1,
        //y-tick-step: 0.5, {
        {

        for data in lines.zip(legends) {
            plot.add(data.at(0)(offset: 0), line: "linear", label: data.at(1))
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

= Cruscotto

== Actual cost + Estimate to Complete + Estimated at Completion
#linebreak()

#let ac(offset: 0) = (
         (1, tot_spesa.slice(0,1).sum()),
         (2, tot_spesa.slice(0,2).sum()),
         (3, tot_spesa.slice(0,3).sum()))
#let etc(offset: 0) = (
         (1,12975 - tot_spesa.slice(0,1).sum()),
         (2,12975 - tot_spesa.slice(0,2).sum()),
         (3,12975 - tot_spesa.slice(0,3).sum()))
#let eac(offset: 0) = (
         (1, tot_spesa.slice(0,1).sum() + 12975 - tot_spesa.slice(0,1).sum()),
         (2, tot_spesa.slice(0,2).sum() + 12975 - tot_spesa.slice(0,2).sum()),
         (3, tot_spesa.slice(0,3).sum() + 12975 - tot_spesa.slice(0,3).sum()))  // eac = ac + etc

#lineChart(lines: (ac,etc,eac),
          legends: ([AC],[ETC],[EAC]),
          hlines: (),
          x-label: "sprint",
          y-label: "costo \u{20AC}",
          caption: [AC + ETC + EAC])

Il grafico illustra:
- #glossario[Actual Cost]: i costi sostenuti fino ad ora;
- #glossario[Estimate to Complete]: il valore stimato per la realizzazione delle rimanenti attività necessarie al completamento del progetto;
- #glossario[Estimated at Completion]: revisione del valore stimato per la realizzazione del progetto (AC + ETC).