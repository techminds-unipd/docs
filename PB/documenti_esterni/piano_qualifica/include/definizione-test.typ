#import "/template/template.typ": glossario
#import "../../analisi_requisiti/include/definizione_requisiti.typ": getFRByNumber

#let getIntegrazione() = {
    let backend = ()

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *user/register*. Verificare che il backend possa ricevere i dati di un utente, registrarlo all'interno del database e ritornare i suoi dati.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *user/register*. Verificare che il backend lanci un'eccezione con http status 400 poiché lo _username_ dell'utente è già salvato nel database.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *user/login*. Verificare che il backend possa ricevere i dati di un utente, autenticarlo e ritornare la stringa contenente il token JWT.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *user/login*. Verificare che il backend lanci un'eccezione con http status 401 poiché la _password_ o lo _username _dell'utente non sono corretti.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/create/{workflowName}*. Verificare che il backend autorizzi la richiesta, riceva il nome del _workflow_, lo crei e salvi all'interno del database e ritorni il _workflow_ creato.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/create/{workflowName}*. Verificare che il backend lanci un'eccezione con http status 400 poiché il _workflow_ avente quel nome è già presente nel database.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/save*. Verificare che il backend autorizzi la richiesta, riceva il _workflow_ da salvare, controlli che sia valido, lo salvi all'interno del database e ritorni il _workflow_ salvato.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/save*. Verificare che il backend lanci un'eccezione con http status 412 poiché il _workflow_ da salvare non è valido.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/get/{workflowName}*. Verificare che il backend autorizzi la richiesta, riceva il nome del _workflow_ da ottenere, lo recuperi dal database e lo ritorni.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/get/{workflowName}*. Verificare che il backend lanci un'eccezione con http status 404 poiché il _workflow_ avente quel nome non è presente nel database.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/all*. Verificare che il backend autorizzi la richiesta, recuperi tutti i _workflow_ dell'utente dal database e ritorni una lista con i loro nomi.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/execute*. Verificare che il backend autorizzi la richiesta, riceva il _workflow_ da eseguire, controlli che sia valido, invii la richiesta all'agente e ritorni il risultato.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/execute*. Verificare che il backend lanci un'eccezione con http status 412 poiché il _workflow_ da eseguire non è valido.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/delete/{workflowName}*. Verificare che il backend autorizzi la richiesta, riceva il nome del _workflow_ da eliminare, lo elimini dal database e ritorni il _workflow_ eliminato.],
        [S],
    ))

    backend.push(("TIB" + str(backend.len()+1),
        [Endpoint: *workflow/delete/{workflowName}*. Verificare che il backend lanci un'eccezione con http status 404 poiché il _workflow_ avente quel nome non è presente nel database.],
        [S],
    ))

    return backend
}

