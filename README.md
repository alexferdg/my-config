# Dotfiles handled via Bare Git repository setup.


This repository hosts a bare Git repository set up to mange my dotfiles, ensuring a clean and efficient way to keep my configurations consistent across all my devices:

By storing `Git metadata in a hidden .my-config folder`, I can maintain an uncluttered home directory while managing my dotfiles directly in their native locations without relying on symlinks. 

# Branches for Each Device

Each branch in this repository corresponds to a specific device, allowing for customized configurations while maintaining a shared base setup. This structure enables me to easily switch between different device configurations by checking out the corresponding branch.

# Setup

To set up the dotfiles management system, follow these steps:

```shell
git init --bare $HOME/.my-config
alias myconfig='/usr/bin/git --git-dir=$HOME/.my-config/ --work-tree=$HOME'
myconfig config status.showUntrackedFiles no
```

## Installing Dotfiles on Another System

To install dotfiles configuration on another system, use the following commands:

```shell
git clone --bare git@github.com:alexferdg/my-config.git $HOME/.my-config
alias myconfig='/usr/bin/git --git-dir=$HOME/.my-config/ --work-tree=$HOME'
myconfig checkout
myconfig config status.showUntrackedFiles no
````

## Usage

With the alias set up, dotfiles can be managed using myconfig:

```shell
myconfig remote add origin git@github.com:alexferdg/my-config.git
myconfig remote -v
myconfig status
myconfig add .bashrc
myconfig commit -m "(add): .bashrc"
myconfig push
```


## References

Detailed explanations and guides on leveraging a bare Git repository for this purpose can be found here:

- [Ask HN: What do you use to manage dotfiles?](https://news.ycombinator.com/item?id=11071754)
- [Manage Dotfiles With a Bare Git Repository](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html)
- [Dotfiles: Best way to store in a bare git repository](https://www.atlassian.com/git/tutorials/dotfiles)