#!/usr/bin/env bash
# ----------------------------- VARIÁVEIS ----------------------------- #
PPA_LIBRATBAG="ppa:libratbag-piper/piper-libratbag-git"
PPA_LUTRIS="ppa:lutris-team/lutris"
PPA_GRAPHICS_DRIVERS="ppa:graphics-drivers/ppa"
PPA_COPYQ="pa:hluk/copyq"

URL_WINE_KEY="https://dl.winehq.org/wine-builds/winehq.key"
URL_PPA_WINE="https://dl.winehq.org/wine-builds/ubuntu/"
URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
URL_VSCODE="https://az764295.vo.msecnd.net/stable/88f15d17dca836346e787762685a40bb5cce75a8/code_1.39.1-1570750687_amd64.deb"
URL_GIT_DOCS_COMPLEMENTAR="https://github.com/CapitaoFantastico/dev_linux_config/archive/master.zip"

DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"
DIRETORIO_DOWNLOADS_ROOT="$HOME/Downloads/"
DIRETORIO_IMAGENS="$HOME/Imagens"
# ---------------------------------------------------------------------- #

# ----------------------------- REQUISITOS ----------------------------- #
## Removendo travas eventuais no apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## Adicionando/Confirmando arquitetura de 32 bits ##
sudo dpkg --add-architecture i386

## Atualizando repositorio
sudo apt update -y

## Adicionando repositórios de terceiros e suporte a Snap (Driver Logitech, Lutris e Drivers Nvidia)##
sudo apt-add-repository "$PPA_LIBRATBAG" -y
sudo add-apt-repository "$PPA_LUTRIS" -y
sudo apt-add-repository "$PPA_GRAPHICS_DRIVERS" -y
sudo add-apt-repository "$PPA_COPYQ" -y
wget -nc "$URL_WINE_KEY"
sudo apt-key add winehq.key
sudo apt-add-repository "deb $URL_PPA_WINE bionic main"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# ---------------------------------------------------------------------- #

# ----------------------------- EXECUÇÃO ----------------------------- #
sudo apt install snapd -y

## Atualizando o repositório depois da adição de novos repositórios ##
sudo apt update -y

## Download e instalaçao de programas externos ##
mkdir "$DIRETORIO_DOWNLOADS"
wget -c "$URL_GOOGLE_CHROME"       -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_VSCODE"       -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_GIT_DOCS_COMPLEMENTAR"       -P "$DIRETORIO_DOWNLOADS_ROOT"

## Instalando pacotes .deb baixados na sessão anterior ##
sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb

## Programas do repositório APT##
sudo apt remove docker docker-engine docker.io containerd runc -y
sudo apt install git -y
sudo apt install unzip -y
sudo apt install curl -y
sudo apt install silversearcher-ag -y
sudo apt install fzf -y
sudo apt install mint-meta-codecs -y
sudo apt install virtualbox -y
sudo apt install flameshot -y
sudo apt install spotify-client
sudo apt install copyq -y
sudo apt install steam-installer steam-devices steam:i386 -y
sudo apt install ratbagd -y
sudo apt install piper -y
sudo apt install vim -y
sudo apt install httpie -y
sudo apt install gnome-tweaks
sudo apt-get install fonts-powerline -y
sudo apt install build-essential -y
sudo apt install cmake -y
sudo apt install python3-dev -y
sudo apt install lutris libvulkan1 libvulkan1:i386 -y
sudo apt install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 -y
sudo apt install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386 -y
sudo apt install apt-transport-https ca-certificates gnupg-agent software-properties-common -y
sudo apt install docker-ce docker-ce-cli containerd.io

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

##Instalando pacotes Flatpak ##
## flatpak install flathub com.obsproject.Studio -y

## Instalando pacotes Snap ##
sudo snap install spotify
# ---------------------------------------------------------------------- #


# ----------------------------- INSTALANDO PACOTES NPM ----------------------------- #
npm i -g tldr
npm i -g fkill-cli
npm i -g how-2
# ---------------------------------------------------------------------- #


# ----------------------------- CONFIGURACAO VIM ----------------------------- #
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# ---------------------------------------------------------------------- #

# ----------------------------- SALVAR PAPEIS DE PAREDE NA PASTA CORRETA ----------------------------- #
unzip master.zip -d "$DIRETORIO_IMAGENS"
# ---------------------------------------------------------------------- #


# ----------------------------- SALVAR PAPEIS DE PAREDE NA PASTA CORRETA ----------------------------- #

# ---------------------------------------------------------------------- #


# ----------------------------- PÓS-INSTALAÇÃO ----------------------------- #
## Finalização, atualização e limpeza##
sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y
# ---------------------------------------------------------------------- #
