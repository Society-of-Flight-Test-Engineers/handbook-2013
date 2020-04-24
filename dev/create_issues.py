from subprocess import run
with open('subsections.txt','r') as f:
    for line in f:
        run('hub issue create -m "' + line + '"')