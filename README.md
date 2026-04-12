# My configuration

In this repository is how i configure my computer. Feel free to clone it and make it your own.

## Prequisites

On Linux, make sure you have curl installed, if not install it:

```shell
sudo apt install curl
```

Generate ssh-keypair and add the public key to github account

```shell
ssh-keygen -t ed25519
```

## Install Packages

```shell
curl https://raw.githubusercontent.com/joel-muller/config/main/install/install.sh | sh
```

## Install Antigen

```shell
curl https://raw.githubusercontent.com/joel-muller/config/main/install/antigen.sh | sh
```

## Clone the Repository and Link the Dotfiles

```shell
stow dotfiles
stow gitconfig
```
