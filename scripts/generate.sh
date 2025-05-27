#!/bin/bash

DIR=$(dirname "$0")
output=$(cat $DIR/TEMPLATE.md)
NEWLINE=$'\n'

generate_table_markup() {
  local asset_dir=$1
  local section_marker=$2

  local markup=""

  # Process special cards first
  if [ "$asset_dir" == "cards" ]; then
    special_cards=("mastercard" "visa" "visa-alt" "american-express")

    for card in "${special_cards[@]}"; do
      file="$DIR/../assets/$asset_dir/$card.svg"
      if [ -f "$file" ]; then
        image_url="https://raw.githubusercontent.com/datatrans/payment-logos/master/assets/$asset_dir/$card.svg?sanitize=true"
        #image_url="assets/$asset_dir/$card.svg"
        asset_path="assets/$asset_dir/$card.svg"
        markup+="| ![$card]($image_url) | $asset_path |$NEWLINE"
      fi
    done
  fi

  # Process remaining logos
  find "$DIR/../assets/$asset_dir" -name "*.svg" -not -name "mastercard.svg" -not -name "visa.svg" -not -name "visa-alt.svg" -not -name "american-express.svg" -print0 | sort -z > "$DIR/temp_files.txt"
  while IFS= read -r -d '' file; do
    name="$(basename "${file%.svg}")"
    image_url="https://raw.githubusercontent.com/datatrans/payment-logos/master/assets/$asset_dir/$name.svg?sanitize=true"
    #image_url="assets/$asset_dir/$name.svg"
    asset_path="assets/$asset_dir/$name.svg"

    markup+="| ![$name]($image_url) | $asset_path |$NEWLINE"
  done < "$DIR/temp_files.txt"
  rm "$DIR/temp_files.txt"

  output=${output/"$section_marker"/"$markup"}
}

generate_table_markup "cards" "<!-- CARDS -->"
generate_table_markup "wallets" "<!-- WALLETS -->"
generate_table_markup "generic" "<!-- GENERIC -->"
generate_table_markup "apm" "<!-- APM -->"

echo "$output" > "$DIR/../README.md"
sed '$d' "$DIR/../README.md" > temp && mv temp "$DIR/../README.md"
