#import "../../../documenti_esterni/piano_qualifica/include/definizione-metriche.typ": getMPRODByCharcteristic, getMPROCByProcess

#let displayMetrics(metrics) = {
  for m in metrics{
    heading(offset: 3, m.at(1).at(0))
    list(text(weight: "bold", "Codice: ")+m.at(0)+";")
    list(text(weight: "bold", "Formula: ")+m.at(3).join())
    list(text(weight: "bold", "Descrizione: ")+m.at(2).join())
  }
}
= Metriche di qualità
==   Qualità di processo
===   Fornitura
#displayMetrics(getMPROCByProcess("fornitura", true, true, false, false))

=== Sviluppo
#displayMetrics(getMPROCByProcess("sviluppo", true, true, false, false))

=== Documentazione
#displayMetrics(getMPROCByProcess("documentazione", true, true, false, false))

=== Verifica
#displayMetrics(getMPROCByProcess("verifica", true, true, false, false))

=== Gestione dei rischi
#displayMetrics(getMPROCByProcess("gestione rischi", true, true, false, false))

=== Gestione della qualità
#displayMetrics(getMPROCByProcess("gestione qualità", true, true, false, false))

== Qualità di prodotto
=== Funzionalità
#displayMetrics(getMPRODByCharcteristic("funzionalità", true, true, false, false))

=== Manutenibilità
#displayMetrics(getMPRODByCharcteristic("manutenibilità", true, true, false, false))

=== Efficienza
#displayMetrics(getMPRODByCharcteristic("efficienza", true, true, false, false))

=== Usabilità
#displayMetrics(getMPRODByCharcteristic("usabilità", true, true, false, false))

=== Portabilità
#displayMetrics(getMPRODByCharcteristic("portabilità", true, true, false, false))
