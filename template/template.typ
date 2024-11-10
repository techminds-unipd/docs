#let g = (
    name: "Tech Minds",
    mail: "techminds.unipd@gmail.com",
    logo: "assets/logo_upscaled.png",
)

#let team = (
    A: "Bressan Alessandro ",
    S: "Corradin Samuele ",
    T: "Lazzarin Tommaso ",
    L: "Salviato Leonardo ",
    M: "Squarzoni Matteo ",
    G: "Tutino Giuseppe ",
    C: "Vallotto Caterina ",
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
    firma: str,
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

    if firma.len() != 0 {
       align(bottom + right, text("Il proponente, ", weight: "bold") + text(firma) + v(2%) + line(length: 30%))
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