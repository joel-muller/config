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
./install.sh
```

> [!NOTE]
> Reload the terminal afterwards, all the dotfiles should be linked afterwards

## Setting Up macOS

1. Use the same `.gitconfig` settings as on Ubuntu.
2. Manually install required packages using Homebrew.
3. Skip configuring Zsh as the default shell — it's already the standard shell in Terminal.
4. SSH key creation follows the same steps as on Ubuntu.
5. Linking dotfiles works the same way as on Ubuntu.

> [!NOTE]
> A dotfile configuration for Aerospace (similar to i3 on Ubuntu) is already available.
