function workon -a venv_name -d "Activate a virtualenv"
    if test -z $venv_name
        echo "usage: workon <virtualenv name>"
        return 1
    end
    
    set -l prefix (pyenv prefix $venv_name)
    if test $status -ne 0
        return $status
    end
    
    source $prefix/bin/activate.fish
    hash -r
end
