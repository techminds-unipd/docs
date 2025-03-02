import re, os, glob, shutil

REPO_DIR = '../../../docs'
if 'GITHUB_WORKSPACE' in os.environ:
    REPO_DIR = os.environ['GITHUB_WORKSPACE']

def build_link(path):
    version = ""
    if len(path.split("::")) >= 2:
        version = path.split("::")[1]
    path = path.split("::")[0]

    link = os.path.abspath(path)
    if 'GITHUB_WORKSPACE' in os.environ:
        link = os.path.abspath(path).replace(REPO_DIR, "").replace("/build/", "")
    name = os.path.basename(path).replace(".pdf","")
    name = name[0].upper() + name[1:]
    name = format_name(name)
    return "<li><a href=\"{}\" target=\"_blank\" >{}</a> {} <i class=\"fa-solid fa-arrow-up-right-from-square\"></i>\n</li>".format(link, name, version)

#Questa funzione funziona solo se teniamo i nomi dei documenti come sono ora.
def format_name(name):
    name=name.replace("-"," ")
    if name[0].isdigit():
        name = name.replace(" ", "/", 2)
    return name

f = open("{}/template/index.html".format(REPO_DIR), "r")
content = f.read()
f.close()

pdfs = glob.glob("{}/build/**/*.pdf".format(REPO_DIR), recursive=True)

for i in re.findall("{.*}", content):
    lists = ""
    add = []
    for pdf in pdfs:
        if i[1:-1].split("::")[0] in pdf:
            if len(i[1:-1].split("::")) >= 2:
                add.append(pdf + "::" +i[1:-1].split("::")[1])
            else:
                add.append(pdf)
    add.sort(reverse=True)
    for pdf in add:
        lists = lists + build_link(pdf)
    content = content.replace(i, "\n{}".format(lists))

f = open("{}/build/index.html".format(REPO_DIR), "w")
f.write(content)
f.close()

# CSS and Logos
shutil.copyfile("{}/template/style.css".format(REPO_DIR), "{}/build/style.css".format(REPO_DIR))
shutil.copyfile("{}/template/assets/logo.png".format(REPO_DIR), "{}/build/logo.png".format(REPO_DIR))
shutil.copyfile("{}/template/assets/logo_favicon.png".format(REPO_DIR), "{}/build/logo_favicon.png".format(REPO_DIR))