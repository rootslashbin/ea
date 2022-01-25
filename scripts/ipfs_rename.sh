#!/bin/bash

cd ..

for number in {1..40}
do
URL="https://raw.githubusercontent.com/rootslashbin/ea/main/"
COMPOSED_URL="$URL$number.json"
jq --arg variable "$COMPOSED_URL" '.image = $variable' $number.json >> $number.json
echo "Replaced IMG for ape: $number"
done

exit 0
