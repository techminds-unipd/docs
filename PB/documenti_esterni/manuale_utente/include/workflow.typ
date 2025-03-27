== Workflow
La pagina Workflow ha la scopo di permettere ad un utente di creare il proprio workflow.

/*#figure(
  image("../assets/Workflow.png"), caption: "Pagina Workflow."
)*/

Sulla sinistra è presente la lista dei blocchi disponibili e, se presenti, i blocchi non disponibili. Se si desidera utilizzare i blocchi non disponibili, sarà necessario collegare un account Google nella pagina services (vedi @services).

Per avere più informazioni su un blocco, basterà cliccarci sopra e verrà visualizzata una descrizione dettagliata.



Per aggiungere un blocco al workflow basterà cliccarci sopra e trascinarlo nella sezione centrale (Canvas).

Esistono due tipologie di blocchi:
- Input
    - Tale tipologia di blocco può ricevere dati in input da un altro blocco;
    - Si riconosce per il pallino a sinistra.
- Output
    - Tale tipologia di blocco può inviare dati in output ad un altro blocco;
    - Si riconosce per il pallino a destra.
Un blocco può essere sia di input che di output.

-----Inserire immagine blocco sia di input sia di output-----TODO-----

Per collegare due blocchi aggiunti nella Canvas basterà creare un arco tra un blocco di input e uno di output.
Per creare un arco è necessario collegare un pallino destro ad un pallino sinistro, o viceversa, non è quindi possibile collegare due pallini destri o due pallini sinistri.
Per collegare due pallini basterà trascinare il mouse da un pallino all'altro.

Per eliminare un blocco ---TODO---. 

Requisiti per un workflow valido:
- Il workflow deve avere almeno due blocchi collegati da un arco.



Una volta creato il workflow valido, sarà possibile salvarlo cliccando sul pulsante _SAVE_ e eseguirlo cliccando sul pulsante _EXECUTE_.

Se un workflow non è valido e si prova a eseguirlo o a salvarlo, verrà visualizzato un messaggio di errore.
I possibili messaggi d'errore sono: -----TODO-----
#figure(
  image("../assets/insufficient-nodes.png"), caption: "Errore nodi insufficienti Workflow."
)
#figure(
  image("../assets/insufficient-edges.png"), caption: "Pagina Workflow."
)