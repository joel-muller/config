# My configuration

In this repository is how i configure my computer. Feel free to clone it and make it your own.

## Ubuntu Setup

1. Install Important Packages

```shell
curl https://raw.githubusercontent.com/joel-muller/config/refs/heads/main/apt/install.sh | sh
```

2. Generate ssh-keypair and add the public key to github account

```shell
ssh-keygen -t ed25519
```

3. Create `.gitconfig` file and add it into the home directory

```txt
# This is Git's per-user configuration file.
[user]
	name = Joel Müller
	email = mymailhere
[init]
	defaultBranch = main
[core]
	editor = vim
```

3. Clone the repository `config` in to the home directory
4. Go into the `config` directory and link all the dotfiles

```shell
./install.sh
```

> [!NOTE]
> Reload the terminal afterwards, all the dotfiles should be linked afterwards

5. Make zsh shell standard shell

```shell
chsh -s $(which zsh)
```

> [!NOTE]
> Reload the terminal afterwards, zsh should now be your default terminal, with `echo $SHELL` you see is you run bash or zsh, if this doesn't work, try to restart the computer

## Setting Up macOS

1. Use the same `.gitconfig` settings as on Ubuntu.
2. Manually install required packages using Homebrew.
3. Skip configuring Zsh as the default shell — it's already the standard shell in Terminal.
4. SSH key creation follows the same steps as on Ubuntu.
5. Linking dotfiles works the same way as on Ubuntu.

> [!NOTE]
> A dotfile configuration for Aerospace (similar to i3 on Ubuntu) is already available.
