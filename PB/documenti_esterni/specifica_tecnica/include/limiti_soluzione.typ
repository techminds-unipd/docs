= Limiti e criticità della soluzione individuata
Su richiesta dell'azienda proponente, il team ha individuato alcuni limiti e criticità della soluzione individuata, in particolare questi riguardano l'agente AI. \
Il modello _"Gemma-2-9b-it"_ utilizzato per l'agente ha pochi parametri rispetto ad altri modelli
disponibili sul mercato, tuttavia è stato scelto in quanto si è rivelato l'unico tra i modelli 
offerti da _Groq_ che permette di selezionare i tool da utilizzare in base ai prompt dell'utente. \
Un'altra limitazione consiste nel fatto che è più probabile che il modello sia in grado di comprendere se il testo viene scritto in lingua inglese, pertanto ci sono molte possibilità che scrivendo del testo in altre lingue, come l'italiano, il modello non riesca a comprendere le automazioni descritte dall'utente. \
Spesso il modello ha alcune allucinazioni anche cambiando quache piccolo dettaglio del prompt, pertanto potrebbe dare risposte non pertinenti. \
Proprio a causa della complessità trovata nel gestire i comportamenti dell'agente, di comune accordo con il proponente, è stato deciso di implementare solamente la possibilità di creare dei workflow che non prevedano forme ad albero o eventuali biforcazioni. \