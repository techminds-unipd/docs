#import "/template/template.typ": glossario

#let getFR(number) = {
    let FR = ()
    let FMR = 1
    let FOR = 1

    FR.push(  ("FMR" + str(FMR),
                [Il sistema deve offrire almeno tre blocchi di automazione diversi.],
                [Capitolato]))
    FMR += 1
    FR.push(  ("FMR" + str(FMR),
                [L'utente deve poter effettuare il login.], [@login, @login-interno, @inserimento-username, @inserimento-password, @credenziali-errate]))
    FMR += 1
    FR.push(  ("FOR" + str(FOR),
                [L'utente deve poter fare il login con Google.],
                [@login-google]))
    FOR += 1
    return FR.at(number - 1)
}