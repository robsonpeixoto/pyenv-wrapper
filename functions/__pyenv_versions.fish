function __pyenv_versions -a pyenv_version -d "list all pyenv versions"
    ls -l $PYENV_ROOT/versions | grep "^d" | awk -v version="^$pyenv_version" '$NF ~ version {print $NF}'
end
