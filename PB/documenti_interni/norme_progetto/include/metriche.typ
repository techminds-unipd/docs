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

== Standard ISO/IEC 9126
Per definire le metriche e i criteri che determinano la qualità di quanto realizzato dal gruppo durante l'implementazione dei vari processi, è stato deciso seguire lo standard ISO/IEC 9126. Questo standard definisce un modello di qualità del software in sei caratteristiche generali:
- *Funzionalità*: è la capacità di un prodotto software di fornire funzioni che soddisfano esigenze stabilite, necessarie per operare sotto condizioni specifiche. Questa è considerata un "requisito funzionale";
- *Affidabilità*: è la capacità del prodotto software di mantenere uno specificato livello di prestazioni quando usato in date condizioni per un dato periodo. Questa è classificata come un "requisito non funzionale" o "requisito di qualità";
- *Efficienza*: è la capacità di fornire appropriate prestazioni relativamente alla quantità di risorse usate. Anch'essa è un "requisito non funzionale" o "requisito di qualità";
- *Usabilità*: è la capacità del prodotto software di essere capito, appreso, usato e benaccetto dall'utente, quando usato sotto condizioni specificate. Rientra tra i "requisiti non funzionali" o "requisiti di qualità";
- *Manutenibilità*: + la capacità del software di essere modificato, includendo correzioni, miglioramenti o adattamenti. Anche questa è un "requisito non funzionale" o "requisito di qualità";
- *Portabilità*: è la capacità del software di essere trasportato da un ambiente di lavoro ad un altro (ambiente che può variare dall'hardware al sistema operativo). Questa è anch'essa considerata un "requisito non funzionale" o "requisito di qualità".

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

=== Manutenibilità <manutenibilità-prodotto>
#displayMetrics(getMPRODByCharcteristic("manutenibilità", true, true, false, false))

=== Efficienza
#displayMetrics(getMPRODByCharcteristic("efficienza", true, true, false, false))

=== Usabilità
#displayMetrics(getMPRODByCharcteristic("usabilità", true, true, false, false))

=== Portabilità
#displayMetrics(getMPRODByCharcteristic("portabilità", true, true, false, false))
