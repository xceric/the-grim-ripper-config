#!/bin/bash
FILES=$(ls applications)
for file in $FILES
do
  echo "Linking $file file..."
  ln -sf ~/repos/the-grim-ripper-config/applications/$file ~/.local/share/applications/$file
done

# link $HOME dot-files
FILES=( .abcde.conf abcde-ogg.conf abcde-flac.conf abcde-mp3.conf)

for file in "${FILES[@]}"
do
  echo "Linking $file file..."
  ln -sf ~/repos/the-grim-ripper-config/$file ~/$file
done
