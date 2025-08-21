# config

## Setting Up Ubuntu Machine

### Add gitconfig

```shell
curl https://raw.githubusercontent.com/joel-muller/config/refs/heads/main/gitconfig.txt > $HOME/.gitconfig
```

Change the variables to your need

### Install Important Packages

```shell
curl https://raw.githubusercontent.com/joel-muller/config/refs/heads/main/apt/install.sh | sh
```

### Make zsh shell standard shell

```shell
chsh -s $(which zsh)
```

> [!NOTE]
> Reload the terminal afterwards, zsh should now be your default terminal, with `echo $SHELL` you see is you run bash or zsh, if this doesn't work, try to restart the computer

### Create SSH Key

```shell
ssh-keygen -t ed25519 -C "your_email@example.com"
```

- Then add the public key to the github account
- clone this repository
- [Source Github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=linux)

### Link the dotfiles

```shell
./install_dotfiles.sh
```

> [!NOTE]
> Reload the terminal afterwards, all the dotfiles should be linked afterwards

## TODO

- [ ] Solve web opener better
- [ ] Write a application opener for `app brave`
- [ ] Remove useless homebrew formulas and add only the essential to it, maybe also let the file be given with like `install_formulas essentials.txt`
