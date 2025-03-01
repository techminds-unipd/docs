#import "../../../documenti_esterni/piano_qualifica/include/definizione-metriche.typ": getAllMPROC, getMPROCByProcess

#let displayMetrics(metrics) = {
  for m in metrics{
    heading(offset: 3, m.at(0).at(1))
    list(text(weight: "bold", "Codice: ")+m.at(0).at(0)+text(";"))
    list(text(weight: "bold", "Formula: ")+m.at(2).join()+text(";"))
    list(text(weight: "bold", "Descrizione: ")+m.at(1).join()+text("."))
  }
}
= Metriche di Qualità
==   Qualità di processo
===   Fornitura
#displayMetrics(getMPROCByProcess("fornitura", true, true, false))

=== Sviluppo
#displayMetrics(getMPROCByProcess("sviluppo", true, true, false))

=== Documentazione
#displayMetrics(getMPROCByProcess("documentazione", true, true, false))

=== Verifica
#displayMetrics(getMPROCByProcess("verifica", true, true, false))

=== Gestione dei rischi
#displayMetrics(getMPROCByProcess("gestione rischi", true, true, false))

=== Gestione della qualità
#displayMetrics(getMPROCByProcess("gestione qualità", true, true, false))

