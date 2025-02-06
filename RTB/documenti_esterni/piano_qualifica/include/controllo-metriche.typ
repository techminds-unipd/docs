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

// Valori metriche

#let ac = ()
#let etc = ()
#let eac = ()
#let ev = ()
#let costo_totale_stimato = (12975, 12975, 12975)
#for i in range(1, sprint_number+1) {
    ac.push((i, tot_spesa.slice(0,i).sum()))
    etc.push((i, costo_totale_stimato.at(i - 1) - tot_spesa.slice(0,i).sum()))
    eac.push((i, costo_totale_stimato.at(i - 1)))
    ev.push((i, tot_spesa.slice(0,i).sum()))
}
#let g_adr = ((1,64),(2,66),(3,65),(4,66))
#let g_pdp = ((1,48),(2,47),(3,56),(4,68))
#let g_pdq = ((1,52),(2,56),(3,49),(4,58))
#let g_ndp = ((1,47),(2,51),(3,52),(4,66))
#let g_gloss = ((1,59),(2,59),(3,47),(4,58))

#let ac_fun(offset: 0) = ac
#let etc_fun(offset: 0) = etc
#let eac_fun(offset: 0) = eac
#let ev_fun(offset: 0) = ev
#let g_adr_fun(offset: 0) = g_adr
#let g_pdp_fun(offset: 0) = g_pdp
#let g_pdq_fun(offset: 0) = g_pdq
#let g_ndp_fun(offset: 0) = g_ndp
#let g_gloss_fun(offset: 0) = g_gloss

= Cruscotto
== MPRO1 (AC), MPRO8 (ETC), MPRO7 (EAC)
#linebreak()

#lineChart(lines: (ac_fun,etc_fun,eac_fun),
          legends: ([AC],[ETC],[EAC]),
          hlines: (),
          x-label: "sprint",
          y-label: "costo \u{20AC}",
          caption: [AC, ETC, EAC.])

Il grafico illustra:
- #glossario[Actual Cost] (AC): i costi sostenuti fino ad ora;
- #glossario[Estimate to Complete] (ETC): il valore stimato per la realizzazione delle rimanenti attività necessarie al completamento del progetto;
- #glossario[Estimated at Completion] (EAC): revisione del valore stimato per la realizzazione del progetto (AC + ETC).

=== RTB
In questo periodo abbiamo un incremento di AC proporzionale al decremento di ETC. AC sta crescendo lentamente, questo perchè inizialmente le ore produttive sono molte meno rispetto a quelle di orologio.
Inoltre in questo periodo erano presenti altri impegni importanti come le lezioni e gli esami.
EAC resta invariato (= preventivo iniziale) però in futuro potrebbe abbassarsi.

== MAFF1 (Indice di Gulpease)
#linebreak()

#let x_axis = ((1,36),)
#let x_axis_fun(offset: 0) = x_axis

#lineChart(lines: (g_adr_fun, g_pdp_fun, g_pdq_fun, g_gloss_fun, g_ndp_fun, x_axis_fun),
          legends: ([AdR],[PdP],[PdQ],[Glossario],[NdP],[]),
          hlines: ((40,40)),
          x-label: "sprint",
          y-label: "costo \u{20AC}",
          caption: [Indice di Gulpease in AdR, PdP, PdQ, Glossario e NdP.])

Il grafico illustra il valore dell'indice di Gulpease calcolato per i seguenti documenti:
- Analisi dei requisiti;
- Piano di progetto;
- Piano di qualifica;
- Glossario;
- Norme di progetto.

#linebreak()
*RTB*
#linebreak()
I valori dell'indice di Gulpease calcolati sono sempre sopra la soglia accettabile (ovvero 40). In alcuni documenti, come Analisi dei requisiti, il valore dell'indice è rimasto abbastanza stabile. Si sono riscontrati dei notevoli incrementi in Norme di progetto e Piano di progetto, dovuti dalla maggiore cura e attenzione da parte del gruppo nella formulazione delle frasi. Infine, anche se in Glossario e Piano di qualifica ci sono stati dei peggioramenti, tra lo sprint 3 e lo sprint 4 si è registrato un impegno nel migliorare il valore dell'indice.