friendmeat's dotfiles

# Usage

1. Clone repo

```sh
git clone https://github.com/friendmeat/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

2. Link dotfiles
```sh
chmod +x link.sh
./link.sh
```

# Development

1. Add a new line to `link.sh` for every dotfile. For example:

```sh
ln -s "${SCRIPTPATH}/.my_dotfile" ~/.my_dotfile
```
