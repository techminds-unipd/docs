#let declaration(str) = {text(str, fill:rgb("#0920cf"))}
#let arrow = sym.arrow.r

// funzioni per sezioni ridondanti

// funzioni per getUser
#let service_proprietà_get_user_port = [- #declaration("- getUserPort: GetUserPort") #arrow porta di output per il recupero di uno _user_ dal database.]

#let get_user_port_interfaccia = [- *GetUserPort* (interfaccia) \ • #declaration(" + getUserByUsername(username: string): User[0..1]").]

#let adapter_operazioni_get_user = [- #declaration("+ getUserByUsername(username: string): User[0..1]") #arrow metodo dichiarato nella porta _GetUserPort_. Chiama il metodo _getUserByUsername_ del repository e poi, se l'output non è _null_, lo converte in _User_ e lo ritorna, altrimenti ritorna _null_.]

#let repository_operazioni_get_user = [- #declaration("+ getUserByUsername(username: string): UserEntity[0..1]") #arrow attraverso il metodo _findOne_ di _userEntityModel_ e lo _username_, esegue una query sul database che ritorna una _UserEntity_.]

// funzioni per getWorkflow
#let service_proprietà_get_workflow_port = [- #declaration("- getWorkflowPort: GetWorkflowPort") #arrow porta di output per il recupero di un _workflow_ dal database.]

#let get_workflow_port_interfaccia = [- *GetWorkflowPort* (interfaccia) \ • #declaration(" + getWorkflowByName(username: string, workflowName: string): Workflow[0..1]").]

#let adapter_operazioni_get_workflow = [- #declaration("+ getWorkflowByName(username: string, workflowName: string): Workflow[0..1]") #arrow metodo dichiarato nella porta _GetWorkflowPort_. Chiama il metodo _getWorkflowByName_ del repository e poi, se l'output non è _null_, lo converte in _Workflow_ e lo ritorna, altrimenti ritorna _null_.]

#let repository_operazioni_get_workflow = [- #declaration("+ getWorkflowByName(username: string, workflowName: string): WorkflowEntity[0..1]") #arrow attraverso il metodo _findOne_ di _userEntityModel_, con i parametri _username_ e _workflowName_, esegue una query sul database che ritorna un oggetto contenente una _WorkflowEntity_.]