for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -snfv ~/Dotfiles/"$f" ~/
done
if [ ! -e "~/.vim/colors" ]; then
  mkdir ~/.vim/colors
  echo "It made color directory."
fi
cp -ivf hybrid.vim ~/.vim/colors/