// test di unità
#let getUnità() = {
    let unitàBackend = ()
    let unitàAgente = ()
    let unitàFrontend = ()
    // RegisterUserController
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _registerUser_ della classe _RegisterUserController_ ritorni un DTO con l'utente registrato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _registerUser_ della classe _RegisterUserController_ lanci un'eccezione con http status 500 poiché il database lancia un'eccezione.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _registerUser_ della classe _RegisterUserController_ lanci un'eccezione con http status 400 poiché il service lancia un'eccezione di tipo _UserAlreadyExistsError_.],
        [S],
    ))

    // RegisterUserService
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _registerUser_ della classe _RegisterUserService_ ritorni l'utente registrato con la password sotto forma di hash.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _registerUser_ della classe _RegisterUserService_ lanci un'eccezione di tipo _UserAlreadyExistsError_ poiché lo _username_ è già utilizzato.],
        [S],
    ))

    // LoginUserController
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _login_ della classe _LoginUserController_ ritorni un token jwt.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _login_ della classe _LoginUserController_ lanci un'eccezione con http status 500 poiché il database lancia un'eccezione.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _login_ della classe _LoginUserController_ lanci un'eccezione con http status 401 poiché il service lancia un'eccezione di tipo _UserNotFoundError_.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _login_ della classe _LoginUserController_ lanci un'eccezione con http status 401 poiché il service lancia un'eccezione di tipo _WrongPasswordError_.],
        [S],
    ))

    // LoginUserService
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _login_ della classe _LoginUserService_ ritorni l'utente che ha eseguito l'accesso con credenziali corrette.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _login_ della classe _LoginUserService_ lanci un'eccezione di tipo _UserNotFoundError_ poiché la porta di output ritorna null.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _login_ della classe _LoginUserService_ lanci un'eccezione di tipo _WrongPasswordError_ poiché la password non combacia.],
        [S],
    ))

    // UserPortAdapter
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getUserByUsername_ della classe _UserPortAdapter_ ritorni un oggetto di business con l'utente avente lo _username_ specificato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getUserByUsername_ della classe _UserPortAdapter_ ritorni null poiché il repository ritorna null.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _registerUser_ della classe _UserPortAdapter_ ritorni un oggetto di business con l'utente registrato.],
        [S],
    ))

    // UserRepository
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getUserByUsername_ della classe _UserRepository_ ritorni una entity del database con l'utente avente lo _username_ specificato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getUserByUsername_ della classe _UserRepository_ ritorni null poiché l'utente con quel _username_ non è stato trovato all'interno del database.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _registerUser_ della classe _UserRepository_ ritorni una entity del database con l'utente registrato.],
        [S],
    ))

    // User
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _hashPassword_ della classe _User_ ritorni la password sotto forma di hash.],
        [S],
    ))

    // ConnectionGoogleRequestController
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _googleAuth_ della classe _ConnectionGoogleRequestController_ ritorni un _RedirectUrlDTO_ con la risposta del service.],
        [S],
    ))

    // ConnectionGoogleRequestService
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _googleAuth_ della classe _ConnectionGoogleRequestService_ ritorni il risultato della porta di output.],
        [S],
    ))

    // ConnectionGoogleResponseController
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _googleAuthCallback_ della classe _ConnectionGoogleResponseController_ ritorni un _RedirectUrlDTO_ con la risposta del service.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _googleAuthCallback_ della classe _ConnectionGoogleResponseController_ lanci un'eccezione con http status 500 poiché è stato lanciato un errore.],
        [S],
    ))

    // ConnectionGoogleResponseService
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getToken_ della classe _ConnectionGoogleResponseService_ ritorni il risultato della porta di output.],
        [S],
    ))

    // GoogleTokenPortAdapter
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getOauth2ClientUrl_ della classe _GoogleTokenPortAdapter_ ritorni il risultato del repository.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getAuthClientData_ della classe _GoogleTokenPortAdapter_ ritorni un oggetto di business contenente il risultato del repository.],
        [S],
    ))

    // GoogleAuthRepository
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getOauth2ClientUrl_ della classe _GoogleAuthRepository_ ritorni l'url per il reindirizzamento.],
        [S],
    ))

    // CreateWorkflowController
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _createWorkflow_ della classe _CreateWorkflowController_ ritorni un DTO con il workflow creato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _createWorkflow_ della classe _CreateWorkflowController_ lanci un'eccezione con http status 400 poiché il service lancia un'eccezione di tipo _WorkflowAlreadyExistsError_.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _createWorkflow_ della classe _CreateWorkflowController_ lanci un'eccezione con http status 500 poiché il service lancia un'eccezione di tipo _WorkflowNotAddedError_.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _createWorkflow_ della classe _CreateWorkflowController_ lanci un'eccezione con http status 500 poiché il database lancia un'eccezione.],
        [S],
    ))

    // CreateWorkflowService
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _createWorkflow_ della classe _CreateWorkflowService_ ritorni il risultato della porta di output.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _createWorkflow_ della classe _CreateWorkflowService_ lanci un'eccezione di tipo _WorkflowAlreadyExistsError_ poiché esiste già un workflow con quel nome.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _createWorkflow_ della classe _CreateWorkflowService_ lanci un'eccezione di tipo _WorkflowNotAddedError_ poiché il workflow non è stato creato correttamente.],
        [S],
    ))

    // DeleteWorkflowController
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _deleteWorkflow_ della classe _DeleteWorkflowController_ ritorni un DTO con il workflow eliminato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _deleteWorkflow_ della classe _DeleteWorkflowController_ lanci un'eccezione con http status 500 poiché il database lancia un'eccezione.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _deleteWorkflow_ della classe _DeleteWorkflowController_ lanci un'eccezione con http status 404 poiché il service lancia un'eccezione di tipo _WorkflowNotFoundError_.],
        [S],
    ))

    // DeleteWorkflowService
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _deleteWorkflow_ della classe _DeleteWorkflowService_ ritorni il risultato della porta di output.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _deleteWorkflow_ della classe _DeleteWorkflowService_ lanci un'eccezione di tipo _WorkflowNotFoundError_ poiché il workflow non è stato trovato.],
        [S],
    ))

    // GetWorkflowController
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflow_ della classe _GetWorkflowController_ ritorni un DTO con il workflow avente il nome specificato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflow_ della classe _GetWorkflowController_ lanci un'eccezione con http status 500 poiché il database lancia un'eccezione.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflow_ della classe _GetWorkflowController_ lanci un'eccezione con http status 404 poiché il service lancia un'eccezione di tipo _WorkflowNotFoundError_.],
        [S],
    ))

    // GetWorkflowService
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflow_ della classe _GetWorkflowService_ ritorni il risultato della porta di output.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflow_ della classe _GetWorkflowService_ lanci un'eccezione di tipo _WorkflowNotFoundError_ poiché il workflow non è stato trovato.],
        [S],
    ))

    // SaveWorkflowController
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _saveWorkflow_ della classe _SaveWorkflowController_ ritorni un DTO con il workflow salvato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _saveWorkflow_ della classe _SaveWorkflowController_ lanci un'eccezione con http status 500 poiché il database lancia un'eccezione.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _saveWorkflow_ della classe _SaveWorkflowController_ lanci un'eccezione con http status 404 poiché il service lancia un'eccezione di tipo _WorkflowNotFoundError_.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _saveWorkflow_ della classe _SaveWorkflowController_ lanci un'eccezione con http status 412 poiché il workflow non è valido.],
        [S],
    ))

    // SaveWorkflowService
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _saveWorkflow_ della classe _SaveWorkflowService_ ritorni il risultato della porta di output.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _saveWorkflow_ della classe _SaveWorkflowService_ lanci un'eccezione di tipo _WorkflowNotFoundError_ poiché il workflow non è stato trovato.],
        [S],
    ))
    
    // WorkflowNameListController
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflowNameList_ della classe _WorkflowNameListController_ ritorni il risultato del service.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflowNameList_ della classe _WorkflowNameListController_ lanci un'eccezione con http status 500 poiché il database lancia un'eccezione.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflowNameList_ della classe _WorkflowNameListController_ lanci un'eccezione con http status 400 poiché il service lancia un'eccezione di tipo _UserNotFoundError_.],
        [S],
    ))

    // WorkflowNameListService
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflowNameList_ della classe _WorkflowNameListService_ ritorni il risultato della porta di output.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflowNameList_ della classe _WorkflowNameListService_ ritorni una lista vuota nel caso in cui non ci siano workflow.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflowNameList_ della classe _WorkflowNameListService_ lanci un'eccezione di tipo _UserNotFoundError_ poiché l'utente non è stato trovato.],
        [S],
    ))

    // WorkflowPortAdapter
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflowByName_ della classe _WorkflowPortAdapter_ ritorni un oggetto di business con il workflow avente il nome specificato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflowByName_ della classe _WorkflowPortAdapter_ ritorni null poiché il workflow avente il nome specificato non esiste.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _addWorkflow_ della classe _WorkflowPortAdapter_ ritorni un oggetto di business con il workflow aggiunto.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _addWorkflow_ della classe _WorkflowPortAdapter_ ritorni null poiché il workflow non è stato aggiunto correttamente.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _deleteWorkflow_ della classe _WorkflowPortAdapter_ ritorni un oggetto di business con il workflow eliminato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _deleteWorkflow_ della classe _WorkflowPortAdapter_ ritorni null poiché il workflow non esiste.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getAllWorkflowByUsername_ della classe _WorkflowPortAdapter_ ritorni un oggetto di business con i workflow dell'utente specificato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getAllWorkflowByUsername_ della classe _WorkflowPortAdapter_ ritorni null poiché l'utente non esiste.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _saveWorkflow_ della classe _WorkflowPortAdapter_ ritorni un oggetto di business con il workflow salvato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _saveWorkflow_ della classe _WorkflowPortAdapter_ ritorni null poiché il workflow non è stato trovato.],
        [S],
    ))

    // WorkflowRepository
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflowByName_ della classe _WorkflowRepository_ ritorni un'entity del database con il workflow avente il nome specificato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getWorkflowByName_ della classe _WorkflowRepository_ ritorni null poiché il workflow avente il nome specificato non è stato trovato nel database.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _addWorkflow_ della classe _WorkflowRepository_ ritorni un'entity del database con il workflow aggiunto.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _addWorkflow_ della classe _WorkflowRepository_ ritorni null poiché l'utente avente il nome specificato non è stato trovato nel database.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _addWorkflow_ della classe _WorkflowRepository_ ritorni null poiché il workflow non è stato aggiunto correttamente al database.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getAllWorkflowByUsername_ della classe _WorkflowRepository_ ritorni un'entity del database con i workflow dell'utente specificato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _getAllWorkflowByUsername_ della classe _WorkflowRepository_ ritorni null poiché l'utente specificato non è stato trovato nel database.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _deleteWorkflow_ della classe _WorkflowRepository_ ritorni un'entity del database con il workflow eliminato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _deleteWorkflow_ della classe _WorkflowRepository_ ritorni null poiché il workflow avente il nome specificato non è stato trovato nel database.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _deleteWorkflow_ della classe _WorkflowRepository_ ritorni null poiché il workflow non è stato eliminato correttamente dal database.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _saveWorkflow_ della classe _WorkflowRepository_ ritorni un'entity del database con il workflow salvato.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _saveWorkflow_ della classe _WorkflowRepository_ ritorni null poiché il workflow avente il nome specificato non è stato trovato nel database.],
        [S],
    ))

    // ExecuteWorkflowController
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _executeWorkflow_ della classe _ExecuteWorkflowController_ ritorni il risultato del service.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _executeWorkflow_ della classe _ExecuteWorkflowController_ lanci un'eccezione con http status 412 poiché il workflow non è valido.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _executeWorkflow_ della classe _ExecuteWorkflowController_ lanci un'eccezione con http status 500 poiché è stato lanciato un errore.],
        [S],
    ))

    // ExecuteWorkflowService
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _executeWorkflow_ della classe _ExecuteWorkflowService_ ritorni il risultato della porta di output.],
        [S],
    ))

    // WorkflowAgentAdapter
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _executeRequest_ della classe _WorkflowAgentAdapter_ ritorni il risultato del repository.],
        [S],
    ))

    // AgentRepository
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _executeRequest_ della classe _AgentRepository_ ritorni il risultato della richiesta fatta all'agente.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _executeRequest_ della classe _AgentRepository_ lanci un'errore poiché non è riuscito a connettersi all'agente.],
        [S],
    ))

    // WorkflowDTOValidator
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _validate_ della classe _WorkflowDTOValidator_ non lanci un'eccezione poiché il workflow è valido.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _validate_ della classe _WorkflowDTOValidator_ lanci un'eccezione con http status 412 poiché il workflow non ha almeno due nodi.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _validate_ della classe _WorkflowDTOValidator_ lanci un'eccezione con http status 412 poiché il workflow non ha _n_-1 archi, dove _n_ è il numero di nodi.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _validate_ della classe _WorkflowDTOValidator_ lanci un'eccezione con http status 412 poiché il workflow ha almeno due nodi con gli stessi _id_.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _validate_ della classe _WorkflowDTOValidator_ lanci un'eccezione con http status 412 poiché il workflow ha almeno due archi con gli stessi _source id_.],
        [S],
    ))
    
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _validate_ della classe _WorkflowDTOValidator_ lanci un'eccezione con http status 412 poiché il workflow ha almeno due archi con gli stessi _target id_.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _validate_ della classe _WorkflowDTOValidator_ lanci un'eccezione con http status 412 poiché il workflow ha almeno un arco senza descrizione.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _validate_ della classe _WorkflowDTOValidator_ lanci un'eccezione con http status 412 poiché il workflow ha almeno un arco con _id source_ e _id target_ uguali.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _validate_ della classe _WorkflowDTOValidator_ lanci un'eccezione con http status 412 poiché il workflow ha almeno un arco in cui il _source id_ non corrisponde ad un _id_ di un nodo.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _validate_ della classe _WorkflowDTOValidator_ lanci un'eccezione con http status 412 poiché il workflow ha almeno un arco in cui il _target id_ non corrisponde ad un _id_ di un nodo.],
        [S],
    ))

    // WorkflowAdapterImplementation
    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _toDTO_ della classe _WorkflowAdapterImplementation_ adatti un oggetto di tipo _Workflow_ in un oggetto di tipo _WorkflowDTO_.],
        [S],
    ))

    unitàBackend.push(("TUB" + str(unitàBackend.len()+1),
        [Verificare che il metodo _toDomain_ della classe _WorkflowAdapterImplementation_ adatti un oggetto di tipo _WorkflowDTO_ in un oggetto di tipo _Workflow_.],
        [S],
    ))

    // WorkflowController (AGENTE)
    unitàAgente.push(("TUA" + str(unitàAgente.len()+1),
        [Verificare che il metodo _executeWorkflow_ della classe _WorkflowController_ ritorni una stringa che contiene il risultato dell'esecuzione dell'agente.],
        [S],
    ))

    unitàAgente.push(("TUA" + str(unitàAgente.len()+1),
        [Verificare che il metodo _executeWorkflow_ della classe _WorkflowController_ lanci un'eccezione con http status 400 se la richiesta è invalida a causa dell'errato schema JSON.],
        [S],
    ))

    unitàAgente.push(("TUA" + str(unitàAgente.len()+1),
        [Verificare che il metodo _executeWorkflow_ della classe _WorkflowController_ lanci un'eccezione http status 400 se la richiesta è invalida a causa di un campo action vuoto in uno dei nodi del workflow che non sia l'ultimo.],
        [S],
    ))

    unitàAgente.push(("TUA" + str(unitàAgente.len()+1),
        [Verificare che il metodo _executeWorkflow_ della classe _WorkflowController_ lanci un'eccezione http status 400 se la richiesta è invalida a causa del campo action non vuoto nell'ultimo nodo del workflow.],
        [S],
    ))

    // WorkflowService (AGENTE)
    unitàAgente.push(("TUA" + str(unitàAgente.len()+1),
        [Verificare che il metodo _run_ della classe _WorkflowService_ ritorni un oggetto di tipo _AgentResponse_ che contiene la risposta generata da un agente AI che utilizza un LLM.],
        [S],
    ))

    // AllWorkflowService (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _allWorkflows(...)_ della classe _AllWorkflowsService_ effettui la corretta chiamata HTTP e ritorni la lista dei workflow.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _allWorkflows(...)_ della classe _AllWorkflowsService_ lanci un errori con il messaggio "Something wrong" quando la richiesta HTTP ritorna un codice 400.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _allWorkflows(...)_ della classe _AllWorkflowsService_ lanci un errori con il messaggio \"Server error\" quando la richiesta HTTP ritorna un codice 500.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _allWorkflows(...)_ della classe _AllWorkflowsService_ lanci un errori con il messaggio \"Generic error\" quando la richiesta HTTP fallisce.],
        [S]
    ))

    // CreateWorkflowService (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _newWorkflow(...)_ della classe _CreateWorkflowService_ ritorni il workflow creato quando la chiamata HTTP ha successo.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _newWorkflow(...)_ della classe _CreateWorkflowService_ ritorni un Error con messaggio \"Workflow with the same name already exists\" creato quando la chiamata HTTP ritorna un codice 400.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _newWorkflow(...)_ della classe _CreateWorkflowService_ ritorni un Error con messaggio \"Server error\" creato quando la chiamata HTTP ritorna un codice 500.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _newWorkflow(...)_ della classe _CreateWorkflowService_ ritorni un Error con messaggio \"Generic error\" creato quando la chiamata HTTP fallisce.],
        [S]
    ))

    // DeleteWorkflowService (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _deleteWorkflowByName(...)_ della classe _DeleteWorkflowService_ ritorni il workflow cancellato.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _deleteWorkflowByName(...)_ della classe _DeleteWorkflowService_ ritorni un Error con messaggio \"Generic error\" se la chiamata HTTP riceve un codice 404.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _deleteWorkflowByName(...)_ della classe _DeleteWorkflowService_ ritorni un Error con messaggio \"Server error\" se la chiamata HTTP riceve un codice 500.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _deleteWorkflowByName(...)_ della classe _DeleteWorkflowService_ ritorni un Error con messaggio \"Generic error\" se la chiamata HTTP fallisce.],
        [S]
    ))

    // LoginService (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _login(...)_ della classe _LoginService_ ritorni un access token se la chiamata HTTP riceve un codice 201.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _login(...)_ della classe _LoginService_ ritorni un Error con messaggio \"wrong username or password\" se la chiamata HTTP riceve un codice 401.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _login(...)_ della classe _LoginService_ ritorni un Error con messaggio \"Server error\" se la chiamata HTTP riceve un codice 500.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _login(...)_ della classe _LoginService_ ritorni un Error con messaggio \"Generic error\" se la chiamata HTTP fallisce.],
        [S]
    ))

    // RegisterService (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _register(...)_ della classe _RegisterService_ ritorni uno UserDTO se la chiamata HTTP ritorna un codice 201.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _register(...)_ della classe _RegisterService_ ritorni uno Error con messaggio "Username already exists" se la chiamata HTTP ritorna un codice 400.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _register(...)_ della classe _RegisterService_ ritorni un Error con messaggio \"Server error\" se la chiamata HTTP riceve un codice 500.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _register(...)_ della classe _RegisterService_ ritorni un Error con messaggio \"Generic error\" se la chiamata HTTP fallisce.],
        [S]
    ))

    // AuthContext (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _loginUser(...)_ di _AuthContext_ imposti _user.username_ quando il login ha successo.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _loginUser(...)_ di _AuthContext_ imposti _user.accessToken_ quando il login ha successo.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _loginUser(...)_ di _AuthContext_ scriva nel local storage del browser _user_ quando il login ha successo.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _AuthContext_ imposti automaticamente _user_ nel contesto se è salvato nel local storage.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _loginUser(...)_ di _AuthContext_ imposti il campo _error_ di _AuthContext_ un messaggio di errore \"wrong username or password\" se il login fallisce per via delle credenziali di accesso errate.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _loginUser(...)_ di _AuthContext_ imposti _user.username_ e _user.accessToken_ a stringhe vuote se il login fallisce per via delle credenziali di accesso errate.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _logoutUser(...)_ di _AuthContext_ imposti _user.username_ a null.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _logoutUser(...)_ di _AuthContext_ imposti _user.accessToken_ a null.],
        [S]
    ))
    
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _logoutUser(...)_ di _AuthContext_ cancelli l'elemento con chiave _user_ nel local storage del browser.],
        [S]
    ))

    // GoogleTokenContext (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _addGoogleToken(...)_ di _GoogleTokenContext_ imposti _googleToken.token_.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _addGoogleToken(...)_ di _GoogleTokenContext_ imposti _googleToken.expireDate_.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _addGoogleToken(...)_ di _GoogleTokenContext_ salvi _googleToken_ nel local storage.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _removeGoogleToken(...)_ di _GoogleTokenContext_ rimuova _googleToken.token_ e _googleToken.expireDate_.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _removeGoogleToken(...)_ di _GoogleTokenContext_ rimuova _googleToken_ dal local storage.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _isTokenExpired(...)_ di _GoogleTokenContext_ ritorni true se il token è scaduto o non presente.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _isTokenExpired(...)_ di _GoogleTokenContext_ ritorni false se il token non è scaduto.],
        [S]
    ))

    // useAllWorkflows (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che l'hook _useAllWorkflows_ sia in grado di ottenere tutti i workflow se l'utente è autenticato.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che l'hook _useAllWorkflows_ sia in grado gestire gli errori in caso di fallimento della chiamata API.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che l'hook _useAllWorkflows_ lanci un Error se viene utilizzato fuori da un _AuthProvider_.],
        [S]
    ))

    // useAuth (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che un componente avvolto in un _AuthProvider_ che invoca _useAuth_ riesca ad accedere al contesto.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che un componente che invoca _useAuth_ non avvolto in un _AuthProvider_ lanci un Error.],
        [S]
    ))

    // useCreateWorkflow (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _useCreateWorkflow_ riesca a creare un workflow quando l'utente è autenticato.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _useCreateWorkflow_ riesca a gestire gli errori in caso di fallimento della chiamata API.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _useCreateWorkflow_ lanci un errore quando il componente che lo invoca non è avvolto in un _AuthProvider_.],
        [S]
    ))

    // useDeleteWorkflow (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _useDeleteWorkflow_ riesca a cancellare un workflow quando l'utente è autenticato.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _useDeleteWorkflow_ riesca a gestire gli errori in caso di fallimento della chiamata API.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che _useDeleteWorkflow_ lanci un errore quando il componente che lo invoca non è avvolto in un _AuthProvider_.],
        [S]
    ))

    // useGoogleToken
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che un componente avvolto in un _GoogleTokenProvider_ e invoca _useGoogleToken_ riesca ad accedere al contesto.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che un componente non avvolto in un _GoogleTokenProvider_ e invoca _useGoogleToken_ lanci Error.],
        [S]
    ))

    // useRegisterTest
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che l'hook _useRegisterTest_ riesca a registrare un utente con successo.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che l'hook _useRegisterTest_ gestisca l'errore di username già esistente.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che l'hook _useRegisterTest_ gestisca un errore del server.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che l'hook _useRegisterTest_ gestisca un errore generico.],
        [S]
    ))

    //ExecuteWorkflowService (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _executeWorkflow(...)_ della classe _ExecuteWorkflowService_ ritorni il risultato dell'esecuzione del workflow da parte dell'agente.],
        [S]
    ))

    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che il metodo _executeWorkflow(...)_ della classe _ExecuteWorkflowService_ lanci un Error con messaggio "Generic error" se la richiesta HTTP riceve un codice diverso da 200.],
        [S]
    ))

    // useExecuteWorkflow (FRONTEND)
    unitàFrontend.push(("TUF" + str(unitàFrontend.len()+1),
        [Verificare che l'hook _useExecuteWorkflow_ sia in grado di eseguire un workflow e comunicare la risposta.],
        [S]
    ))

    return unitàBackend + unitàAgente + unitàFrontend
}


