# My configuration

In this repository is how i configure my computer. Feel free to clone it and make it your own.

## Ubuntu Setup

1. Install Important Packages

Linux

```shell
curl https://raw.githubusercontent.com/joel-muller/config/main/packages/apt.sh | sh
```

Mac

```shell
curl https://raw.githubusercontent.com/joel-muller/config/main/packages/brew.sh | sh
```

2. Make zsh shell standard shell (only linux)

```shell
chsh -s $(which zsh)
```

> [!NOTE]
> Reload the terminal afterwards, zsh should now be your default terminal, with `echo $SHELL` you see is you run bash or zsh, if this doesn't work, try to restart the computer

3. Generate ssh-keypair and add the public key to github account

```shell
ssh-keygen -t ed25519
```

4. Clone the repository `config` in to the home directory

5. Go into the `config` directory and install the antigen

```shell
./antigen.sh
```

6. Link all the dotfiles with stow

```shell
stow dotfiles
```

## Setting Up macOS

1. Use the same `.gitconfig` settings as on Ubuntu.
2. Manually install required packages using Homebrew.
3. Skip configuring Zsh as the default shell — it's already the standard shell in Terminal.
4. SSH key creation follows the same steps as on Ubuntu.
5. Linking dotfiles works the same way as on Ubuntu.

> [!NOTE]
> A dotfile configuration for Aerospace (similar to i3 on Ubuntu) is already available.
