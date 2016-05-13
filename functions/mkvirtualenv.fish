function mkvirtualenv -a py_version venv_name -d "Create a virtualenv"
    if test -z $py_version -o -z $venv_name
        echo "usage: mkvirtualenv <version> <virtualenv name>"
        exit 1
    end
    pyenv virtualenv $py_version $venv_name
end
