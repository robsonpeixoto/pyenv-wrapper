function __pyenv_versions -a pyenv_version -d "list all pyenv versions"
    find $PYENV_ROOT/versions -type d -maxdepth 1 -path '*/versions/*' | xargs -n 1 basename
end
