#import "/template/template.typ": glossario,team, tabellaSprint, pieChartSprint
#import "@preview/timeliney:0.1.0"
#import "../costi.typ": getSprintCostsSection

=== Sprint 3
- Durata: 23/12/2024 - 17/01/2025

==== Pianificazione
In questo terzo sprint continueremo a concentrarci principalmente sulla scrittura dei casi d'uso nell'analisi dei requisiti e sul PoC, senza tralasciare i task arretrati. La durata questa voltà sarà di tre settimane, che secondo le nostre previsioni dovrebbe essere adatta al periodo delle feste natalizie, periodo in cui vi sarà una minore disponibilità dei componenti del gruppo.

- Ruoli:
  - responsabile: #team.A\;
  - amministratore: #team.S\;
  - analista: #team.C\;
  - programmatore: #team.T, #team.G\;
  - verificatore: #team.L, #team.M.

- Issues:
    - PoC
        - #link("https://github.com/techminds-unipd/PoC/issues/3")[Issue \#3]: Inizio implementazione agenti nel backend (non completata durante lo sprint 2);
        - #link("https://github.com/techminds-unipd/PoC/issues/8")[Issue \#8]: Gestione collegamento servizi Google.
    
    - Analisi dei requisiti
        - #link("https://github.com/techminds-unipd/docs/issues/149")[Issue \#149]: UC blocco Calendar;
        - #link("https://github.com/techminds-unipd/docs/issues/150")[Issue \#150]: UC blocco Docs;
        - #link("https://github.com/techminds-unipd/docs/issues/151")[Issue \#151]: UC approfondimento esecuzione workflow;
        - #link("https://github.com/techminds-unipd/docs/issues/152")[Issue \#152]: UC creazione workflow;
        - #link("https://github.com/techminds-unipd/docs/issues/153")[Issue \#153]: UC modifica workflow;
        - #link("https://github.com/techminds-unipd/docs/issues/154")[Issue \#154]: Fix UC Visualizzazione blocchi configurati e avviso servizi collegati.
    

    - Piano di Progetto
        - #link("https://github.com/techminds-unipd/docs/issues/155")[Issue \#155]: Preventivo sprint 3;
        - #link("https://github.com/techminds-unipd/docs/issues/156")[Issue \#156]: Consuntivo sprint 2;

    - Piano di Qualifica
        - #link("https://github.com/techminds-unipd/docs/issues/109")[Issue \#109]: Fix piano di qualifica (non completata durante lo sprint 2);
        - #link("https://github.com/techminds-unipd/docs/issues/111")[Issue \#111]: Redigere nuove sezioni piano di qualifica (non completata durante lo sprint 2);

    - Norme di progetto
       - #link("https://github.com/techminds-unipd/docs/issues/157")[Issue \#157]: Redigere sezione 2.2 ndp;
       - #link("https://github.com/techminds-unipd/docs/issues/158")[Issue \#158]: Redigere sezione 3.4, 3.5;
       - #link("https://github.com/techminds-unipd/docs/issues/159")[Issue \#159]: aggiornamento ndp;
    
    - Varie
      - #link("https://github.com/techminds-unipd/docs/issues/72")[Issue \#72]: Aggiungere termini al glossario(lasciata in sospeso dallo sprint 1);
      - #link("https://github.com/techminds-unipd/docs/issues/160")[Issue \#160]: Fix script python.



==== Costi

===== Preventivo

#let (preventivo, consuntivo) = getSprintCostsSection(sprint_number: 3)

#let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo) = preventivo

#tabellaSprint(3, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioPreventivo, false)
<tabella-PreventivoSprint3> \

#pieChartSprint(3, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, false)
<grafico-PreventivoSprint3> \

#if consuntivo != none [

    #let (bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo) = consuntivo

    ===== Consuntivo
    I numeri tra parentesi indicano le variazioni rispetto al preventivo.

    #tabellaSprint(3, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancioConsuntivo, true)
    <tabella-ConsuntivoSprint3> \
    #pieChartSprint(3, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, true)
    <grafico-ConsuntivoSprint3> \
]