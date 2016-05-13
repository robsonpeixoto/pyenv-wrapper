function rmvirtualenv -a venv_name -d "Remove a virtualenv"
    if test -z $venv_name
        echo "usage: rmvirtualenv <virtualenv name>"
        exit 1
    end
    pyenv virtualenv-delete $venv_name
end
