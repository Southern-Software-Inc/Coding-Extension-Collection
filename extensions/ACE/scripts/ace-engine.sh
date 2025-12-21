#!/bin/bash
# ACE-ENGINE (v15.0) — High-Fidelity Pipeline

MODE="$1"
PARAM="$2"

case $MODE in
    optimize)
        ./agents/ace-graph.sh trace "$PARAM" > ".ace_engine/flow.map" &
        ./agents/ace-impact.sh locate "$PARAM" > ".ace_engine/impact.md" &
        ./agents/ace-dependency.sh resolve "$PARAM" > ".ace_engine/deps.ts" &
        wait
        ;;
    inject)
        echo "### EXECUTION FLOW & IMPACT"
        cat ".ace_engine/flow.map" ".ace_engine/impact.md" ".ace_engine/deps.ts"
        ;;
esac