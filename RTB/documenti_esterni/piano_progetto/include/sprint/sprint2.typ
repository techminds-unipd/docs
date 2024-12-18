#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection

=== Sprint 2
- Durata: 09/12/2024 - 20/12/2024

==== Pianificazione
In questo secondo sprint ci concentreremo principalmente sulla scrittura dei casi d'uso nell'analisi dei requisiti e sul PoC. La durata questa voltà sarà di due settimane, che secondo le nostre previsioni dovrebbe essere adatta visto che il tempo dedicato allo studio delle nuove tecnologie dovrebbe essere meno dello scorso sprint. Riguardo al PoC si è deciso di avere una repo unica piuttosto che suddividerlo in più repo, visto che abbiamo fatto delle prove ed è risultato semplice suddividere in directory le parti per poi andare a implementare la build automation.

- Ruoli:
  - responsabile: #team.G\;
  - amministratore: #team.C\;
  - analista: #team.M, #team.A\;
  - programmatore: #team.T\;
  - verificatore: #team.L, #team.S.

- Issues:
    - PoC
        - #link("https://github.com/techminds-unipd/PoC/issues/1")[Issue \#1]: Inizio implementazione frontend workflow;
        - #link("https://github.com/techminds-unipd/PoC/issues/2")[Issue \#2]: Inizio implementazione backend;
        - #link("https://github.com/techminds-unipd/PoC/issues/3")[Issue \#3]: Inizio implementazione agenti nel backend.

    - Autoformazione
        - #link("https://github.com/techminds-unipd/docs/issues/65")[Issue \#65]: Typescript (non completata durante lo sprint 1).

    - Analisi dei requisiti
        - #link("https://github.com/techminds-unipd/docs/issues/89")[Issue \#89]: User Story 6;
        - #link("https://github.com/techminds-unipd/docs/issues/104")[Issue \#104]: Fix generale use case;
        - #link("https://github.com/techminds-unipd/docs/issues/105")[Issue \#105]: Scrivere nuove sezioni in analisi dei requisiti.

    - Piano di Progetto
        - #link("https://github.com/techminds-unipd/docs/issues/83")[Issue \#83]: Sistemare il paragrafo spiegazioni;
        - #link("https://github.com/techminds-unipd/docs/issues/106")[Issue \#106]: Aggiornare piano di progetto (sezione sprint 1);
        - #link("https://github.com/techminds-unipd/docs/issues/110")[Issue \#110]: Aggiungere info sprint 2.

    - Piano di Qualifica
        - #link("https://github.com/techminds-unipd/docs/issues/109")[Issue \#109]: Fix piano di qualifica;
        - #link("https://github.com/techminds-unipd/docs/issues/111")[Issue \#111]: Redigere nuove sezioni piano di qualifica;
        - #link("https://github.com/techminds-unipd/docs/issues/112")[Issue \#112]: Redigere "Pianificazione" in piano di progetto.

    - Norme di progetto
        - #link("https://github.com/techminds-unipd/docs/issues/113")[Issue \#113]: Redigere "Processi organizzativi" in norme di progetto;
        - #link("https://github.com/techminds-unipd/docs/issues/114")[Issue \#114]: Redigere "Processi primari" in norme di progetto.

    - Automazione
        - #link("https://github.com/techminds-unipd/docs/issues/107")[Issue \#107]: Creazione script check_glossario.py;
        - #link("https://github.com/techminds-unipd/docs/issues/108")[Issue \#108]: Creazione script indice_gulpease.py.
    - Varie
        - #link("https://github.com/techminds-unipd/docs/issues/115")[Issue \#115]: Creazione checklist per i verificatori.


==== Costi

===== Preventivo

#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 2)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo

#tabellaSprint(2, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint2> \

#pieChartSprint(2, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint2> \

#if consuntivo != none [

    #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo

    ===== Consuntivo
    I numeri tra parentesi indicano le variazioni rispetto al preventivo.

    #tabellaSprint(2, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
    <tabella-ConsuntivoSprint2> \
    #pieChartSprint(2, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
    <grafico-ConsuntivoSprint2> \
]