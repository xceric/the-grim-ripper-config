#!/bin/bash
FILES=$(ls applications)
for file in $FILES
do
  echo "Linking $file file..."
  ln -sf ~/repos/the-grim-ripper-config/applications/$file ~/.local/share/applications/$file
done
