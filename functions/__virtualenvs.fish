function __virtualenvs -a venv -d "list all virtualenvs"
    ls -1 $PYENV_ROOT/versions/*/envs/ | grep "^$venv"
end
