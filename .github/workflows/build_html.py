import re
import os
import glob
import shutil

def build_link(path):
    link = os.path.abspath(path).replace(repo_dir, "").replace("/build/", "")
    name = os.path.basename(path).replace(".pdf","")
    name = name[0].upper() + name[1:]
    return "<li><a href=\"{}\" target=\"_blank\" >{}</a> <i class=\"fa-solid fa-arrow-up-right-from-square\"></i></li>\n".format(link, name)

repo_dir = os.environ['GITHUB_WORKSPACE']

f = open("{}/template/index.html".format(repo_dir), "r")
content = f.read()
f.close()

pdfs = glob.glob("{}/build/**/*.pdf".format(repo_dir), recursive=True)

for i in re.findall("{.*}", content):
    lists = ""
    add = []
    for pdf in pdfs:
        if i[1:-1] in pdf:
            add.append(pdf)
    add.sort(reverse=True)
    for pdf in add:
        lists = lists + build_link(pdf)
    content = content.replace(i, "\n{}".format(lists))

f = open("{}/build/index.html".format(repo_dir), "w")
f.write(content)
f.close()

# CSS and Logo
shutil.copyfile("{}/template/style.css".format(repo_dir), "{}/build/style.css".format(repo_dir))
shutil.copyfile("{}/assets/logo.png".format(repo_dir), "{}/build/logo.png".format(repo_dir))
