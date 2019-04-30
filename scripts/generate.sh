#!/bin/sh

DIR=$(dirname "$0")
output=$(cat $DIR/TEMPLATE.md)

markup=""
for file in $(ls $DIR/../assets/logos/*.svg); do
  name=$(basename $file)
  markup="${markup}| ![${name}](https://raw.githubusercontent.com/datatrans/payment-logos/master/assets/logos/${name}) | ${name} |\n"
done

output=${output/"<!-- LOGOS -->"/"$markup"}

markup=""
for file in $(ls $DIR/../assets/banners/*.svg); do
  name=$(basename $file)
  markup="${markup}| ![${name}](https://raw.githubusercontent.com/datatrans/payment-logos/master/assets/banners/${name}) | ${name} |\n"
done
output=${output/"<!-- BANNERS -->"/"$markup"}

echo "$output" > "$DIR/../README.md"
