#import "/template/template.typ": glossario,team,tabellaSprint,textCellColorConsuntivo,calcolaBilancio,pieChartSprint
#import "@preview/cetz:0.3.1"
#import "@preview/cetz-plot:0.1.0": plot, chart

#let bilancioConsuntivo = 12975
#let numSprint = state("numSprint", 0)

= Costi
Nella seguente sezione vengono riportati i preventivi per ogni sprint. I costi sono calcolati in base alle ore preventivate per ogni ruolo e al costo orario di ciascun ruolo. Alla fine di ogni sprint verrà riportato il consuntivo, ovvero le ore effettivamente impiegate per ogni ruolo e il costo effettivo. Mantenere sotto controllo i costi è fondamentale per garantire la sostenibilità del progetto e migliorare la pianificazione futura.
== RTB

=== Sprint 1
==== Preventivo
#let bressan = (0, 0, 0, 0, 0, 3)
#let corradin = (0, 0, 3, 0, 0, 0)
#let lazzarin = (0, 4, 0, 0, 0, 0)
#let salviato = (0, 0, 4, 0, 0, 0)
#let squarzoni = (3, 0, 0, 0, 0, 0)
#let tutino = (0, 0, 4, 0, 0, 0)
#let vallotto = (0, 0, 0, 0, 0, 3)

#let bilancioPreventivo = calcolaBilancio(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo)
#tabellaSprint(numSprint, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint1> \
#pieChartSprint(numSprint, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint1> \
- Spiegazione:
In questo primo sprint, prevediamo di studiare le tecnologie suggerite dall'azienda ed iniziare l'analisi dei requisiti. Il lavoro è stato distribuito in modo equo tra i membri del team, con un'attenzione particolare alla fase di analisi e alla stesura della documentazione. Le ore produttive preventivate non contano le ore di autoformazione, che vengono considerate ore di allenamento.
==== Consuntivo

I numeri tra parentesi indicano le variazioni rispetto al preventivo.
#let bressan = (0, 0, 0, 0, 0, "4 (+1)")
#let corradin = (0, 0, 3, 0, 0, 0)
#let lazzarin = (0, "5 (+1)", 0, 0, 0, 0)
#let salviato = (0, 0, "2 (-2)", 0, 0, 0)
#let squarzoni = ("4 (+1)", "1 (+1)", 0, 0, 0, "1 (+1)")
#let tutino = (0, "2 (+2)", "3 (-1)", 0, 0, 0)
#let vallotto = (0, 0, 0, 0, 0, "5 (+2)")

#let bilancioConsuntivo = calcolaBilancio(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo)
#tabellaSprint(numSprint, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
<tabella-ConsuntivoSprint1> \
#pieChartSprint(numSprint, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
<grafico-ConsuntivoSprint1> \
- Spiegazione:

=== Sprint 2
==== Preventivo

==== Consuntivo

== PB
