#import "/template/template.typ": lettera

#show: lettera.with(
  title: "Lettera di presentazione PB",
  sommario: "Candidatura per Product Baseline."
)
#set list(indent: 1em)

Egregio prof. Vardanega,
#linebreak()
Egregio prof. Cardin,

con la presente lettera il gruppo Tech Minds è lieto di comunicarVi la propria candidatura alla
revisione di avanzamento Product Baseline, per il capitolato denominato:

#align(center, link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[C3 - _Automatizzare le routine digitali tramite l’intelligenza generativa_ #footnote(link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf"))])


proposto dall'azienda VarGroup.

Tutta la documentazione riguardante il lavoro svolto è esposta nel sito web del nostro gruppo:
#align(center, link("https://techminds-unipd.github.io/docs/"))

All'interno della sezione "Product Baseline", oltre alla presente lettera, sono inclusi i seguenti documenti:
- Documentazione esterna:
  - Analisi dei requisiti;
  - Piano di progetto;
  - Piano di qualifica;
  - Specifica tecnica;
  - Manuale utente.
- Documentazione interna:
  - Glossario;
  - Norme di progetto.
- Verbali esterni;
- Verbali interni.

#linebreak()
Viene inoltre reso disponibile il codice sorgente del Minimum Viable Product:
#align(center, link("https://github.com/techminds-unipd/AgentFlow"))

Riportiamo qui sotto un prospetto riassuntivo che contiene i costi totali sostenuti:
#figure(
    table(
        columns: (1fr,)*5,
        align: center+horizon,
            fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        table.header([*Ruolo*],[*Costo orario*],[*Stima oraria*],[*Percentuale*],[*Stima costo*]),
        [Responsabile], [30 #sym.euro], [37], [5%], [1.110 #sym.euro],
        [Amministratore], [20 #sym.euro], [124], [19%], [2.480 #sym.euro],
        [Analista], [25 #sym.euro], [59], [9%], [1.475 #sym.euro],
        [Progettista], [25 #sym.euro], [99], [15%], [2.475 #sym.euro],
        [Programmatore], [15 #sym.euro], [150], [23%], [2.250 #sym.euro],
        [Verificatore], [15 #sym.euro], [190], [29%], [2.850 #sym.euro],
        table.cell([*Costo Totale*], colspan: 4, fill: white), table.cell([*12.640 #sym.euro*], fill: white)
    ),
    caption: "Costi totali sostenuti."
)

Il costo effettivo di completamento del progetto è diminuito dai *12.975 #sym.euro* inizialmente preventivati a *12.640 #sym.euro*. I tempi previsti di consegna sono stati rispettati, concludendo il progetto entro il *4 aprile 2025*.


#linebreak()
Grazie per la disponibilità, #linebreak()
Il gruppo Tech Minds