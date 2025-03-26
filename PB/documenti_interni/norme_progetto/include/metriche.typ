#import "../../../documenti_esterni/piano_qualifica/include/definizione-metriche.typ": getMPRODByCharcteristic, getMPROCByProcess

#let displayMetrics(metrics) = {
  for m in metrics{
    heading(offset: 3, m.at(1).at(0))
    list(text(weight: "bold", "Codice: ")+m.at(0)+";")
    list(text(weight: "bold", "Formula: ")+m.at(3).join())
    list(text(weight: "bold", "Descrizione: ")+m.at(2).join())
  }
}

= Metriche di qualità <metriche>

== Standard ISO/IEC 9126
Per definire le metriche e i criteri che determinano la qualità di quanto realizzato dal gruppo durante l'implementazione dei vari processi, è stato deciso di seguire lo standard ISO/IEC 9126. Questo standard definisce un modello di qualità del software in sei caratteristiche generali:

=== Funzionalità
La funzionalità riguarda la capacità del software di offrire strumenti e servizi che rispondano ai requisiti espliciti e impliciti richiesti dagli utenti. Questa è considerata un "requisito funzionale". I suoi principali aspetti includono:
- Adeguatezza: misura in cui il software fornisce le funzionalità necessarie per soddisfare le esigenze specifiche dell'utente e del contesto in cui viene utilizzato;
- Accuratezza: indica la capacità del software di restituire risultati corretti e con il livello di precisione richiesto;
- Interoperabilità: rappresenta la possibilità del software di comunicare e lavorare in sinergia con altri sistemi;
- Sicurezza: riguarda la protezione dei dati da accessi non autorizzati e potenziali minacce;
- Conformità: verifica che il software rispetti normative, standard e specifiche tecniche stabilite.

=== Affidabilità 
Capacità del prodotto software di mantenere uno specificato livello di prestazioni quando usato in date condizioni per un dato periodo. Questa è classificata come un "requisito non funzionale" o "requisito di qualità".
I suoi aspetti chiave includono:
- Maturità: misura la stabilità del software durante l'esecuzione, evitando errori frequenti e risultati errati;
- Tolleranza agli errori: valuta in che modo il software è in grado di gestire e mitigare gli errori;
- Capacità di recupero: indica la capacità del software di ripristinare le sue prestazioni dopo un'interruzione o un guasto;
- Affidabilità delle informazioni: assicura la precisione e la coerenza dei dati elaborati e forniti dal software.


=== Efficienza 
Capacità di fornire appropriate prestazioni relativamente alla quantità di risorse usate dal sistema. Anch'essa è un "requisito non funzionale" o "requisito di qualità". I principali sottoattributi sono:
- Utilizzo delle risorse: analizza il modo in cui il software sfrutta CPU, memoria e altre risorse durante l'esecuzione;
- Aderenza all’efficienza: verifica se il software segue le best practice per ottimizzare il codice e le risorse disponibili;
- Comportamento rispetto al tempo: misura la rapidità di risposta del software e la sua capacità di adattarsi a variazioni di carico.

=== Usabilità 
Capacità del prodotto software di essere capito, appreso e utilizzato dall'utente, quando usato sotto condizioni specificate. Rientra tra i "requisiti non funzionali" o "requisiti di qualità". I principali aspetti da considerare sono:
- Comprensibilità: indica quanto sia intuitivo per l'utente comprendere l'interfaccia e le funzionalità del software;
- Apprendibilità: misura la facilità con cui un nuovo utente può imparare a usare il software rapidamente;
- Operabilità: riguarda la semplicità con cui gli utenti possono eseguire operazioni in modo efficace e senza errori;
- Attrattività: si riferisce all'aspetto estetico dell'interfaccia e alla gradevolezza del design;
- Aderenza all’usabilità: valuta in che misura il software segue le migliori pratiche e linee guida in termini di esperienza utente.

=== Manutenibilità
Capacità del software di essere modificato, includendo correzioni, miglioramenti o adattamenti. Anche questa è un "requisito non funzionale" o "requisito di qualità". I suoi sottoattributi sono:
- Analizzabilità: misura la facilità con cui è possibile esaminare il codice per individuare errori o miglioramenti;
- Modificabilità: valuta quanto il software può essere aggiornato o modificato senza introdurre nuovi problemi;
- Stabilità: assicura che le modifiche apportate non causino effetti collaterali negativi;
- Testabilità: indica quanto sia agevole testare il software per verificare la correttezza delle modifiche;
- Aderenza alla manutenibilità: verifica in che misura il software rispetta le best practice per la manutenzione e l'evoluzione nel tempo.

=== Portabilità
Capacità del software di essere trasportato da un ambiente di lavoro ad un altro (ambiente che può variare dall'hardware al sistema operativo). Anche questa è considerata un "requisito non funzionale" o "requisito di qualità". I principali sottoattributi sono:
- Adattabilità: misura la facilità con cui il software può operare su piattaforme diverse senza richiedere interventi significativi;
- Installabilità: riguarda la semplicità del processo di installazione in un nuovo ambiente;
- Sostituibilità: valuta la facilità con cui il software può essere rimpiazzato o sostituito da altre soluzioni equivalenti;
- Coesistenza: indica la capacità del software di funzionare correttamente insieme ad altre applicazioni nello stesso sistema;
- Aderenza alla portabilità: verifica in che misura il software segue gli standard e le linee guida per facilitare la sua migrazione tra ambienti differenti.

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
