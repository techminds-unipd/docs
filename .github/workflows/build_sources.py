import glob, subprocess, os, shutil

repo_dir = os.environ['GITHUB_WORKSPACE']

tex_sources = glob.glob("{}/**/*.tex".format(repo_dir), recursive=True)
typst_sources = glob.glob("{}/**/*.typ".format(repo_dir), recursive=True)
pdfs = glob.glob("{}/**/*.pdf".format(repo_dir), recursive=True)

sources = tex_sources + typst_sources

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

tex_sources_to_compile = [el for el in sources_to_compile if ".tex" in el]
typst_sources_to_compile = [el for el in sources_to_compile if ".typ" in el]

# Make dirs in /build
for source in tex_sources_to_compile+typst_sources_to_compile+pdfs:
    dir = os.path.dirname(source).replace("docs", "docs/build").replace("docs/build", "docs", 1)
    os.makedirs(dir, exist_ok = True)

# Moves signed pdfs in build
pdfs = [source for source in pdfs if "build" not in source]
for pdf in pdfs:
    pdf_output_dir = os.path.abspath(pdf).replace("docs", "docs/build").replace("docs/build", "docs", 1).replace("firmati/", "")
    shutil.copyfile(pdf, pdf_output_dir)

# Compile tex files
for source in tex_sources_to_compile:
    output_dir = os.path.dirname(source).replace("docs", "docs/build").replace("docs/build", "docs", 1)
    res = subprocess.run(["pdflatex", "-output-directory", output_dir, "-halt-on-error", source], cwd=os.path.dirname(source))
    subprocess.run(["pdflatex", "-output-directory", output_dir, "-halt-on-error", source], cwd=os.path.dirname(source))
    if res.returncode != 0:
        exit(1)

# Compile typst files
print(typst_sources_to_compile)
for source in typst_sources_to_compile:
    output_dir = os.path.dirname(source).replace("docs", "docs/build").replace("docs/build", "docs", 1)
    res = subprocess.run(["typst", "compile", "--root", repo_dir, source, "{}/{}".format(output_dir,os.path.basename(source).replace(".typ",".pdf"))])
    if res.returncode != 0:
        exit(1)
