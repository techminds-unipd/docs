= Limiti e criticità della soluzione individuata
Su richiesta dell'azienda proponente, il team ha individuato alcuni limiti e criticità della soluzione individuata, in particolare dell'agente AI. \
Il modello gratuito _"Gemma-2-9b-it"_ utilizzato per l'agente ha pochi parametri rispetto ad altri modelli
disponibili sul mercato, tuttavia è stato scelto in quanto si è rivelato l'unico tra i modelli gratuiti
offerti da _Groq_ che permette di selezionare i tool da utilizzare in base ai prompt dell'utente. \
Un'altra limitazione è che il modello comprende meglio le richieste quando sono scritte in inglese. Di conseguenza, se il testo è in altre lingue, come l'italiano, c'è una maggiore probabilità che il modello non interpreti correttamente le istruzioni fornite dall'utente. \
Spesso il modello ha alcune allucinazioni, anche cambiando quache piccolo dettaglio del prompt, pertanto potrebbe dare risposte non pertinenti. \
Proprio a causa della complessità trovata nel gestire i comportamenti dell'agente, di comune accordo con il proponente, è stato deciso di implementare solamente la possibilità di creare dei workflow che non prevedano strutture ad albero. \
Infine, il Docker Compose non tiene conto di eventuali aspetti di sicurezza, in quanto espone tutti i servizi nell'host che lo esegue. \  