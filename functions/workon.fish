function workon -a venv_name -d "Activate a virtualenv"
    if test -z $venv_name
        echo "usage: workon <virtualenv name>"
        return 1
    end
    source (pyenv prefix $venv_name)/bin/activate.fish
    hash -r
end
