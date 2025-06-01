import sys
import subprocess

# Define a mapping of aliases to GitHub repository names
REPO_MAP = {
"i": "hslu-intro-qc",
"d": "devices",
"p": "hslu-pcp",
"n": "notes"
}

WEBSITES = {
"q": "https://gpuhub.labservices.ch/",
"e": "https://github.com/tstangenberg/enlab-queue-fs25"
}

if len(sys.argv) < 2:
    print("Please provide an alias as an argument.")
    sys.exit(1)

alias = sys.argv[1]

if alias in REPO_MAP:
    repo_name = REPO_MAP[alias]
    url = f"https://github.com/joel-muller/{repo_name}"
elif alias in WEBSITES:
    url = WEBSITES[alias]
else:
    url = f"https://github.com/joel-muller/{alias}"

subprocess.run(["open", url])