// test di sistema
#let getSistema() = {
    let sistema = ()

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa effettuare il login interno.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire il proprio username per effettuare il login interno.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire la propria password per effettuare il login interno.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato riceva un messaggio di errore in caso abbia inserito credenziali errate per il login interno.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa effettuare il login con Google.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa effettuare il logout.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa registrarsi.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire lo username per la registrazione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire la password per la registrazione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato possa inserire nuovamente la password per la registrazione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente non autenticato riceva un messaggio di
        errore in caso abbia inserito credenziali non valide per la
        registrazione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa associare un account
        Google da utilizzare per i servizi offerti dai blocchi dei
        workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato riceva un messaggio in caso di
        errore nell’associazione dell’account Google per i servizi
        offerti dai blocchi del workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa scollegare l’account
        Google precedentemente collegato.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare la lista dei
        workflow creati.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, visualizzando la lista dei workflow,
        possa visualizzare il nome di ciascun workflow sotto
        forma di link.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, visualizzando la lista dei workflow,
        possa visualizzare per ogni workflow nella lista
        un’opzione per eliminarlo.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa creare un nuovo workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa inserire il nome del
        workflow che sta creando.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un avviso che
        indica la non univocità del nome del workflow inserito
        durante la sua creazione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un avviso che
        indica la non validità del nome del workflow inserito
        durante la sua creazione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare quali blocchi
        (servizi) sono stati configurati.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, visualizzando i blocchi configurati, possa visualizzare il nome di ogni blocco.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, visualizzando i blocchi configurati, possa visualizzare un’opzione per ottenere
        informazioni sul servizio associato al blocco.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato riceva un avviso in caso non
        abbia collegato nessun servizio associato ai blocchi.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare una breve
        descrizione relativa al blocco Gmail.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare le funzioni
        offerte dal blocco Gmail.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

        sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare una breve
        descrizione relativa al blocco Pastebin.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare le funzioni
        offerte dal blocco Pastebin.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

        sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare una breve
        descrizione relativa al blocco Calendar.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))


    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare le funzioni
        offerte dal blocco Calendar.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa aggiungere un blocco in
        un workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, per poter aggiungere un blocco in un
        workflow, lo deve trascinare nell'area drag and drop.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa eliminare un blocco in un
        workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa collegare due blocchi in
        un workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa scollegare due blocchi in
        un workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa inserire una descrizione
        dell'automazione in linguaggio naturale tra due blocchi
        collegati.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare la struttura
        del workflow],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare ogni blocco
        presente nel workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare il nome del
        servizio di ogni blocco presente nel workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare gli archi che
        collegano i blocchi presenti nel workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare la descrizione
        di ogni arco presente nel workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa salvare un workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un messaggio di avviso che
        informa del fallimento nel salvataggio del workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa cancellare un workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un messaggio di avviso che
        informa del fallimento nell'eliminazione del workflow],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa mandare in esecuzione un workflow],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato, dopo aver mandato in esecuzione un
        workflow con una struttura non valida, visualizzi un
        messaggio d'errore.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato visualizzi un messaggio che lo
        informa di un errore runtime nell'esecuzione del
        workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare il risultato
        dell’esecuzione del workflow.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare, all’interno
        del risultato del workflow, i passi dell’esecuzione.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che l'utente autenticato possa visualizzare, all’interno
        del risultato del workflow, i link delle risorse generate.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il frontend possa inviare l'insieme dei blocchi del workflow al backend.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il frontend possa inviare l'insieme degli archi del workflow al backend.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il frontend possa inviare l'insieme delle automazioni del workflow al backend.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il backend possa inviare l'insieme dei blocchi ordinati del workflow all'agente.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il backend possa inviare l'insieme delle automazioni del workflow all'agente.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    sistema.push(("TS" + str(sistema.len()+1),
        [Verificare che il backend possa inviare l'insieme dei token di autorizzazione necessari all'agente.],
        [#getFRByNumber(sistema.len()+1).at(0)],
        [NI],
    ))

    return sistema
}


