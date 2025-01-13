#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection

=== Sprint 4
- Durata: 13/01/2025 - 31/01/2025

==== Pianificazione
In questo quarto sprint ci concentreremo sulla redazione dei documenti necessari alla prima revisione RTB, dando una particolare priorità alla stesura del documento di piano di qualifica. Dato che questo periodo coincide con la sessione d'esami, questo sprint avrà durata di tre settimane anziché due, così da dilatare il tempo a disposizione per completare i vari compiti e non sovraccaricare i membri del gruppo.

- Ruoli:
  - responsabile: #team.S\;
  - amministratore: #team.M, #team.L, #team.A\;
  - analista: #team.T\;
  - verificatore: #team.G, #team.C.

- Issue:
  - Analisi dei Requisiti
    - #link("https://github.com/techminds-unipd/docs/issues/189")[Issue \#189]: UC eliminazione workflow;
    - #link("https://github.com/techminds-unipd/docs/issues/190")[Issue \#190]: Tabella requisiti qualitativi;
    - #link("https://github.com/techminds-unipd/docs/issues/191")[Issue \#191]: Tabella requisiti di vincolo;
    - #link("https://github.com/techminds-unipd/docs/issues/200")[Issue \#200]: Aggiungere campo descrizione nella sezione 1.1.

  - Piano di Progetto
    - #link("https://github.com/techminds-unipd/docs/issues/187")[Issue \#187]: Redigere consuntivo sprint 3;
    - #link("https://github.com/techminds-unipd/docs/issues/188")[Issue \#188]: Redigere preventivo sprint 4.

  - Piano di Qualifica
    - #link("https://github.com/techminds-unipd/docs/issues/192")[Issue \#192]: Redigere sezione qualità di prodotto;
    - #link("https://github.com/techminds-unipd/docs/issues/193")[Issue \#193]: Redigere sezione qualità di processo;
    - #link("https://github.com/techminds-unipd/docs/issues/194")[Issue \#194]: Redigere sezione qualità per obiettivo (processi primari);
    - #link("https://github.com/techminds-unipd/docs/issues/195")[Issue \#195]: Redigere sezione qualità per obiettivo (processi di supporto);
    - #link("https://github.com/techminds-unipd/docs/issues/196")[Issue \#196]: Redigere sezione qualità per obiettivo (processi organizzativi).

  - Norme di Progetto
    - #link("https://github.com/techminds-unipd/docs/issues/197")[Issue \#197]: Redigere sezione gestione operativa;
    - #link("https://github.com/techminds-unipd/docs/issues/198")[Issue \#198]: Redigere sezione accertamento della qualità.

==== Diagramma di Gantt // TODO
Questo diagramma mostra come sono avvenute le attività nell'arco temporale dello sprint.
Il diagramma conteggia solamente i giorni produttivi, tralasciando quindi le festività e i fine settimana.
#linebreak()I colori sono significativi:
#list(
    indent: 10pt,
[il #underline("grigio", stroke: 1pt + gray, evade: false) indica l'arco di tempo preventivato;],
[il #underline("rosso", stroke: 1pt + red, evade: false) indica l'arco di tempo effettivo;],
[il #underline("nero", stroke: 1pt + black, evade: false) indica il range complessivo di un gruppo di task.]
)

==== Conclusioni // TODO

==== Retrospettiva // TODO

==== Costi

===== Preventivo

#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 4)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo

#tabellaSprint(4, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint4> \

#pieChartSprint(4, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint4> \

// TODO
#if consuntivo != none [

    #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo

    ===== Consuntivo
    I numeri tra parentesi indicano le variazioni rispetto al preventivo.

    #tabellaSprint(4, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
    <tabella-ConsuntivoSprint4> \
    #pieChartSprint(4, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
    <grafico-ConsuntivoSprint4> \
]
