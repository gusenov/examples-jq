#!/usr/bin/env bash

cp input.json output.json

for file in output.json; do jq --compact-output '. | (if has("last_name") then . else empty end) | .last_name = "Roe"' $file | ifne sponge $file; done

cat output.json
