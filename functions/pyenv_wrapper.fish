function pyenv_upgrade -d "Upgrade pyenv"
    set -l CWD (pwd)
    cd $PYENV_ROOT
    git pull --rebase
    cd $PYENV_ROOT/plugins/pyenv-virtualenv
    git pull --rebase
    cd $CWD
end

function mkvirtualenv -a version venv_name -d "Create a virtualenv"
    if test -z $venv_name or test -z $version
        echo "usage: mkvirtualenv <version> <virtualenv name>"
        exit 1
    end
    pyenv virtualenv $version $venv_name
end

function rmvirtualenv -a venv_name -d "Remove a virtualenv"
    if test -z $venv_name
        echo "usage: rmvirtualenv <virtualenv name>"
        exit 1
    end
    pyenv virtualenv-delete $venv_name
end

function lsvirtualenv -d "List all virtualenvs"
    ls -1 $PYENV_ROOT/versions/*/envs/
end

function workon -a venv_name -d "Activate a virtualenv"
    if test -z $venv_name
        echo "usage: workon <virtualenv name>"
        return 1
    end
    source (pyenv prefix $venv_name)/bin/activate.fish
    hash -r
end
