#import "../../../documenti_esterni/piano_qualifica/include/definizione-metriche.typ": getMPRODByCharcteristic, getMPROCByProcess

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

== Qualità di prodotto
=== Funzionalità
#displayMetrics(getMPRODByCharcteristic("funzionalità", true, true, false))

=== Manutenibilità
#displayMetrics(getMPRODByCharcteristic("manutenibilità", true, true, false))

=== Efficienza
#displayMetrics(getMPRODByCharcteristic("efficienza", true, true, false))

=== Usabilità
#displayMetrics(getMPRODByCharcteristic("usabilità", true, true, false))

=== Portabilità
#displayMetrics(getMPRODByCharcteristic("portabilità", true, true, false))
