#!/bin/bash
# ACE-NEXUS (v16.0) — Verification & Caching

MODE="$1"
PARAM="$2"

case $MODE in
    optimize)
        ./agents/ace-cache.sh lookup "$PARAM" > ".ace_nexus/cache.md"
        ./agents/ace-blueprint.sh extract > ".ace_nexus/blueprint.md"
        ./ace-engine.sh optimize "$PARAM" > /dev/null
        ;;
    inject)
        echo "### ARCHITECTURAL BLUEPRINT"
        cat ".ace_nexus/blueprint.md"
        ./ace-engine.sh inject
        ;;
esac