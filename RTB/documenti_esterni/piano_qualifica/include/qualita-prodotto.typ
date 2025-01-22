#import "/template/template.typ":glossario

== Qualità di prodotto

=== Caratteristica di qualità
==== Funzionalità 
==== Affidabilità
==== Manutenibilità
==== Efficienza
==== Usabilità
==== Portabilità


/*
Di seguito sono elencate le caratteristiche che contraddistinguono un prodotto software di qualità, misurabile dalle metriche sotto descritte:
- MD ("Metriche Documentazione"): metriche relative alla qualità della documentazione;
- MSW ("Metriche Software"): metriche relative alla qualità del software.

== Qualità dell'architettura 

== Qualità della documentazione
Nella @tabella-MDa sono elencati gli obiettivi che ci poniamo di raggiungere nella documentazione che forniamo; questi obiettivi sono rappresentati da delle metriche che garantiscano una valutazione oggettiva del documento. Inoltre nella @tabella-MDb abbiamo elencato il valori di accettazione e ottimalità di ciascuna metrica.

#figure(
  table(
    columns: (auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Obiettivo*], [*Descrizione*], [*Metriche*],
    ),
    [Correttezza linguistica],
    [I documenti devono essere privi di errori grammaticali e ortografici.],
    [MD1], 
    [Leggibilità],
    [I documenti devono essere chiari e comprensibili per l'utente.],
    [MD2], 
    [Accessibilità],
    [I documenti devono contenere degli aiuti per le categorie di utenti con disabilità.],
    [MD3]
  ), 
  caption: [elenco degli obiettivi, descrizione e codice delle metriche.]
) <tabella-MDa>


=== Metriche utilizzate
#figure(
  table(
    columns: (auto, auto, auto, auto),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
    inset: 10pt,
    align: horizon,
    table.header(
      [*Codice*], [*Nome metrica*], [*Valore accettabile*], [*Valore ottimale*]
    ),
    [MD1], 
    [Errori ortografici],
    [4%], 
    [0%], 
    [MD2], 
    [#glossario[Indice di Gulpease]],
    [\u{2A7E}40], 
    [\u{2A7E}70], 
    [MD3],
    [Caption in tabelle e figure],
    [100%],
    [100%]
  ), 
  caption: [codice delle metriche con valori soglia accettabili e ottimali.]
) <tabella-MDb>

*/