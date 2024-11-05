import re
import os
import glob

def build_link(path):
    link = "https://raw.githubusercontent.com/techminds-unipd/docs/refs/heads/main/{}".format(os.path.abspath(path).replace(repo_dir, ""))
    return "<li><a href=\"{}\">{}</a><i class=\"fa-solid fa-arrow-up-right-from-square\"></i></li>\n".format(link, os.path.basename(path).replace(".pdf",""))

repo_dir = os.environ['GITHUB_WORKSPACE']

f = open("{}/template/index.html".format(repo_dir), "r")
content = f.read()
f.close()

pdfs = glob.glob("{}/build/**/*.pdf".format(repo_dir), recursive=True)

for i in re.findall("{.*}", content):
    lists = ""
    for pdf in pdfs:
        if i[1:-1] in pdf:
            lists = lists + build_link(pdf)
    content = content.replace(i, "\n{}".format(lists))

f = open("{}/build/index.html".format(repo_dir), "w")
f.write(content)
f.close()
