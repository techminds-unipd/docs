import glob, subprocess, os, shutil

repo_dir = os.environ['GITHUB_WORKSPACE']

sources = glob.glob("{}/**/*.typ".format(repo_dir), recursive=True)
pdfs = glob.glob("{}/**/*.pdf".format(repo_dir), recursive=True)

# Blacklist
sources_to_compile = []
blacklist = ["template/", "/include/", "documenti_esterni/verbali"]
for source in sources:
    if not any([string in source for string in blacklist]):
        sources_to_compile.append(source)

# Make dirs in build
for source in sources_to_compile+pdfs:
    dir = os.path.dirname(source).replace("docs", "docs/build").replace("docs/build", "docs", 1)
    os.makedirs(dir, exist_ok = True)

# Moves signed pdfs in build
for pdf in pdfs:
    output_dir = os.path.abspath(pdf).replace("docs", "docs/build").replace("docs/build", "docs", 1)
    shutil.copyfile(pdf, output_dir)

# Compile typst files
for source in sources_to_compile:
    output_dir = os.path.dirname(source).replace("docs", "docs/build").replace("docs/build", "docs", 1)
    res = subprocess.run(["typst", "compile", "--root", repo_dir, source, "{}/{}".format(output_dir,os.path.basename(source).replace(".typ",".pdf"))])
    if res.returncode != 0:
        exit(1)
