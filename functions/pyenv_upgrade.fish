function pyenv_upgrade -d "Upgrade pyenv"
    set -l CWD (pwd)
    cd $PYENV_ROOT
    git pull --rebase
    cd $PYENV_ROOT/plugins/pyenv-virtualenv
    git pull --rebase
    cd $CWD
end
