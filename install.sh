#!/bin/bash

wget https://github.com/Nkipohcs/.ft__lock/blob/db1b47a0db82c8656a81d64edcae3ca0cf98d5e9/ft__lock -O ~/ft__lock

chmod +x ~/ft__lock

SHELL_RC="$HOME/.bashrc"
if [ -f "$HOME/.zshrc" ]; then
    SHELL_RC="$HOME/.zshrc"
fi


if ! grep -q "alias ft__lock='cd && ./ft__lock'" "$SHELL_RC"; then
    echo "alias ft__lock='cd && ./ft__lock'" >> "$SHELL_RC"
    echo "Alias ft__lock ajouté à $SHELL_RC"
else
    echo "L'alias ft__lock est déjà présent dans $SHELL_RC"
fi

rm install.sh

echo "Installation terminée."
