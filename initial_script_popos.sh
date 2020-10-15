#!/usr/bin/env bash
# ----------------------------- VARIÁVEIS ----------------------------- #
URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
URL_GIT_DOCS_COMPLEMENTAR="https://github.com/CapitaoFantastico/dev_linux_config/archive/master.zip"
URL_OMNIDB="https://omnidb.org/dist/2.17.0/omnidb-app_2.17.0-debian-amd64.deb"
URL_VSCODE="https://go.microsoft.com/fwlink/?LinkID=760868"

DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"
DIRETORIO_DOWNLOADS_ROOT="$HOME/Downloads/"
DIRETORIO_IMAGENS="$HOME/Imagens"
# ---------------------------------------------------------------------- #

# ----------------------------- REQUISITOS ----------------------------- #
## Removendo travas eventuais no apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## Atualizando repositorio
sudo apt update -y

# ---------------------------------------------------------------------- #


## Download e instalaçao de programas externos ##
mkdir "$DIRETORIO_DOWNLOADS"
wget -c "$URL_GOOGLE_CHROME"       -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_OMNIDB"       -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_VSCODE"       -P "$DIRETORIO_DOWNLOADS"

## Instalando pacotes .deb baixados na sessão anterior ##
sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb

## Programas do repositório APT ##
sudo apt install apt-transport-https ca-certificates gnupg-agent software-properties-common -y
sudo apt remove docker docker-engine docker.io containerd runc -y
sudo apt install git -y
sudo apt install unzip -y
sudo apt install curl -y
sudo apt install silversearcher-ag -y
sudo apt install fzf -y
sudo apt install zsh -y
sudo apt install vim -y
sudo apt install gnome-tweaks -y
sudo apt install caffeine -y
sudo apt install stacer -y
sudo apt-get install fonts-powerline -y
sudo apt install neofetch -y
sudo apt install build-essential -y
sudo apt install cmake -y
sudo apt install python3-dev -y
sudo apt install python3-pip -y
sudo pip3 install thefuck

##Instalando pacotes Flatpak ##

flatpak install flathub com.spotify.Client
flatpak install flathub com.github.hluk.copyq
flatpak install flathub org.flameshot.Flameshot
flatpak install flathub com.slack.Slack
# flatpak install flathub org.libreoffice.LibreOffice

## Instalando pacotes Snap ##

# ---------------------------------------------------------------------- #

# ----------------------------- PÓS-INSTALAÇÃO ----------------------------- #
## Finalização, atualização e limpeza##
sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y
# ---------------------------------------------------------------------- #



## Executar comando abaixo manualmente ##

# Instalação ZSH
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# powerlevel10k
# Seguir recomendações de fontes e instalação aqui
# https://github.com/romkatv/powerlevel10k

# VSCODE - Se não instalar automático, baixar pela loja do PopOs

# Instalar o docker, docker-compose, docker-machine manualmente

# ---------------------------------------------------------------------- #