# Dotfiles

This repo contains the dotfiles I use. 

I use [`Dotdrop`](https://dotdrop.readthedocs.io/en/latest/) to manage them.


## Installing

```bash
cd
git clone https://github.com/gianluparri03/dotfiles --recurse-submodules
cd dotfiles/
python3 -m venv env
source env/bin/activate
pip install -r dotdrop/requirements.txt
dotdrop/bootstrap.sh
./dotdrop.sh install -p main
```

## Updating

```bash
cd ~/dotfiles/
git pull
dotdrop update
```
