function mkvirtualenv -a version venv_name -d "Create a virtualenv"
    if test -z $venv_name or test -z $version
        echo "usage: mkvirtualenv <version> <virtualenv name>"
        exit 1
    end
    pyenv virtualenv $version $venv_name
end
