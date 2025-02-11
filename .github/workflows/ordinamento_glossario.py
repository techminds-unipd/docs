import re, glob, os, sys

REPO_DIR = '../../'
FILE_GLOSSARIO = REPO_DIR + 'RTB/documenti_interni/glossario/glossario.typ'

if 'GITHUB_WORKSPACE' in os.environ:
    REPO_DIR = os.environ['GITHUB_WORKSPACE'] + '/RTB'
    FILE_GLOSSARIO = REPO_DIR + '/documenti_interni/glossario/glossario.typ'


def get_file_text(f):
    f = open(f, "r", encoding="utf-8")
    text = f.read()
    f.close()
    return text