#!/usr/bin/env sh

# abandonner en cas d'erreur
set -e

# construire
npm run build

# Naviguez dans le répertoire de sortie de la compilation
cd dist

# Placez .nojekyll pour contourner le traitement Jekyll
echo > .nojekyll

# si vous déployez vers un domaine personnalisé
# echo 'www.example.com' > CNAME

git init
git checkout -B main
git add -A
git commit -m 'deploy'

# si vous déployez sur https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# si vous déployez sur https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/Onyx3O6/tim_berners_lee main:gh-pages

cd -
