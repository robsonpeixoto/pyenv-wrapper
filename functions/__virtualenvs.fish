function __virtualenvs -a venv -d "list all virtualenvs"
    ls -1 -d $PYENV_ROOT/versions/*/envs/* | rev | cut -d '/' -f 1 | rev | grep "^$venv"
end
