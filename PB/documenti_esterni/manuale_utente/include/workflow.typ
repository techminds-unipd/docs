== Workflow
La pagina Workflow ha la scopo di permettere ad un utente di creare il proprio workflow.

#figure(
  image("../assets/Workflow.png"), caption: "Pagina Workflow."
)

Sulla sinistra è presente la lista dei blocchi disponibili e, se presenti, i blocchi non disponibili. Se si desidera utilizzare i blocchi non disponibili, sarà necessario collegare un account Google nella pagina services (vedi @services).

Per avere più informazioni su un blocco, basterà cliccarci sopra e verrà visualizzata una descrizione dettagliata.


Per aggiungere un blocco al workflow basterà trascinarlo nella sezione centrale (Canvas).

Esistono due tipologie di blocchi:
- Input
    - Tale tipologia di blocco può ricevere dati in input da un altro blocco;
    - Si riconosce per il pallino a sinistra.
- Output
    - Tale tipologia di blocco può inviare dati in output ad un altro blocco;
    - Si riconosce per il pallino a destra.
Un blocco può essere sia di input che di output.

#figure(
  image("../assets/blocco-gmail.png"), caption: "Esempio blocco sia di input sia di output."
)

Per collegare due blocchi aggiunti nella Canvas basterà creare un arco tra un blocco di input e uno di output.
Per creare un arco è necessario collegare un pallino destro ad un pallino sinistro, o viceversa, non è quindi possibile collegare due pallini destri o due pallini sinistri.
Per collegare due pallini basterà trascinare il mouse da un pallino all'altro.

#figure(
  image("../assets/blocchi-con-istruzione.png"), caption: "Esempio collegamento tra due blocchi."
) 


Per eliminare un blocco dal canvas si può cliccare la \"x\" in alto a destra del blocco oppure, dopo aver selezionato un blocco, si può premere il tasto "backspace".
Per eliminare un arco basterà cliccare sull'arco e premere il tasto "backspace".

Requisiti per un workflow valido:
- La descrizione dell'automazione non deve essere vuota.
- Ogni blocco può avere al massimo un arco in uscita e un arco in entrata;
- Il workflow deve avere almeno due blocchi collegati da un arco;
- Non possono essere presenti blocchi non collegati;
- Se si desidera utilizzare un blocco non disponibile, sarà necessario collegare un account Google nella pagina services (vedi @services).
Se un workflow non è valido e si prova a eseguirlo o a salvarlo, verrà visualizzato un messaggio di errore.
I possibili messaggi d'errore sono:



#figure(
  image("../assets/empty-description.png", width: 70%), caption: "Esempio descrizione automazione vuota."
)

#figure(
  image("../assets/empty-description-error.png", width: 70%), caption: "Errore descrizione automazione vuota."
)

#figure(
  image("../assets/double-edge.png", width: 70%), caption: "Esempio più di un arco in entrata o in uscita."
)

#figure(
  image("../assets/double-edge-error.png", width: 70%), caption: "Errore più di un arco in entrata o in uscita."
)
#figure(
  image("../assets/insufficient-nodes.png", width: 70%), caption: "Esempio nodi insufficienti."
)
#figure(
  image("../assets/insufficient-nodes-error.png", width: 70%), caption: "Errore nodi insufficienti."
)
#figure(
  image("../assets/insufficient-edges.png", width: 70%), caption: "Esempio archi insufficienti."
)
#figure(
  image("../assets/insufficient-edges-error.png", width: 70%), caption: "Errore archi insufficienti."
)
#figure(
  image("../assets/not-connected-account.png", width: 70%), caption: "Errore account Google non collegato." 
)
#figure(
  image("../assets/not-connected-account-error.png", width: 70%), caption: "Errore account Google non collegato." 
)
Tale situazione si può verificare se si è salvato un workflow e successivamente si è scollegato l'account Google.

Una volta creato il workflow valido, sarà possibile salvarlo cliccando sul pulsante _SAVE_ o ad eseguirlo cliccando sul pulsante _EXECUTE_.