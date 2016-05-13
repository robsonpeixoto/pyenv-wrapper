if test -z "$PYENV_ROOT"
  set -U PYENV_ROOT "$HOME/.pyenv"
end

set -gx PATH $PYENV_ROOT/bin $PATH
set -gx PYTHON_CONFIGURE_OPTS "--enable-unicode=ucs2"
