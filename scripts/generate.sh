#!/bin/sh

DIR=$(dirname "$0")
output=$(cat $DIR/TEMPLATE.md)

markup=""
for file in $(find $DIR/../assets/logos/ -name "*.svg" | sed 's/\.svg$//' | sort); do
  name="$(basename $file).svg"
  markup="${markup}| ![${name}](https://raw.githubusercontent.com/datatrans/payment-logos/master/assets/logos/${name}?sanitize=true) | assets/logos/${name} |\n"
done

output=${output/"<!-- LOGOS -->"/"$markup"}

markup=""
for file in $(find $DIR/../assets/secure-logos/ -name "*.svg" | sed 's/\.svg$//' | sort); do
  name="$(basename $file).svg"
  markup="${markup}| ![${name}](https://raw.githubusercontent.com/datatrans/payment-logos/master/assets/secure-logos/${name}?sanitize=true) | assets/secure-logos/${name} |\n"
done

output=${output/"<!-- SECURE_LOGOS -->"/"$markup"}

markup=""
for file in $(find $DIR/../assets/banners/ -name "*.svg" | sed 's/\.svg$//' | sort); do
  name="$(basename $file).svg"
  markup="${markup}| ![${name}](https://raw.githubusercontent.com/datatrans/payment-logos/master/assets/banners/${name}?sanitize=true) | assets/banners/${name} |\n"
done
output=${output/"<!-- BANNERS -->"/"$markup"}

echo "$output" > "$DIR/../README.md"
