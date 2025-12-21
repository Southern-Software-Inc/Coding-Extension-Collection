#!/bin/bash
# ACE-PRUNER: Aggressive Token Optimization

# Removes comments, whitespace, and implementation noise to save cost
sed -E '
    s/\/\/.*//g;               # Remove single line comments
    s/\/\*.*\*\///g;           # Remove block comments
    /console\.(log|debug)/d;   # Remove logging
    /^[[:space:]]*$/d;         # Remove empty lines
' "$1" | head -n 100           # Limit to top 100 lines of logic