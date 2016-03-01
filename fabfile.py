from fabric.api import task, local

@task
def build():
    local(" docker build --tag=\"vukor/joomlavs\" . ")

@task
def push():
    local(" docker push vukor/joomlavs ")
