setenv PYENV_ROOT "$HOME/.pyenv"

if not type -q pyenv;
    echo "Please, install pyenv: brew install pyenv"
end

if not echo (pyenv commands) | grep virtualenv  > /dev/null 2> /dev/null
    echo "Please, install pyenv-virtualenv: brew install pyenv-virtualenv"
end
