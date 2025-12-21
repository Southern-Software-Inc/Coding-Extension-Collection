#!/bin/bash
# ACE-DEPENDENCY: Auto-Resolver

grep "import" $(rg -l "$1" src/ | head -n 1) 2>/dev/null | head -n 5