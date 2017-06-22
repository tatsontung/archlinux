# Things to do after installing Antergos Arch Linux

## Table of Content
<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Update](#update)
- [ZSH how default terminal and Install Oh My ZSH](#zsh-how-default-terminal-and-install-oh-my-zsh)
  - [Or by yaourt:](#or-by-yaourt)
- [Install intel video driver](#install-intel-video-driver)
- [Install nvidia driver (don't execute if install Bumblebee)](#install-nvidia-driver-dont-execute-if-install-bumblebee)
- [Bumblebee for nVidia Optimus](#bumblebee-for-nvidia-optimus)
  - [Install:](#install)
  - [Edit config:](#edit-config)
  - [Test:](#test)
  - [If problem:](#if-problem)
  - [For error known session:](#for-error-known-session)
- [Install Steam](#install-steam)
  - [Solution for setlocale(‘en_US.UTF-8’) failed. Using 'C'](#solution-for-setlocale-failed-using-c)
- [Install nampac (package analyzer) (OPTIONAL)](#install-nampac-package-analyzer-optional)
- [Open Broadcaster](#open-broadcaster)
- [Spotify](#spotify)
- [Automount NTFS Windows partition](#automount-ntfs-windows-partition)
- [Create symbolic links replacing the of home](#create-symbolic-links-replacing-the-of-home)
- [Atom GitHub editor code](#atom-github-editor-code)
- [Install Adobe Flash Player (only if this is necessary)](#install-adobe-flash-player-only-if-this-is-necessary)
- [CMUS terminal music player](#cmus-terminal-music-player)
  - [Keys](#keys)
- [Java JDK (OpenJDK)](#java-jdk-openjdk)
  - [Configure environment variables (variable de entorno)](#configure-environment-variables-variable-de-entorno)
    - [All in one line:](#all-in-one-line)
    - [Or manually:](#or-manually)
  - [IcedTea (Java Web browser Plugin to run applets and Java WebStart)](#icedtea-java-web-browser-plugin-to-run-applets-and-java-webstart)
- [System-Monitor applet for GNOME 3](#system-monitor-applet-for-gnome-3)
- [Dropbox (including plugin for Nautilus)](#dropbox-including-plugin-for-nautilus)
- [Code::Blocks IDE C, C++ and Fortran](#codeblocks-ide-c-c-and-fortran)
- [Telegran Desktop](#telegran-desktop)
- [Gufw (Firewall GUI Front-End)](#gufw-firewall-gui-front-end)
- [GIMP Image Manipulation](#gimp-image-manipulation)
- [Pinta Simple Image Editor similar Paint.NET](#pinta-simple-image-editor-similar-paintnet)
- [TeamViewer](#teamviewer)
- [GNOME To Do (Simple task manager)](#gnome-to-do-simple-task-manager)
- [Solve problem with LibreOffice and GTK3 integration](#solve-problem-with-libreoffice-and-gtk3-integration)
- [The R Project for Statistical Computing with GUI RStudio](#the-r-project-for-statistical-computing-with-gui-rstudio)
- [Wine](#wine)
- [PlayOnLinux](#playonlinux)
- [f.lux (Changes monitor color temperature adaptively to ease eye strain)](#flux-changes-monitor-color-temperature-adaptively-to-ease-eye-strain)
- [Install Vim Text Editor](#install-vim-text-editor)
- [Ohcount (Source Code line counter)](#ohcount-source-code-line-counter)
- [Brackets (An open source code editor for the web)](#brackets-an-open-source-code-editor-for-the-web)
- [Jekyll](#jekyll)
- [Markdown Table of Content Generator](#markdown-table-of-content-generator)
- [Install Screen (Full-screen window manager that multiplexes a physical terminal)](#install-screen-full-screen-window-manager-that-multiplexes-a-physical-terminal)
- [LaTeX and TexStudio Graphic Editor](#latex-and-texstudio-graphic-editor)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Update
```sh
sudo pacman -Syyu
```

## ZSH how default terminal and Install Oh My ZSH
```sh
sudo pacman -S zsh
chsh -l
chsh -s /bin/zsh

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

### Or by yaourt:
```sh
yaourt -S oh-my-zsh-git
cp /usr/share/oh-my-zsh/zshrc ~/.zshrc
```

(logout)

## Install intel video driver
```sh
sudo pacman -S xf86-video-intel
```

## Install nvidia driver (don't execute if install Bumblebee)
```sh
sudo pacman -R lib32-mesa-libgl
sudo pacman -S nvidia lib32-nvidia-libgl
```

## Bumblebee for nVidia Optimus
### Install:
```sh
# sudo pacman -R lib32-nvidia-libgl # Sera removido
sudo pacman -R xf86-video-nouveau
sudo pacman -R nouveau-dri
sudo pacman -S bumblebee mesa intel-dri xf86-video-intel lib32-intel-dri nvidia nvidia-utils lib32-nvidia-utils bbswitch nvidia-utils primus lib32-primus lib32-virtualgl lib32-mesa-libgl
sudo gpasswd -a $USER bumblebee
sudo systemctl enable bumblebeed.service
```

Reboot: `sudo shutdown -r now`

### Edit config:
`sudo nano /etc/bumblebee/bumblebee.conf`

Write: `Bridge=primus, Driver=nvidia` in the corresponding lines.

### Test:
`optirun pwd`
`optirun glxspheres`
`optirun glxgears`

### If problem:
```sh
sudo pacman -R nvidia
sudo pacman -S nvidia-lts
```
, use this driver nvidia if in use kernel linux-lts

### For error known session:
Edit file: `/etc/mkinitcpio.conf` and edit `MODULES="i915 bbswitch"`.
Execute: `sudo mkinitcpio -p linux`
After edit file `/etc/default/grub` and add `rcutree.rcu_idle_gp_delay=1` to the kernel parameter GRUB_CMDLINE_LINUX_DEFAULT


## Install Steam
```sh
sudo pacman -S steam
```

### Solution for setlocale failed using c
```sh
sudo nano /etc/locale.gen
```
Decomments this line `en_US.UTF-8 UTF-8`.

Actualise scripts:
```sh
sudo locale-gen
```

## Install nampac (package analyzer) (OPTIONAL)
```sh
pacman -Ss --color auto namcap
```

## Open Broadcaster
```sh
yaourt -S obs-studio
```

## Spotify
```sh
yaourt -S spotify
```

## Automount NTFS Windows partition
```sh
sudo sh -c "sudo echo \"/dev/sdb1 /run/media/Datos ntfs-3g root,uid=1000,gid=users 0 0\" >> /etc/fstab"
```

(After create folder destination: `sudo mkdir /run/media/Datos`)

## Create symbolic links replacing the of home
```sh
folder="Desktop" && rm -Rf ~/$folder && ln -s /run/media/Datos/Users/Jorge/$folder ~/$folder
```

(Repeat for each folder is required)

## Atom GitHub editor code
```sh
sudo pacman -S nodejs npm && yaourt -S atom-editor-bin
```

## Install Adobe Flash Player (only if this is necessary)
```sh
sudo pacman -S flashplugin
```

## CMUS terminal music player
```sh
sudo pacman -S cmus
```

### Keys
```
a: add to library
y: add to playlist
e: add to queue
c: play/pause
z: back
b: next
v: stop
x: stop and play
```

## Java JDK (OpenJDK)
```sh
sudo pacman -S jdk8-openjdk
```
(This auto-install jre8-openjdk)

### Configure environment variables (variable de entorno)
#### All in one line:
```sh
export JAVA_HOME=$(which java | xargs readlink -f | xargs dirname | xargs dirname) && export PATH=$PATH:$JAVA_HOME/bin
```
(This command resolve symbolic links recursively)

#### Or manually:

Search the java location: `whereis java`
Identify path until find absolute path of the symbolic link found in bin/:
```sh
ls -lah /usr/bin/java
ls -lah /usr/lib/jvm/default-runtime/bin/java
```

or an a simple command to find this:
```sh
which java | xargs readlink -f
```
(This command resolve symbolic links recursively)

(So the absolute path is "`/usr/lib/jvm/default-runtime`")

Edit and add in "/etc/profile" the environment variables according to results:
```
# JAVA
export JAVA_HOME=/usr/lib/jvm/default-runtime
export PATH=$PATH:$JAVA_HOME/bin
```

Re-login and execute: `source /etc/profile`

### IcedTea (Java Web browser Plugin to run applets and Java WebStart)
```sh
sudo pacman -S icedtea-web
```

## System-Monitor applet for GNOME 3
```shdo pacman-key --init
sudo pacman-key --populate archlinux
sudo  pacman-key --refresh-keys
yaourt -S gnome-shell-system-monitor-applet-git
```

(Alt+F2 -> r and active with GNOME Tweak)

## Dropbox (including plugin for Nautilus)
```sh
yaourt -S dropbox nautilus-dropbox
```

## Code::Blocks IDE C, C++ and Fortran
```sh
sudo pacman -S codeblocks
```

## Telegran Desktop
```sh
yaourt -S telegram-desktop-bin
```

## Gufw (Firewall GUI Front-End)
Antergos include this app by default, for install:
```sh
sudo pacman -R gufw
```

## GIMP Image Manipulation
```sh
sudo pacman -S gimp
```

## Pinta Simple Image Editor similar Paint.NET
```sh
sudo pacman -S pinta
```

## TeamViewer
```sh
yaourt -S teamviewer
```

After execute "`sudo systemctl start teamviewerd`" for start daemon. Or `sudo systemctl enable teamviewerd` for auto start on start forever.

## GNOME To Do (Simple task manager)
```sh
yaourt -S gnome-todo
```
(For now in pre-release, manual installation)

## Solve problem with LibreOffice and GTK3 integration
Force to use GTK2:

Edit `sudo nano /etc/profile.d/libreoffice-fresh.sh` and uncomment `export SAL_USE_VCLPLUGIN=gtk`.
Save!

Execute: `export SAL_USE_VCLPLUGIN=gtk`

And restart system

## The R Project for Statistical Computing with GUI RStudio
```sh
sudo pacman -S r rstudio-desktop-bin
```

## Wine
```sh
sudo pacman -S wine wine_gecko wine-mono
```

## PlayOnLinux
No related to Wine. Use an different installation.
```sh
sudo pacman -S playonlinux
```

## f.lux (Changes monitor color temperature adaptively to ease eye strain)
```sh
yaourt -S xflux
```

To get location: <http://stereopsis.com/flux/map.html>

Example to use: `xflux -l 00.0000 -g 00.0000`

## Install Vim Text Editor
```sh
sudo pacman -S vim
echo "syntax on" >> ~/.vimrc
```
(Change EDITOR variable in `.zshrc` or `.bash_profile` file)

## Ohcount (Source Code line counter)
```sh
yaourt -S ohcount-git
```

## Brackets (An open source code editor for the web)
```sh
yaourt -S brackets-bin
```

## Jekyll
Require if not installed:
```sh
sudo pacman -S ruby
sudo pacman -S nodejs
```

```sh
gem install jekyll
alias jekyll='~/.gem/ruby/2.2.0/bin/jekyll'
```
(or according to version)

For ZSH save alias:
```sh
echo 'alias jekyll="~/.gem/ruby/2.2.0/bin/jekyll"' >> .zshrc
```

## Markdown Table of Content Generator
```sh
sudo npm install -g doctoc
```

## Install Screen (Full-screen window manager that multiplexes a physical terminal)
```sh
sudo pacman -S screen
```

## LaTeX and TexStudio Graphic Editor
```sh
sudo pacman -S texlive-most texlive-lang
sudo pacman -S texstudio
```

## For update failed with keys gpn check failed
```sh
sudo pacman -Scc
sudo pacman-key --init
sudo pacman -Sy antergos-keyring
sudo pacman-key --populate archlinux
sudo pacman-key --refresh-keys
```
