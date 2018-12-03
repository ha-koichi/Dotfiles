for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -snfv ~/dotfiles/"$f" ~/
done
if [ ! -e "~/.vim/colors" ]; then
  mkdir ~/.vim/colors
  echo "It made color directory."
fi
ln -snfv hybrid.vim ~/.vim/colors/
