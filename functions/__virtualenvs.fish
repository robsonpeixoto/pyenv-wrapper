function __virtualenvs -a venv -d "list all virtualenvs"
    find $PYENV_ROOT/versions -path '*/envs/*' -maxdepth 3 | xargs -n 1 basename
end
