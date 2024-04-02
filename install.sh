#!/bin/bash

wget https://raw.githubusercontent.com/Nkipohcs/.ft_lock/main/ft_lock -O ~/.ft_lock

chmod +x ~/.ft_lock

SHELL_RC="$HOME/.bashrc"
if [ -f "$HOME/.zshrc" ]; then
    SHELL_RC="$HOME/.zshrc"
fi


if ! grep -q "alias ft_lock='sh ~/.ft_lock'" "$SHELL_RC"; then
    echo "alias ft_lock='sh ~/.ft_lock'" >> "$SHELL_RC"
    echo "Alias ft_lock ajouté à $SHELL_RC"
else
    echo "L'alias ft_lock est déjà présent dans $SHELL_RC"
fi

rm install.sh

echo "Installation terminée."
