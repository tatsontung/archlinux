#!/usr/bin/env bash

echo "setting sysctls to 9001!!!"

# le choix, c'est aletoire
# c'est important que ce numero est plus que
# le nombre des fichiers dans la répertoire mikado-web/web
sudo sysctl fs.inotify.max_user_watches=524288