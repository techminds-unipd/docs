import re, glob, os, sys

REPO_DIR = '../../PB'
if 'GITHUB_WORKSPACE' in os.environ:
    REPO_DIR = os.environ['GITHUB_WORKSPACE'] + '/PB'

def gulpease_index(text):
    n_lettere = len(list(filter(lambda x: x.isalpha(), text)))
    n_parole = len(re.findall(r'\b\w+\b', text))
    n_frasi = len(re.findall(r'[.!?;:]', text))

    if n_parole == 0:
        return float('inf')
    
    gulpease = 89 + (300 * n_frasi - 10 * n_lettere) / n_parole

    return round(gulpease)

def get_nested_parentheses(string): # https://stackoverflow.com/questions/4284991/parsing-nested-parentheses-in-python-grab-content-by-level#4285211
    stack = []
    for i, c in enumerate(string):
        if c == '(':
            stack.append(i)
        elif c == ')' and stack:
            start = stack.pop()
            yield string[start + 1: i]

def filter_file(text):
    # Remove headers
    text = re.sub("(?m)^=.*", "", text)

    # Remove #linebreak
    text = text.replace("#linebreak()", "")

    # Remove labels
    text = re.sub("<.*>", "", text)

    # Remove functions call
    res = list(get_nested_parentheses(text))
    res.sort(key=lambda s: len(s))
    res = list(reversed(res))
    for i in res:
        text = text.replace(i, "")

    # Remove comments
    text = re.sub(r"\/\*([\s\S]*?)\*/", "", text)

    # Remove \
    text = re.sub(r"\\", "", text)

    # Remove # functions at startline
    text = re.sub("(?m)^#.*", "", text)

    # Remove spaces and blank lines
    text = " ".join(text.split())

    return text

def get_file_text(f):
    f = open(f, "r")
    text = f.read()
    f.close()
    return text

if __name__ == "__main__":
    sources_to_check = []

    if len(sys.argv) == 1:
        sources = glob.glob("{}/**/*.typ".format(REPO_DIR), recursive=True)

        # Blacklist
        blacklist = ["/specifica-tecnica.typ", "/testing.typ", "/qualita-processo.typ", "/metriche-qualita.typ", "/definizione-metriche.typ", "template/", "candidatura/", "/verbali/", "/costi.typ", "/piano-di-progetto.typ", "/use_cases.typ", "/piano-di-qualifica.typ", "/analisi-dei-requisiti.typ", "/requisiti.typ", "/norme-di-progetto.typ", "/funzioni_ausiliarie.typ"]
        for source in sources:
            if not any([string in source for string in blacklist]):
                sources_to_check.append(source)

    elif len(sys.argv) == 2:
        sources_to_check = [sys.argv[1]]

    elif len(sys.argv) > 2:
       print("Usage: {} [file.typ]".format(sys.argv[0], file=sys.stderr))
       exit(1)

    for source in sources_to_check:
        source_text = get_file_text(source)
        source_text = filter_file(source_text)
        res = gulpease_index(source_text)

        if res < 40:
            print("{} \t {}".format(res, os.path.abspath(source).split("PB/")[1]))
            print(source_text)
            sys.exit(1)
        if res > 40:
            print("{} \t {}".format(res, os.path.abspath(source).split("PB/")[1]))
