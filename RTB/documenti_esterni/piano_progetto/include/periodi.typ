#import "/template/template.typ": glossario,team

= Periodi
In questa sezione verranno elencati i periodi di lavoro suddivisi per le milestone più rilevanti del progetto didattico. Ogni periodo è composto da più sprint dato che abbiamo deciso di utilizzare una metodologia di lavoro agile, prendendo come riferimento il modello SCRUM. 
== RTB
In seguito all'assegnazione del capitolato, abbiamo constatato che fosse prematuro cominciare il primo sprint senza avere avuto un primo contatto con il proponente. In attesa quindi dell'incontro con l'azienda VarGroup, la prima settimana dall'11/11/2024 al 17/11/2024 è stata dedicata alla stesura della struttura dei documenti e alla definizione dei ruoli per il primo sprint. Questo periodo "pre-sprint" ci ha permesso di iniziare a prendere confidenza con i vari ruoli svolgendo un allenamento propedeutico al vero e proprio sprint.
=== Sprint 1
- Durata: 18/11/2024 - 06/12/2024\
- Pianificazione: 
Data la scarsa conoscenza del dominio, il primo sprint avrà una durata maggiore a quelli successivi e verrà dedicato allo studio delle tecnologie necessarie per lo sviluppo del progetto. In accordo con il proponente, abbiamo deciso quindi di dare maggior priorità all'autoformazione sulle nuove tecnologie. Sono anche stati concordati dei corsi di formazione in presenza con l'azienda, nelle date 26/11/2024 e 28/11/2024, ed un ulteriore corso a distanza il giorno 03/12/2024. Il tempo rimanente verrà poi dedicato alla stesura di una parte del documento di analisi dei requisiti. Inoltre andremo ad aggiornare il piano di progetto, in particolare la sezione “Analisi dei rischi”, ed il documento riguardante le norme di progetto.\

- Ruoli:
  - responsabile: #team.M\;
  - amministratore: #team.T\;
  - analista: #team.G, #team.L, #team.S\;
  - verificatore: #team.A, #team.C.

- Issues:
  - #link("https://github.com/techminds-unipd/docs/issues/56")[Issue \#56]: Sostituire termini del glossario nei documenti;
  - #link("https://github.com/techminds-unipd/docs/issues/57")[Issue \#57]: Miglioramenti grafici documentazione;
  - #link("https://github.com/techminds-unipd/docs/issues/60")[Issue \#60]: Autoformazione tecnologie proposte dall'azienda;
    - #link("https://github.com/techminds-unipd/docs/issues/64")[Issue \#64]: React;
    - #link("https://github.com/techminds-unipd/docs/issues/65")[Issue \#65]: Typescript;
    - #link("https://github.com/techminds-unipd/docs/issues/66")[Issue \#66]: Node.js;
    - #link("https://github.com/techminds-unipd/docs/issues/67")[Issue \#67]: MongoDB;
  - #link("https://github.com/techminds-unipd/docs/issues/62")[Issue \#62]: Redazione diagrammi dei casi d'uso;
  - #link("https://github.com/techminds-unipd/docs/issues/68")[Issue \#68]: Redazione sprint 1 in piano di progetto;
  - #link("https://github.com/techminds-unipd/docs/issues/69")[Issue \#69]: Inizio analisi dei rischi in piano di progetto;
  - #link("https://github.com/techminds-unipd/docs/issues/70")[Issue \#70]: Aggiornamento norme di progetto.

- Diagramma di Gantt:
//todo inserire screenshot del diagramma di Gantt 

- Review:
Sono stati completati quasi tutti i task presenti nello sprint backlog tranne due task relativi alle tecnologie, ovvero Typescript #link("https://github.com/techminds-unipd/docs/issues/65")[\#65] e MongoDB #link("https://github.com/techminds-unipd/docs/issues/67")[\#67], entrambi sotto-task del task #link("https://github.com/techminds-unipd/docs/issues/60")[\#60].
#linebreak()Nel complesso in questo primo sprint si è sottostimato un po' lo studio delle tecnologie.

- Retrospettiva:
Viste le varie difficoltà nella scrittura dei casi d'uso (e non solo) sono state prese le seguenti decisioni:
#list(
    indent: 10pt,
    marker: [‣],
    [è possibile rompere le convenzioni interne quando potrebbe agevolare o velocizzare i lavori. Ad esempio sarà permesso creare un branch di feature per l'analisi dei requisiti da usare come branch padre per i branch di feature dell'analisi, rompendo la convenzione del GitHub Flow;],
    [per approfondire i casi d'uso si userà ad esempio il frontend come attore e il backend come sistema, in modo da non andare in conflitto con la definizione di attore (se il sistema non fosse solo il backend, in questo caso l'attore risulterebbe parte del sistema);],
    [nei sotto-casi d'uso, ovvero quelli inclusi in altri con la clausola UML \<\<include\>\>, l'attore principale sarà lo stesso del caso d'uso padre;],
    [nelle estensioni di un caso d'uso e nei sotto-casi d'uso non si ripetono le azioni avvenute nello use case da cui derivano, ma piuttosto vanno indicate con un link all'azione;],
    [la verifica risulta molto onerosa dato che ci sono tante convenzioni interne per la scrittura dei documenti, quindi verrà creata una checklist per agevolare i verificatori.]
)

=== Sprint 2

== PB

=== Sprint 1

=== Sprint 2