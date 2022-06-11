#!/bin/sh
set -e
rm -rf ../neat/doc/build/
(cd ../neat && ./docgen.sh)
sphinx-build ../neat/doc/sphinx/ ../neat/doc/build
cp -R ../neat/doc/build/* .
git add .
git commit -m "Update docs to neat-lang/neat $(git -C ../neat describe)"
