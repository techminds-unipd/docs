== Workflow
La pagina Workflow ha la scopo di permettere ad un utente di creare il proprio workflow.

#figure(
  image("../assets/Workflow.png"), caption: "Pagina Workflow."
)

Sulla sinistra è presente la lista dei blocchi disponibili e, se presenti, i blocchi non disponibili. Se si desidera utilizzare i blocchi non disponibili, sarà necessario collegare un account Google nella pagina services (vedi @services).

Per avere più informazioni su un blocco, basterà cliccarci sopra e verrà visualizzata una descrizione dettagliata.

*Aggiunta di un blocco al workflow* \
Per aggiungere un blocco al workflow basterà cliccare il tasto sinistro del mouse e trascinarlo nella sezione centrale (Canvas).

Esistono due tipologie di blocchi:
- Input
    - tale tipologia di blocco può ricevere dati in input da un altro blocco;
    - si riconosce per il pallino a sinistra.
- Output
    - tale tipologia di blocco può inviare dati in output ad un altro blocco;
    - si riconosce per il pallino a destra.
Un blocco può essere sia di input che di output.

#figure(
  image("../assets/blocco-gmail.png"), caption: "Esempio blocco sia di input sia di output."
)

*Aggiunta di un automazione tra blocchi* \
- Per descrivere un automazione tra due blocchi aggiunti nella Canvas è necessario collegarli con un arco. 
- Per creare un arco è necessario collegare un pallino destro ad un pallino sinistro, o viceversa, non è quindi possibile collegare due pallini destri o due pallini sinistri.
- Per collegare due pallini basterà mantenere premuto il tasto sinistro del mouse e trascinarlo da un pallino all'altro.
- Una volta collegati i due blocchi comparirà una textbox sovrapposta all'arco in cui basterà scrivere l'automazione desiderata.\
Tips: Quando si scrive la descrizione dell'automazione è preferibile scrivere frasi corte e in inglese.

#figure(
  image("../assets/blocchi-con-istruzione.png"), caption: "Esempio collegamento tra due blocchi."
) 

*Eliminazione componenti del workflow* \
Per eliminare un blocco dal canvas si può cliccare la \"x\" in alto a destra del blocco oppure, dopo aver selezionato un blocco, si può premere il tasto "backspace".
Per eliminare un arco basterà cliccare sull'arco e premere il tasto "backspace".

*Requisiti per un workflow valido* \
Se un workflow non è valido e si prova a eseguirlo o a salvarlo, verrà visualizzato un messaggio di errore, di seguito sono riportati alcuni esempi di workflow non validi:
- La descrizione dell'automazione non deve essere vuota.
#figure(
  image("../assets/empty-description.png", width: 70%), caption: "Esempio descrizione automazione vuota."
)

#figure(
  image("../assets/empty-description-error.png", width: 70%), caption: "Errore descrizione automazione vuota."
)
- Ogni blocco può avere al massimo un arco in uscita e un arco in entrata, non è quindi possibile creare un albero di automazioni;
#figure(
  image("../assets/double-edge.png", width: 70%), caption: "Esempio più di un arco in entrata o in uscita."
)

#figure(
  image("../assets/double-edge-error.png", width: 70%), caption: "Errore più di un arco in entrata o in uscita."
)
- Il workflow deve avere almeno due blocchi collegati da un arco;
#figure(
  image("../assets/insufficient-nodes.png", width: 70%), caption: "Esempio nodi insufficienti."
)
#figure(
  image("../assets/insufficient-nodes-error.png", width: 70%), caption: "Errore nodi insufficienti."
)
- Non possono essere presenti blocchi non collegati;
#figure(
  image("../assets/insufficient-edges.png", width: 70%), caption: "Esempio archi insufficienti."
)
#figure(
  image("../assets/insufficient-edges-error.png", width: 70%), caption: "Errore archi insufficienti."
)
- Se si desidera utilizzare un blocco non disponibile, sarà necessario collegare un account Google nella pagina services (vedi @services).
#figure(
  image("../assets/not-connected-account.png", width: 70%), caption: "Esempio account Google non collegato." 
)
#figure(
  image("../assets/not-connected-account-error.png", width: 70%), caption: "Errore account Google non collegato." 
)
Tale situazione si può verificare se si è salvato un workflow e successivamente si è scollegato l'account Google.

Una volta creato il workflow valido, sarà possibile salvarlo cliccando sul pulsante _SAVE_ o eseguirlo cliccando sul pulsante _EXECUTE_.