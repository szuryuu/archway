#!/bin/bash

add=$(git add .)
commit=$(git commit -m "update")

"${add[@]}"
"${commit[@]}"
