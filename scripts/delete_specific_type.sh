#!/bin/bash

# Input JSON file
input_file="os_bom.json"

# Output JSON file
output_file="bom_filtered.json"

# Use jq to filter out components of type "data"
jq 'del(.components[] | select(.type == "data"))' "$input_file" > "$output_file"

echo "Filtered BOM saved to $output_file"
