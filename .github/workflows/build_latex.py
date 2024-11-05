import glob
import subprocess
import os
import shutil

repo_dir = os.environ['GITHUB_WORKSPACE']

sources = glob.glob("{}/**/*.tex".format(repo_dir), recursive=True)

# Blacklist
sources_to_compile = []
blacklist = ["template", "documenti_esterni/verbali"]
for source in sources:
    add = True
    for string in blacklist:
        if string in source:
            add = False
    if add:
        sources_to_compile.append(source)

# Make dirs
build_dir = "{}/build/".format(repo_dir)
if os.path.exists(build_dir):
    shutil.rmtree(build_dir)
os.makedirs("{}candidatura/documenti_interni/verbali".format(build_dir))
os.makedirs("{}candidatura/documenti_esterni/verbali".format(build_dir))
os.makedirs("{}candidatura/documenti_esterni/presentazione_candidatura".format(build_dir))

# Moves signed pdfs in build
sources = glob.glob("{}/**/*.pdf".format(repo_dir), recursive=True)
pdfs = [source for source in sources if "build" not in source]
for pdf in pdfs:
    pdf_output_dir = os.path.abspath(pdf).replace("docs", "docs/build").replace("docs/build", "docs", 1).replace("firmati/", "")
    shutil.copyfile(pdf, pdf_output_dir)

# Compile tex files
for source in sources_to_compile:
    output_dir = os.path.dirname(source).replace("docs", "docs/build").replace("docs/build", "docs", 1)
    res = subprocess.run(["pdflatex", "-output-directory", output_dir, "-halt-on-error", source], cwd=os.path.dirname(source))
    if res.returncode != 0:
        exit(1)
