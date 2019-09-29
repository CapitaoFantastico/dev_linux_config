# Preparando meu Linux para desenvolvimento :D

Hi! I'm your first Markdown file in **StackEdit**. If you want to learn about StackEdit, you can read me. If you want to play with Markdown, you can edit me. Once you have finished with me, you can create new files by opening the **file explorer** on the left corner of the navigation bar.


## Fonte
- Instalar a fonte no Linux: [https://github.com/belluzj/fantasque-sans](https://github.com/belluzj/fantasque-sans)
- Alterar nas configs do terminal do Linux para usar a fonte acima;
- Para alterar a fonte no vim, só seguir os passos abaixo, pois esta alteração já consta no $HOME/.vimrc

## Instalar o gerenciador de Plugins - Vim-plugin

Instalar conforme indicado aqui: [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug)

## Configurando o vim

- Inserir todas as linhas do arquivo [.vimrc](https://github.com/NewHenriqueSouza/vim_config/blob/master/.vimrc ".vimrc") deste repo no arquivo $HOME/.vimrc
- Após isto, abrir o vim e digitar o seguinte comando: 

> PlugInstall


## Configurando o tmux

- Inserir todas as linhas do arquivo [.tmux.config](https://github.com/NewHenriqueSouza/vim_config/blob/master/.tmux.config ".tmux.config")  deste repo no arquivo $HOME/.vimrc
- Executar o reload das configs do tmux executando o comando a seguir: 

> tmux source-file ~/.tmux.conf

## Configuração do Bash

- Inserir as configs abaixo no final do arquivo~/.bashrc

1. Este comando serve para desativar o "lock" do bash que acontece no Ctrl + S

> stty -ixon

---
