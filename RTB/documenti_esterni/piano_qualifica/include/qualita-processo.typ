#import "/template/template.typ": glossario
== Qualità di processo
#{
show figure: set block(breakable: true)
figure(
  table(
    columns: (0.6fr, 1.1fr, 2fr, 0.9fr, 0.75fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Descrizione*],[*Valore
       #linebreak()
       accettabile*], [*Valore #linebreak()ottimale*]
    ),
    [MPRO1],
    [#glossario[Earned Value] (EV)],
    [Misura il valore del lavoro effettivamente completato in un dato momento.],
    [\u{2A7E}0],
    [\u{2264} EAC],
    [MPRO2],
    [#glossario[Actual Cost] (AC)],
    [Misura i costi effettivamente sostenuti per svolgere le attività completate.],
    [\u{2A7E}0],
    [\u{2264} EAC],
    [MPRO3],
    [#glossario[Planned Value] (PV)],
    [Misura il valore del lavoro che doveva essere completato in un determinato momento secondo il piano di progetto.],
    [\u{2A7E}0],
    [\u{2264} BAC],
    [MPRO4],
    [#glossario[Cost Variance] (CV)],
    [Misura la differenza tra il valore e il costo del lavoro completato. Indica se il progetto è sotto o sopra il budget pianificato per il lavoro completato.],
    [\u{2A7E}-10%],
    [\u{2A7E}0],
    [MPRO5],
    [#glossario[Schedule \ Variance] (SV)],
    [Misura il valore del lavoro completato rispetto a quanto pianificato. Indica se il progetto è in anticipo, in ritardo o in linea rispetto alla pianificazione.],
    [\u{2A7E}-10%],
    [\u{2A7E}0],
    [MPRO6],
    [#glossario[Cost \ Performance \ Index] (CPI)],
    [Valuta l'efficienza dei costi di un progetto fino a un determinato momento mettendo in relazione il valore prodotto e i costi sostenuti.],
    [\u{00B1}10%],
    [\u{00B1}0%],
    [MPRO7],
    [#glossario[Estimate at \ completion] (EAC)],
    [Stima il costo totale del progetto sulla base delle performance attuali.],
    [preventivato \u{00B1}5%], 
    [\u{003D} preventivato],
    [MPRO8],
    [#glossario[Estimate to \ complete] (ETC)],
    [Stima il costo rimanente necessario per completare il progetto.],
    [\u{2A7E}0],
    [\u{2264} EAC],
    [MPRO9],
    [#glossario[Schedule \ Performance \ Index] (SPI)],
    [Misura l’efficienza del progetto mettendo in relazione il lavoro completato con quello pianificato.],
    [\u{00B1}10%],
    [\u{00B1}0%],
    [MPRO10],
    [#glossario[Requirements Stability Index] (RSI)],
    [Misura la stabilità dei requisiti durante il ciclo di vita. Indica quanto frequentemente cambiano i requisiti.],
    [\u{2A7E}80%],
    [100%],
    [MPRO11], 
    [Rischi \ non previsti],
    [Misura la quantità di rischi non previsti, che hanno causato problemi durante lo svolgimento del progetto.],
    [\u{2A7D}4], 
    [0],
    [MPRO12], 
    [Code Coverage],
    [Misura la percentuale di righe di codice coperte dai test.],
    [\u{2A7E}75%], 
    [100%],
    [MPRO13],
    [Test superati],
    [Misura la percentuale di test superati.],
    [\u{2A7E}90%],
    [100%],
    [MPRO14], 
    [Metriche \ accettabili],
    [Misura la percentuale di metriche che hanno raggiunto il valore accettabile.],
    [\u{2A7E}90%], 
    [100%],
    [MPRO15], 
    [Metriche \ ottimali],
    [Misura la percentuale di metriche che hanno raggiunto il valore ottimale.],
    [\u{2A7E}30%], 
    [100%],
  ), 
  caption: [Qualità di processo - Metriche e indici di qualità.]
)} <tabella-qualita-processo>