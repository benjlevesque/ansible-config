#! /bin/bash

echo ""
echo "--------------------------------------------"
echo ""
echo "official_packages:"
pacman -Qq | xargs -L 1 echo -
echo ""
echo "--------------------------------------------"
echo ""
echo "aur_packages:"
pacaur -Qq | xargs -L 1 echo -
echo ""
echo "--------------------------------------------"
echo ""
echo "vscode_extensions:"
code --list-extensions | xargs -L 1 echo \t-
echo ""
echo "--------------------------------------------"
echo ""
echo "yarn:"
yarn global list | awk -v RS="[\"\"]" '/@/'