// test di accettazione
#let getAccettazione() = {
    let accettazione = ()

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il prodotto sia un webapp.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il sistema utilizzi un agente AI.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il sistema offra almeno 3 blocchi di automazione.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che l'interfaccia del prodotto sia drag and drop.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il sistema possa ricevere i dati del workflow.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il sistema possa eseguire delle automazioni.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che le automazioni eseguite dal sistema facciano delle chiamate API ai servizi finali.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il sistema comprenda dei blocchi che offrono delle funzionalità attraverso delle chiamate API.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che, data in input dall'utente l'automazione in linguaggio naturale, il sistema la esegua in autonomia.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che gli utenti possano disegnare un workflow.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che l'utente possa esprimere in linguaggio naturale la logica funzionale desiderata per ogni step del processo.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che l'utente possa eseguire operazioni CRUD sui workflow.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che l'agente sia implementato in Python.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il database sia implementato in MongoDB.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il frontend sia implementato in React.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il backend sia implementato in NestJS.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il backend utilizzi il linguaggio TypeScript.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che sia utilizzato NodeJS come runtime JavaScript.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che le componenti del prodotto comunichino tramite API Restful JSON.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che le API siano documentate attraverso Swagger.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che le componenti del prodotto siano sviluppate in container Docker.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il 70% del codice sorgente sia coperto da test di unità.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il codice sorgente sia gestito utilizzando sistemi di versionamento e repository online.],
        [NI],
    ))


    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il team abbia documentato le criticità, i limiti del prodotto e i bug rilevati.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il team abbia documentato i casi d'uso.],
        [NI],
    ))

    accettazione.push(("TA" + str(accettazione.len()+1),
        [Verificare che il team abbia documentato le classi attraverso diagrammi UML.],
        [NI],
    ))


    return accettazione
}
