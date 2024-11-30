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
#let bressan = (20, 1, 10, 10, 10, 10)
#let corradin = (1, 0, 0, 0, 0, 0)
#let lazzarin = (0, 1, 0, 0, 0, 0)
#let salviato = (0, 0, 0, 0, 0, 0)
#let squarzoni = (0, 0, 0, 1, 0, 0)
#let tutino = (0, 0, 0, 0, 0, 0)
#let vallotto = (0, 0, 0, 0, 1, 0)

#let bilancioPreventivo = calcolaBilancio(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo)
#tabellaSprint(numSprint, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint1> \
#pieChartSprint(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto)
==== Consuntivo
I numeri tra parentesi indicano le variazioni rispetto al preventivo.
#let bressan = ("25 (+5)", "10 (-1)", 10, 10, 10, 10)
#let corradin = (1, 0, 0, 0, 0, 0)
#let lazzarin = (1, 1, 0, 0, 0, 0)
#let salviato = (0, 0, 0, 0, 0, 0)
#let squarzoni = (0, 0, 0, 1, 0, 0)
#let tutino = (10, 0, 0, 0, 0, 0)
#let vallotto = (0, 0, 0, 0, 1, 0)

#let bilancioConsuntivo = calcolaBilancio(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo)
#tabellaSprint(numSprint, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
<tabella-ConsuntivoSprint1>
=== Sprint 2
==== Preventivo

==== Consuntivo

== PB
