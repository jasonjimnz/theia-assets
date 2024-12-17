# Python

Theia iamge contains python, pip and virtualenv

## Create a virtual environment

```shell
python3 -m venv .venv
```

## Activate your virtual environment

```shell
source .venv/bin/activate
```

## Install some dependencies

```shell
pip install ipython
```

## Execute IPython

```shell
ipython
```

Now you're ready to work with your Theia cloud based IDE inside a docker container, theia user has sudo access and the password is theia in case you need it.

Feel free to do anything in the Alpine container.
