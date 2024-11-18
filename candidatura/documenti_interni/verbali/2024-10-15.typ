#import "/template/template.typ": verbale
#import "/template/template.typ": team

#show: verbale.with(
  title: "Verbale interno del 15/10/2024",
  sommario: "Questo verbale documenta la prima riunione interna avvenuta il 15/10/2024",
  changelog: (
    "1.2", "05/11/2024", "Modifica posizione e struttura changelog ", team.M, team.G + linebreak() + team.C,
    "1.1", "27/10/2024", "Modifica prima pagina, integrazione contenuto mancante", team.T, team.G + linebreak() + team.C,
    "1.0", "15/10/2024", "Prima versione", "Partecipanti", team.G + linebreak() + team.C
  ),
  durata_luogo: ("15:10", "16:15", "chiamata Discord"),
  partecipanti: (team.T, team.L, team.M, team.C, team.G, team.A),
  ordine_giorno: ("Decidere i principali canali di comunicazione;", "Discutere dei capitolati presentatati;",
                 "Trovare un nome e un logo;", "Creare una mail;", "Creare una repository in cui inserire la documentazione;", "Varie ed eventuali."),
  riassunto: [Primo incontro interno fra i membri del team da remoto. Per prima cosa sono state discusse le opinioni di ciascuno sui capitolati, individuando le preferenze attraverso una votazione. Successivamente sono stati scelti di comune accordo nome, logo e indirizzo di posta elettronica del team. È inoltre stata creata #link("https://github.com/techminds-unipd")[l’organizzazione] su GitHub che conterrà le varie repository. Ciascun componente del team si impegna a leggere attentamente i capitolati per trarre eventuali domande da porre ai proponenti. #parbreak()
Fissato prossimo incontro il giorno 17/10/2024 alle 14:45.],
  decisioni: (),
  firma: false
)