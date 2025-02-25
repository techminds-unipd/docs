import re, glob, os, sys

REPO_DIR = '../../PB'
FILE_GLOSSARIO = REPO_DIR + '/documenti_interni/glossario/glossario.typ'

if 'GITHUB_WORKSPACE' in os.environ:
    REPO_DIR = os.environ['GITHUB_WORKSPACE'] + '/PB'
    FILE_GLOSSARIO = REPO_DIR + '/documenti_interni/glossario/glossario.typ'


def get_file_text(f):
    f = open(f, "r", encoding="utf-8")
    text = f.read()
    f.close()
    return text

def search_with_termine_contenuto(text, termine, termini_contenuti):
    all_termine = list(re.finditer(r'\b' + re.escape(termine) + r'\b', text))

    # Cerco la prima occorrenza del termine che non sia contenuta in altri termini
    for x in all_termine:
        flag = True
        for t in termini_contenuti:
            x_ridondanza = re.search(r'\b' + re.escape(t) + r'\b', text)
            if x_ridondanza and x_ridondanza.span()[0] <= x.span()[0] and x.span()[1] <= x_ridondanza.span()[1]:
                flag = False

        if flag:
            return x
        
    return None

# Prende un termine e controlla che sia scritto correttamente alla prima occorrenza (se presente)
# Se trova il termine correttamente ritorna una tupla con il match di "#glossario[termine]", True ed il termine
# Se trova il termine ma non scritto dentro a #glossario ritorna una tupla con il match del termine che deve essere corretto, False ed il termine
# Se non trova il termine non ritorna nulla
def check_single_term(termine, text):
    x = re.search(r'\b' + re.escape(termine) + r'\b', text)

    if termine in termini_contenuti:
        x = search_with_termine_contenuto(text, termine, termini_contenuti[termine])

    if x:
        y = re.search(r"\#GLOSSARIO\[{}\]".format(termine), text)
        if y and y.span()[0] == x.span()[0] - 11 and y.span()[1] == x.span()[1] + 1:
            return (y, True, termine)
        else:
            return (x, False, termine)

# Controllo dei termini nel file
def check(f, text, termini_glossario, termini_contenuti):
    print("-----------------------------")
    print("Searching terms in {}".format(f))
    return_value = 0
    for termine in termini_glossario:
        if len(termine) == 1:
            termine = termine[0]
            res = check_single_term(termine, text)

            if res and res[1]:
                print("OK: {}".format(termine))
            elif res and res[1] == False:
                x = res[0]
                print("FAIL: \"{}\" was not found inside #glossario[{}]".format(termine, termine), file=sys.stderr)
                print("Text snippet:\n====\n{}\n====".format(text[x.span()[0]-40:x.span()[1]+40]), file=sys.stderr)
                return_value = 1  # Traccia il fallimento

        else:
            matches = []
            for variante_termine in termine:
                res = check_single_term(variante_termine, text)
                if res:
                    span = res[0].span()
                    matches.append((span, res[1], res[2]))
            
            matches.sort(key=lambda m: m[0][0])  # Sorting in base allo span()[0]

            if len(matches) > 0:
                match_term = matches[0]  # Primo match
                x = match_term[0]
                termine = match_term[2]
                if match_term[1]:
                    print("OK: {}".format(termine))
                else:
                    print("FAIL: \"{}\" was not found inside #glossario[{}]".format(termine, termine), file=sys.stderr)
                    print("Text snippet:\n====\n{}\n====".format(text[x[0]-40:x[1]+40]), file=sys.stderr)
                    return_value = 1  # Traccia il fallimento
      
    return return_value

def filter_file(f, text):
    # Resolve include and discard file header
    includes = re.findall(r"\#include \".*\"", text)
    comments = re.findall(r"//.*", text)
    if includes:
        text = "".join(comments)
        for include in includes:
            include_path = os.path.dirname(source)+"/"
            include_text = get_file_text(include_path + include.split("\"")[1]).lower()
            include_text = re.sub(r"\#import \".*\": .*", "", include_text) # Remove imports
            text += include_text
            
    # Remove headers
    text = re.sub("=.*", "", text)

    # Remove links
    text = re.sub(r"http.:\/\/.*", "", text)

    # Lowercase all
    text = text.lower()

    # Make glossario[.*] => GLOSSARIO[.*]
    text = text.replace("#glossario", "#GLOSSARIO")

    return text

# Prendo i termini del glossario
def get_from_glossario(f):
    glossario = get_file_text(f)
    termini = re.findall("== .*", glossario) 
    termini = [t.replace("== ", "").lower().strip() for t in termini]

    # Parsing: == Termine // Termini ...
    for index, termine in enumerate(termini):
        termine = termine.split("//")

        if len(termine) > 1:
            termine = [termine[0]] + re.findall("{(.*?)}", termine[1])
            termine = list(map(str.strip, termine))
            termini[index] = termine
        else:
            termini[index] = [termine[0]]

    return termini

def get_termini_contenuti_in_altri(termini):
    res = {}
    termini = [item for sublist in termini for item in sublist] # Flat the list
    for i in termini:
        for j in termini:
           if (' '+i in j or i+' ' in j or ' '+i+' ' in j) and i != j:
               if i in res:
                   res[i].append(j)
               else:
                   res[i] = [j]
    return res


if __name__ == "__main__":
    termini = get_from_glossario(FILE_GLOSSARIO)
    termini_contenuti = get_termini_contenuti_in_altri(termini)
    sources_to_check = [] # File da controllare
    fail_found = 0  # Ritorna 0 se non si sono verificati errori

    if len(sys.argv) == 1:
        sources = glob.glob("{}/**/*.typ".format(REPO_DIR), recursive=True)

        # Blacklist
        blacklist = ["template/", "glossario", "candidatura/", "/include/", "/verbali/", "lettera-di-presentazione-RTB.typ"]
        for source in sources:
            if not any([string in source for string in blacklist]):
                sources_to_check.append(source)

    elif len(sys.argv) == 2:
        sources_to_check = [sys.argv[1]]

    elif len(sys.argv) > 2:
        print("Usage: {} [file.typ]".format(sys.argv[0], file=sys.stderr))
        exit(1)

    # Filtro e check
    for source in sources_to_check:
        source_text = get_file_text(source)
        source_text = filter_file(source, source_text)
        fail_found = check(source, source_text, termini, termini_contenuti) | fail_found

    # Ritorna codice di uscita 1 se ci sono fallimenti
    if fail_found:
        sys.exit(1)
