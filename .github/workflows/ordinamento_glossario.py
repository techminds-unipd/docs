import re, glob, os, sys

REPO_DIR = '../../'
FILE_GLOSSARIO = REPO_DIR + 'PB/documenti_interni/glossario/glossario.typ'

if 'GITHUB_WORKSPACE' in os.environ:
    REPO_DIR = os.environ['GITHUB_WORKSPACE'] + '/PB'
    FILE_GLOSSARIO = REPO_DIR + '/documenti_interni/glossario/glossario.typ'

def is_sorted(words):
    return words == sorted(words, key=str.lower)

def find_out_of_order(words):
    return [word for i, word in enumerate(words[:-1]) if word.lower() > words[i + 1].lower()]

try:
    with open(FILE_GLOSSARIO, "r", encoding="utf-8") as file:
        words = []
        for line in file:
            match = re.search(r'==\s*(.*)', line)
            if match:
                words.append(match.group(1).strip())
    
    if not is_sorted(words):
        print("Le parole in glossario NON sono in ordine alfabetico.")
        out_of_order = find_out_of_order(words)
        print("Parole fuori posto:", out_of_order)
        sys.exit(1)
except Exception as e:
    print(f"Errore durante la lettura del file: {e}")
    sys.exit(1)
