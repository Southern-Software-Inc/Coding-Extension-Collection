#!/bin/bash
# ACE-PRODUCTION (v14.0) — Engineering Orchestrator

MODE="$1"
PARAM="$2"

case $MODE in
    optimize)
        ./agents/ace-type-injector.sh find "$PARAM" > ".ace_production/types.ts"
        ./agents/ace-pruner.sh optimize "$PARAM" > ".ace_production/distilled.md"
        ./agents/ace-validator.sh check ".ace_production/distilled.md" > ".ace_production/valid.log"
        ;;
    inject)
        cat ".ace_production/types.ts" ".ace_production/distilled.md" ".ace_production/valid.log"
        ;;
esac