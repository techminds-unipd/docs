#import "/template/template.typ": lettera

#show: lettera.with(
  title: "Lettera di presentazione RTB",
  sommario: "Candidatura per Requirements and Technology Baseline."
)
#set list(indent: 1em)

Egregio prof. Vardanega,
#linebreak()
Egregio prof. Cardin,

con la presente lettera il gruppo Tech Minds è lieto di comunicarVi la propria candidatura alla
revisione di avanzamento Requirements and Technology Baseline, per il capitolato denominato:

#align(center, link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[C3 - _Automatizzare le routine digitali tramite l’intelligenza generativa_])

proposto dall'azienda VarGroup.

Tutta la documentazione riguardante il lavoro svolto è esposta nel sito web del nostro gruppo:
#align(center, link("https://techminds-unipd.github.io/docs/"))

All'interno della sezione "Requirements and Technology Baseline", oltre alla presente lettera, sono presenti i seguenti documenti:
- Documentazione esterna:
  - Analisi dei requisiti;
  - Piano di progetto;
  - Piano di qualifica.
- Documentazione interna:
  - Glossario;
  - Norme di progetto.
- Verbali esterni;
- Verbali interni.

#linebreak()
Viene inoltre reso disponibile il codice sorgente del Proof of Concept:
#align(center, link("https://github.com/techminds-unipd/PoC"))

Per quanto concerne il Preventivo a Finire, sono state apportate alcune modifiche rispetto a quanto definito
in fase di Candidatura. Riportiamo qui sotto un prospetto riassuntivo:
#figure(
    table(
        columns: (1fr,)*5,
        align: center+horizon,
            fill: (x, y) => if (y==0) { rgb("#f16610") } else { if calc.even(y) { gray.lighten(50%)} else { white }},
        table.header([*Ruolo*],[*Costo orario*],[*Stima oraria*],[*Percentuale*],[*Stima costo*]),
        [Responsabile], [30 #sym.euro], [40 #text(rgb("#204680"))[(-15)]], [6%], [1.200 #sym.euro],
        [Amministratore], [20 #sym.euro], [100 #text(rgb("#204680"))[(+55)]], [15%], [2.000 #sym.euro],
        [Analista], [25 #sym.euro], [55 #text(rgb("#204680"))[(-40)]], [8%], [1.375 #sym.euro],
        [Progettista], [25 #sym.euro], [100], [15%], [2.500 #sym.euro],
        [Programmatore], [15 #sym.euro], [190], [29%], [2.850 #sym.euro],
        [Verificatore], [15 #sym.euro], [180], [27%], [2.700 #sym.euro],
        table.cell([*Costo Totale*], colspan: 4, fill: white), table.cell([*12.625 #sym.euro*], fill: white)
    ),
    caption: "Nuova ripartizione oraria tra ruoli."
)

Dopo la nuova ripartizione oraria tra i ruoli, il costo di completamento del progetto previsto è diminuito da *12.975 #sym.euro* a *12.625 #sym.euro*. A causa di impegni accademici, i componenti del gruppo comunicano lo spostamento della data di consegna del progetto dal *28 marzo 2025* al *4 aprile 2025*.


#linebreak()
Grazie per la disponibilità, #linebreak()
Il gruppo Tech Minds