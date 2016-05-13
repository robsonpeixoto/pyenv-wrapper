function lsvirtualenv -d "List all virtualenvs"
    ls -1 $PYENV_ROOT/versions/*/envs/
end
