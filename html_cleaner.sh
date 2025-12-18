#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

INPUT_FILE="$1"
OUTPUT_FILE="cleaned_${INPUT_FILE}"

cp "$INPUT_FILE" "$OUTPUT_FILE"

sed -i '' 's/<script.*<\/script>//g' "$OUTPUT_FILE"
sed -i '' 's/ style="[^"]*"//g' "$OUTPUT_FILE"
sed -i '' '/^[[:space:]]*$/d' "$OUTPUT_FILE"
sed -i '' '1i\
<!-- Cleaned by html_cleaner.sh -->
' "$OUTPUT_FILE"
sed -i '' '$a\
<footer><p>&copy; 2024 Web Cleaner</p></footer>' "$OUTPUT_FILE"

echo "Preview of cleaned HTML:"
cat "$OUTPUT_FILE"

echo "Done. Output saved to $OUTPUT_FILE"
