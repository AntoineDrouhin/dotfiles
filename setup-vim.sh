

##########################################################
## Setupt vim dependencies
## Use native package 
##########################################################


# COLORS 

mkdir -p ~/.vim/colors

curl https://raw.githubusercontent.com/ayu-theme/ayu-vim/master/colors/ayu.vim > ~/.vim/colors/ayu.vim
curl https://raw.githubusercontent.com/Mcmartelle/vim-monokai-bold/master/colors/monokai-bold.vim > ~/.vim/colors/monokai-bold.vim

# FEATURES

## Code intelligence

git clone -b release https://github.com/neoclide/coc.nvim.git ~/.vim/pack/coc/start/coc


# LANGUAGES

## Typescript

git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/pack/typescript/start/typescript-vim

## Vim Plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


