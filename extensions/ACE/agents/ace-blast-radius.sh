#!/bin/bash
# ACE-BLAST-RADIUS: Dependency Impact Mapper

echo "### BLAST RADIUS ANALYSIS"
FILE=$(rg -l "$1" src/ | head -n 1)
if [ -f "$FILE" ]; then
    IMPACT=$(rg -l "$(basename ${FILE%.*})" src/ | wc -l)
    echo "Impact Score: $IMPACT modules"
    echo "Affected Downstream: "
    rg -l "$(basename ${FILE%.*})" src/ | head -n 5 | sed 's/^/- /'
fi