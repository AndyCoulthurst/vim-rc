FROM debian
RUN apt-get update
RUN apt-get -y install git vim

RUN git clone https://github.com/andycoulthurst/vim-rc.git --recursive ~/.vim
RUN ln -s ~/.vim/dotfiles/.vimrc ~/.vimrc
RUN cat ~/.vim/dotfiles/.bashrc > ~/.bashrc
