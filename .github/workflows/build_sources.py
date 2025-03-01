import glob, subprocess, os, shutil

REPO_DIR = '../../../docs'
if 'GITHUB_WORKSPACE' in os.environ:
    REPO_DIR = os.environ['GITHUB_WORKSPACE']

build_dir = os.path.join(REPO_DIR, 'build')
if os.path.exists(build_dir):
    shutil.rmtree(build_dir)

sources = glob.glob("{}/**/*.typ".format(REPO_DIR), recursive=True)
pdfs = glob.glob("{}/**/*.pdf".format(REPO_DIR), recursive=True)

# Blacklist
sources_to_compile = []
blacklist = ["template/", "/include/", "documenti_esterni/verbali"]
for source in sources:
    if not any([string in source for string in blacklist]):
        sources_to_compile.append(source)

# Make dirs in build
for source in sources_to_compile+pdfs:
    dir = os.path.dirname(source).replace("docs", "docs/build")
    if 'GITHUB_WORKSPACE' in os.environ:
        dir = os.path.dirname(source).replace("docs", "docs/build").replace("docs/build", "docs", 1)

    os.makedirs(dir, exist_ok = True)

# Moves signed pdfs in build
for pdf in pdfs:
    output_dir = os.path.abspath(pdf).replace("docs", "docs/build")
    if 'GITHUB_WORKSPACE' in os.environ:
        output_dir = os.path.abspath(pdf).replace("docs", "docs/build").replace("docs/build", "docs", 1)

    shutil.copyfile(pdf, output_dir)

# Compile typst files
for source in sources_to_compile:
    output_dir = os.path.dirname(source).replace("docs", "docs/build")
    if 'GITHUB_WORKSPACE' in os.environ:
        output_dir = os.path.dirname(source).replace("docs", "docs/build").replace("docs/build", "docs", 1)
    res = subprocess.run(["typst", "compile", "--root", REPO_DIR, source, "{}/{}".format(output_dir,os.path.basename(source).replace(".typ",".pdf"))])
    if res.returncode != 0:
        exit(1)
