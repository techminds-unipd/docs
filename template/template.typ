#import "@preview/cetz:0.3.1"
#import "@preview/cetz-plot:0.1.0": plot, chart

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
    set text(lang: "it")

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
    set par(justify: true)
    body
    outline(title: "Lista delle figure", target: figure)
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
    set heading(numbering: "1.1")
    set document(author: "Tech Minds", title: title)
    set page(numbering: "1")
    set align(center)
    show link: underline
    show link: set text(rgb("#f16610"))
    set text(lang: "it")

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
    set par(justify: true)

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

    set par(justify: true)
    set align(left)
    pagebreak()
    body
}

#let glossario(term, color: rgb("#c30000")) = {
  text(color, style: "italic", box[#term])
}


// template per tabelle sprint in piano_progetto
#let calcoloTotaleOre(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto) = {
  // conversione ore da stringa a intero se necessario (nel caso del consuntivo bisogna prendere solo il primo numero)
  bressan = bressan.map(x => if type(x) == str { int(x.split().at(0)) } else { x })
  corradin = corradin.map(x => if type(x) == str { int(x.split().at(0)) } else { x })
  lazzarin = lazzarin.map(x => if type(x) == str { int(x.split().at(0)) } else { x })
  salviato = salviato.map(x => if type(x) == str { int(x.split().at(0)) } else { x })
  squarzoni = squarzoni.map(x => if type(x) == str { int(x.split().at(0)) } else { x })
  tutino = tutino.map(x => if type(x) == str { int(x.split().at(0)) } else { x })
  vallotto = vallotto.map(x => if type(x) == str { int(x.split().at(0)) } else { x })

  let totaleOre = ()
  for i in array.range(0, 6) {
    let totOre = (bressan.at(i) + corradin.at(i) + lazzarin.at(i) + salviato.at(i) + squarzoni.at(i) + tutino.at(i) + vallotto.at(i))
    totaleOre.push(totOre)
  }
  return totaleOre
}


#let textCellColorConsuntivo(
  cell: str
) = {
  //per celle del consuntivo colora il testo in base al segno + o -
  if cell.contains("+") {
    cell.split().at(0) + " " + text(cell.split().at(1), fill: rgb("#b92c2c"))
  } else if cell.contains("-") {
    cell.split().at(0) + " " + text(cell.split().at(1), fill: rgb("#379c37"))
  } else {
    cell
  }
}

//funzione per calcolare il bilancio di uno sprint
#let calcolaBilancio(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, bilancio) = {
  let costoOrario = (30, 20, 25, 25, 15, 15) 
  let totaleOre = calcoloTotaleOre(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto)
  let costiParziali = totaleOre.zip(costoOrario).map(x => x.at(0) * x.at(1))
  let costoTotale = costiParziali.sum()
  return bilancio - costoTotale
}

#let pieChartSprint(numSprint, bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto, isConsuntivo) = {
  let caption = [Grafico distribuzione ore preventivo sprint #numSprint.]
  if isConsuntivo {
    caption = [Grafico distribuzione ore consuntivo sprint #numSprint.]
  }
  let costoOrario = (30, 20, 25, 25, 15, 15) 
  let totaleOre = calcoloTotaleOre(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto)
  let data = (
    ("Responsabile", totaleOre.at(0)),
    ("Amministratore", totaleOre.at(1)),
    ("Analista", totaleOre.at(2)),
    ("Progettista", totaleOre.at(3)),
    ("Programmatore", totaleOre.at(4)),
    ("Verificatore", totaleOre.at(5)),
  )
  figure(
    cetz.canvas({
      let colors = gradient.linear(red, blue, green, yellow)
      //prende i dati da data e crea il piechart
      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 0.4,
        //inner-label: (content: (value, label) => str(label), radius: 125%),
        //outer-label: (content: "%", radius: 120%)
        inner-label: (content: "%", radius: 135%, anchor: "center"),
        outer-label: (content: "", radius: 120%)
      )
    }
    ), caption: caption
  )
}

#let tabellaSprint(numSprint, bressan, corradin, lazzarin, salviato, squarzoni, tutino,vallotto, bilancio, isConsuntivo) = {
  let caption = [Tabella preventivo sprint #numSprint.]
  if isConsuntivo {
    caption = [Tabella consuntivo sprint #numSprint.]
  }
  let costoOrario = (30, 20, 25, 25, 15, 15) 
  let totaleOre = calcoloTotaleOre(bressan, corradin, lazzarin, salviato, squarzoni, tutino, vallotto)
  let costiParziali = totaleOre.zip(costoOrario).map(x => x.at(0) * x.at(1))
  let costoTotale = costiParziali.sum()
  set par(justify: false)
  figure(
  table(columns: (2fr, 1.5fr, 1.8fr, 1fr, 1.3fr, 1.8fr, 1.4fr),
    fill: (x, y) => if (y==0) { rgb("#f16610") } else { if(y >= 8 and y <= 11) { rgb("#f27f329f") } else { if calc.even(y) { gray.lighten(50%)} else { white}} },
    align: center+horizon,
    table.header([*Sprint #numSprint*], [Responsabile], [Amministratore], [Analista], [Progettista], [Programmatore], [Verificatore]),
    //per ogni membro del team prende le ore relative allo sprint e le colora in base al segno oppure non le colora se si tratta di un preventivo
    [Bressan A.], ..bressan.map(x => textCellColorConsuntivo(cell: str(x))),
    [Corradin S.], ..corradin.map(x => textCellColorConsuntivo(cell: str(x))),
    [Lazzarin T.], ..lazzarin.map(x => textCellColorConsuntivo(cell: str(x))),
    [Salviato L.], ..salviato.map(x => textCellColorConsuntivo(cell: str(x))),
    [Squarzoni M.], ..squarzoni.map(x => textCellColorConsuntivo(cell: str(x))),
    [Tutino G.], ..tutino.map(x => textCellColorConsuntivo(cell: str(x))),
    [Vallotto C.], ..vallotto.map(x => textCellColorConsuntivo(cell: str(x))),
    //righe con le ore totali e i costi con conversione in stringa
    [*Totale ore*], ..totaleOre.map(x => if type(x) != content { str(x)} else {x}),
    [*Costo orario*], ..costoOrario.map(x => str(x) + "€"),
    [*Costo*], ..costiParziali.map(x => str(x) + "€"),
    table.cell([*Totale*], colspan: 6, align: right, fill: rgb("#f16610")), table.cell(text(str(costoTotale) + "€", weight: "bold"), fill: rgb("#f16610")),
    table.cell([*Bilancio*], colspan: 6, align: right, fill: rgb("#f16610")), table.cell(text(str(bilancio) + "€", weight: "bold"), fill: rgb("#f16610"))
  ),
  caption: caption
)
}
