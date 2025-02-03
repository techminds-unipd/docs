//#glossario[processo]
== Qualità di processo
#{
show figure: set block(breakable: true)
figure(
  table(
    columns: (0.75fr, 1.5fr, 2fr, 1fr, 1fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*],[*Valore
       #linebreak()
       accettabile*], [*Valore #linebreak()ottimale*]
    ),
    [MPC1],
    [Earned Value (EV)],
    [Misura il valore del lavoro effettivamente completato fino a quel momento.],
    [\u{2A7E}0],
    [\u{2264} EAC],
    [MPC2],
    [Actual Cost (AC)],
    [Misura i costi effettivamente sostenuti per svolgere le attività completate.],
    [\u{2A7E}0],
    [\u{2264} EAC],
    [MPC3],
    [Planned Value (PV)],
    [Misura il valore del lavoro che doveva essere completato in un determinato momento secondo il piano di progetto.],
    [\u{2A7E}0],
    [\u{2264} BAC],
    [MPC4],
    [Cost Variance (CV)],
    [Misura la differenza tra il valore e il costo del lavoro completato. Indica se il progetto è sotto o sopra il budget pianificato per il lavoro completato.],
    [\u{2A7E}-10%],
    [\u{2A7E}0],
    [MPC5],
    [Schedule Variance (SV)],
    [Misura il valore del lavoro completato rispetto a quanto pianificato. Indica se il progetto è in anticipo, in ritardo o in linea rispetto alla pianificazione.],
    [\u{2A7E}-10%],
    [\u{2A7E}0],
    [MPC6],
    [Cost Performance Index (CPI)],
    [Valuta l'efficienza dei costi di un progetto. Misura il rapporto tra il valore del lavoro completato (EV) e il costo effettivo del lavoro completato (AC).],
    [\u{00B1}10%],
    [\u{00B1}0%],
    [MPC7],
    [Estimate at completion (EAC)],
    [Stima il costo totale del progetto sulla base delle performance attuali.],
    [\u{00B1}5% rispetto a quanto preventivato], 
    [Come preventivato],
    [MPC8],
    [Estimate to complete (ETC)],
    [Stima il costo rimanente necessario per completare il progetto.],
    [\u{2A7E}0],
    [\u{2264} EAC],
    [MPC9],
    [Requirements Stability Index (RSI)],
    [Misura la stabilità dei requisiti durante il ciclo di vita. Indica quanto i requisiti],
    [\u{2A7E}80%],
    [100%],
    [MR1], 
    [Rischi non previsti],
    [TODO: aggiungere descrizione],
    [\u{2A7D}4], 
    [0],
    [MV1], 
    [Code Coverage],
    [TODO: aggiungere descrizione],
    [\u{2A7E}75%], 
    [100%],
    [MV2],
    [Percentuale di test passati],
    [TODO: aggiungere descrizione],
    [\u{2A7E}90%],
    [100%],
    [MQ1], 
    [Percentuale di metriche soddisfatte],
    [TODO: aggiungere descrizione],
    [\u{2A7E}80%], 
    [100%],
    [MPI1], 
    [Variazione del costo preventivato per uno sprint],
    [TODO: aggiungere descrizione],
    [\u{2A7D}5%], 
    [\u{2A7D}0%],
    [MPI2],
    [Variazione delle tempistiche di una baseline],
    [TODO: aggiungere descrizione],
    [\u{2A7D}10%], 
    [\u{2A7D}0%],
    [MPI3],
    [Percentuale di attività (issue) completate in uno sprint],
    [TODO: aggiungere descrizione],
    [\u{2A7E}90%], 
    [100%],
    [MMI1], 
    [Percentuale di metriche che non hanno raggiunto il valore accettabile],
    [TODO: aggiungere descrizione],
    [\u{2A7D}5%], 
    [0%],
    [MMI2], 
    [Percentuale di metriche che hanno raggiunto il valore ottimale],
    [TODO: aggiungere descrizione],
    [\u{2A7E}30%], 
    [100%],
  ), 
  caption: [Tabella con codice, nome, descrizione, valori soglia accettabili e ottimali delle metriche per la qualità dei processi.]
)} <tabella-qualita-processo>