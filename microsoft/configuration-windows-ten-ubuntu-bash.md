# Windows 10: Ubuntu Bash Configuration

## How to Install and Use the Linux Bash Shell on Windows 10 

- [http://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/](http://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/)
- [https://msdn.microsoft.com/commandline/wsl/about](https://msdn.microsoft.com/commandline/wsl/about)

## Navigate to Windows C drive
`cd /mnt/c/`

## Install latest version of Git
```
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git gitk
```

Check git version

`git --version`

### Git configuration

```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git config --global core.editor vim
git config --global core.filemode false
```

## Generate SSH keys
[https://help.github.com/articles/generating-an-ssh-key/](https://help.github.com/articles/generating-an-ssh-key/)

`ssh-keygen -t rsa`

Copy public ssh keys to link

`cat ~/.ssh/id_rsa.pub`

Copy ssh key to link below in github acount

[Add an SSH key here](https://github.com/settings/keys)

## Install gitflow AVH Edition

[http://danielkummer.github.io/git-flow-cheatsheet/](http://danielkummer.github.io/git-flow-cheatsheet/)

```
sudo add-apt-repository ppa:pdoes/gitflow-avh
sudo apt-get update
sudo apt-get install git-flow
```

Check git flow version, better if installed 1.9.1 (AVH Edition) or above

`git flow version`

## Install meld diff viewer to resolve merge conflicts

[http://meldmerge.org/](http://meldmerge.org/)

```
sudo apt-get install meld
git config --global merge.tool meld
```

To resolve the merge conflicts using meld

`git mergetool`

## Install Node.js v6
```
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
```

Check Node and npm version

`node --version && npm --version`

## Install npm packages
`sudo npm install -g gulp grunt-cli bower`

## Installing Fish Shell
```
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish
```

THEMING FISH

-   [http://www.hanselman.com/blog/InstallingFishShellOnUbuntuOnWindows10.aspx](http://www.hanselman.com/blog/InstallingFishShellOnUbuntuOnWindows10.aspx)
-   [Fish shell themes](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md)

```
# Configuration of Ubuntu Bash in Windows 10

curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
omf help
omf install chain
```

How to Make Bash Automatically Launch Fish

- [http://www.howtogeek.com/258518/how-to-use-zsh-or-another-shell-in-windows-10/](http://www.howtogeek.com/258518/how-to-use-zsh-or-another-shell-in-windows-10/)

`nano .bashrc`

Add the following lines to the file `.bashrc`
```
# Launch Fish
if [ -t 1 ]; then
exec fish
fi
```

Fish Shell Configuration

`fish_config`

The Windows 10 Linux subsystem is not allowed to interact with the desktop environment or Win32 processes.
fish_config thus will be a challenge. The security redirect requires you pull up another console and
find the web server address inside the `.cache/fish/web_config-XXXXXXX.html` file to find the URL, then 
manually copy and paste that into a browser. 
