#import "/template/template.typ": documento, team

#show: documento.with(
  title: "Piano di qualifica",
  sommario: "",
  changelog: (
    "1.0", "00/00/2024", "Prima versione", "Il gruppo Tech Minds", "...."
  )
)

#include "include/introduzione.typ"