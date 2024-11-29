#let g = (
    name: "Tech Minds",
    mail: "techminds.unipd@gmail.com",
    logo: "assets/logo_upscaled.png",
)

#let team = (
    A: "Bressan Alessandro",
    S: "Corradin Samuele",
    T: "Lazzarin Tommaso",
    L: "Salviato Leonardo",
    M: "Squarzoni Matteo",
    G: "Tutino Giuseppe",
    C: "Vallotto Caterina",
)

#let documento(
    title: str,
    sommario: str,
    changelog: array,
    body
) = {
    set heading(numbering: "1.1")
    set document(author: "Tech Minds", title: title)
    set page(numbering: "1")
    set align(center)
    show link: underline
    show link: set text(rgb("#f16610"))

    parbreak()

    image(g.logo, width: 80%)
    text(20pt, title, weight: "bold")
    parbreak()
    text(link("mailto:"+g.mail))
    parbreak()
    text(10pt, "Sommario", weight: "bold")
    linebreak()
    text(10pt, sommario)

    pagebreak()

    set align(left)

    text("Changelog", weight: "bold")

    table(
        columns: 5,
        align: center+horizon,
        table.header([*Versione*],[*Data*],[*Descrizione*],[*Autore*],[*Verificatore*]),
        ..changelog
    )

    outline(title: "Indice", indent: true)

    pagebreak()

    body
}

#let verbale(
    title: str,
    sommario: str,
    changelog: array,
    durata_luogo: array,
    partecipanti: array,
    ordine_giorno: array,
    riassunto: content,
    decisioni: array,
    firma: bool,
    body
) = {
    documento(title: title, sommario: sommario, changelog: changelog, [])

    set heading(numbering: "1.1")
    set page(numbering: "1")
    show link: underline
    show link: set text(rgb("#f16610"))

    durata_luogo.at(0) = "Inizio: " + durata_luogo.at(0)
    durata_luogo.at(1) = "Fine: " + durata_luogo.at(1)
    durata_luogo.at(2) = "Luogo: " + durata_luogo.at(2)

    [= Informazioni introduttive]

    [== Durata e luogo]
    list(..durata_luogo, indent: 15pt)

    [== Partecipanti]
    list(..partecipanti, indent: 15pt)

    [= Contenuto della riunione]

    [== Ordine del giorno]
    enum(..ordine_giorno, indent: 15pt)

    [== Riassunto]
    text(riassunto)

    if decisioni.len() != 0 {
        [== Decisioni prese]
        for value in decisioni {
            list(value.at(0) + list(..value.slice(1)), indent: 15pt)
        }
    }

    if firma {
       align(bottom + right, text("Il proponente", weight: "bold") + v(2%) + line(length: 30%))
    }

    body
}


#let lettera(
    title: str,
    sommario: str,
    body
) = {
    set heading(numbering: "1.1")
    set document(author: "Tech Minds", title: title)
    set page(numbering: "1")
    set align(center)
    show link: underline
    show link: set text(rgb("#f16610"))

    parbreak()

    image(g.logo, width: 80%)
    text(20pt, title, weight: "bold")
    parbreak()
    text(link("mailto:"+g.mail))
    parbreak()
    text(10pt, "Sommario", weight: "bold")
    linebreak()
    text(10pt, sommario)

    linebreak()
    linebreak()
    linebreak()

    let frame(stroke) = (x, y) => (
      left: if x > 0 { 0pt } else { stroke },
      right: stroke,
      top: if y < 2 { stroke } else { 0pt },
      bottom: stroke,
    )

    text("Componenti", weight: "bold")
    table(
        columns: (18%,)*3,
        align: center+horizon,
        stroke: frame(black),
        table.header([*Nome*],[*Cognome*],[*Matricola*]),
        "Alessandro", "Bressan", "1224823",
        "Samuele", "Corradin", "2068235",
        "Tommaso", "Lazzarin", "2075529",
        "Leonardo", "Salviato", "2068222",
        "Matteo", "Squarzoni", "2068240",
        "Giuseppe", "Tutino", "2075515",
        "Caterina", "Vallotto", "2076434"
    )

    set align(left)
    pagebreak()

    body
}

#let glossario(term, color: rgb("#c30000")) = {
  text(color, style: "italic", box[#term])
}


// template per tabelle sprint in piano_progetto
#let calcoloTotaleOre(
  bressan: array,
  corradin: array,
  lazzarin: array,
  salviato: array,
  squarzoni: array,
  tutino: array,
  vallotto: array
) = {
  let totaleOre = ()
  for i in array.range(0, 6) {
    let totOre = (bressan.at(i) + corradin.at(i) + lazzarin.at(i) + salviato.at(i) + squarzoni.at(i) + tutino.at(i) + vallotto.at(i))
    totaleOre.push(totOre)
  }
  return totaleOre
}

#let tabellaSprint(
  numSprint: int,
  bressan: array,
  corradin: array,
  lazzarin: array,
  salviato: array,
  squarzoni: array,
  tutino: array,
  vallotto: array,
  bilancio: int,
  differenzaOre: ()
) = {
  let costoOrario = (30, 20, 25, 25, 15, 15) 
  let totaleOre = calcoloTotaleOre(bressan: bressan, corradin: corradin, lazzarin:  lazzarin, salviato: salviato, squarzoni: squarzoni, tutino: tutino, vallotto: vallotto)
  let costiParziali = totaleOre.zip(costoOrario).map(x => x.at(0) * x.at(1))
  let costoTotale = costiParziali.sum()

  if not differenzaOre.len() == 0 {
    totaleOre.push([*Differenza ore*])
    for x in differenzaOre {
      if(x.first() == "+") {
        totaleOre.push(text(x, fill: green))
      } 
      else {
        totaleOre.push(text(x, fill: red))
      }
    }
  }
  
  figure(
  table(columns: (2fr, 1.5fr, 1.8fr, 1fr, 1.3fr, 1.8fr, 1.4fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if(y >= 8 and y <= 11) { gray.lighten(10%) } else { if calc.even(y) { gray.lighten(50%)} else { white}} },
    align: center+horizon,
    table.header([*Sprint #numSprint*], [Responsabile], [Amministratore], [Analista], [Progettista], [Programmatore], [Verificatore]),

    [Bressan A.], ..bressan.map(x => str(x)),
    [Corradin S.], ..corradin.map(x => str(x)),
    [Lazzarin T.], ..lazzarin.map(x => str(x)),
    [Salviato L.], ..salviato.map(x => str(x)),
    [Squarzoni M.], ..squarzoni.map(x => str(x)),
    [Tutino G.], ..tutino.map(x => str(x)),
    [Vallotto C.], ..vallotto.map(x => str(x)),

    [*Totale ore*], ..totaleOre.map(x => if type(x) != content { str(x)} else {x}),
    [*Costo orario*], ..costoOrario.map(x => str(x)),
    [*Costo*], ..costiParziali.map(x => str(x)),
    table.cell([*Totale*], colspan: 6, align: right, fill: rgb("#f16610")), table.cell(str(costoTotale), fill: rgb("#f16610")),
    table.cell([*Bilancio*], colspan: 6, align: right, fill: rgb("#f16610")), table.cell([#bilancio], fill: rgb("#f16610"))
  ),
)
}