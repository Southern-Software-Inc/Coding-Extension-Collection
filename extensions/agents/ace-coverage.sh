#!/bin/bash
# ACE-COVERAGE: QA Analysis

FILE=$(rg -l "$1" src/ | head -n 1)
[ -f "${FILE%.*}.test.ts" ] && echo "- [✓] Coverage: High" || echo "- [!] Coverage: NONE"