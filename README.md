[![Build Status][travis-badge]][travis-link]
[![Slack Room][slack-badge]][slack-link]

# pyenv_wrapper

Use and configure pyenv as a virtualenvwrapper

## Install

With [fisherman]

```
fisher robsonpeixoto/pyenv_wrapper
```

Install pyenv and pyenv-virtualenv

```
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
```

## Usage

### List all virtualenvs

```fish
lsvirtualenv
```

### Create a virtualenv

```
mkvirtualenv 2.7.11 myvenv
```

### Remove a virtualenv

```
rmvirtualenv myvenv
```

### Activate a virtualenv

```
workon myvenv
```

### Upgrade pyenv and pyenv-virtualenv

```
pyenv_upgrade
```


[travis-link]: https://travis-ci.org/robsonpeixoto/pyenv_wrapper
[travis-badge]: https://img.shields.io/travis/robsonpeixoto/pyenv_wrapper.svg
[slack-link]: https://fisherman-wharf.herokuapp.com
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg
[fisherman]: https://github.com/fisherman/fisherman
