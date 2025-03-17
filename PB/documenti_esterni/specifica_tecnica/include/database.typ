== Database
#figure(
  image("../assets/database.svg"), caption: [Diagramma UML del documento salvato nel database MongoDB.]
)
All'interno del database MongoDB viene salvata un'unica tipologia di documento, che rappresenta un utente registrato all'applicazione. Ogni documento è composto dai seguenti campi:
- *\_id*: generato automaticamente da MongoDB, rappresenta l'identificativo univoco dell'utente;
- *username*: stringa che rappresenta il nome utente;
- *password*: stringa che rappresenta la password dell'utente sotto forma di hash;
- *workflows*: rappresenta la lista di _workflow_ creati dall'utente.

Ogni _workflow_ è composto da un nome univoco e una lista di nodi, caratterizzati dal tipo, che corrisponde al servizio utilizzato (Gmail/Calendar/Pastebin), dall'azione da eseguire da un nodo a quello successivo e dalla posizione (x,y) del singolo nodo all'interno del _workflow_, necessario per ricostruirlo graficamente nel frontend.

È stata scelta una convenzione per il salvataggio dei nodi: ogni nodo è salvato in modo ordinato, a seconda dell'ordine di esecuzione, e ogni azione di un nodo è riferita al nodo successivo; di conseguenza l'ultimo nodo della lista avrà sempre il campo _action_ vuoto. Ad esempio se un workflow è composto da due nodi, Gmail e Calendar, il primo nodo può avere come azione "read the last email from ... and create an event for that meeting", mentre il secondo nodo non avrà una descrizione dell'azione.


