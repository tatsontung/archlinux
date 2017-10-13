#!/usr/bin/env bash
echo
echo "-----------------------------------------"
echo "Done!"
echo "-----------------------------------------"

echo
echo "Copy zsh configuration"

cp files/zshrc ~/.zshrc

echo
echo "If hostname needs to be set consider"
echo "sudo scutil --set ComputerName newname"
echo "sudo scutil --set LocalHostName newname"
echo "sudo scutil --set HostName newname"

echo
echo "You can use 'git pair' (enabled) 'git duet' (enabled) or 'git with' aka git-together (installed but not enabled)"
echo "To enable git together"
echo "'git=git-together' >> ~/.bash_profile"

echo
echo "After checking the above output for any problems, start a new terminal session to make use of all the installed tools."
echo "Rebooting is only necessary for keyboard repeat settings to work."

chsh -s `which zsh`
echo
