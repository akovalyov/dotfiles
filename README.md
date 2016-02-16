Installation 
============

Clone the repository:

    git clone git://github.com/akovalyov/dotfiles.git ~/.dotfiles

Create symbolic links:

    for f in $(ls -1 ~/.dotfiles); do ln -s ~./dotfiles/$f ~/.$f; done

Update
------

   for f in $(ls -1 ~/.dotfiles); do ln -sf ~/.dotfiles/$f ~/.$f; done

N.B. This wil lremove all existing links.
Done!


