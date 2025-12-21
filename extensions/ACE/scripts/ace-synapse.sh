#!/bin/bash
# ACE-SYNAPSE (v17.0) — Semantic Orchestrator

MODE="$1"
PARAM="$2"

case $MODE in
    optimize)
        ./agents/ace-oracle.sh predict "$PARAM" > ".ace_synapse/predict.txt"
        ./agents/ace-mapper.sh trace "$PARAM" > ".ace_synapse/ripples.md"
        ./ace-nexus.sh optimize "$PARAM" > /dev/null
        ./agents/ace-tier.sh apply "$PARAM" > ".ace_synapse/tiered.md"
        ;;
    inject)
        cat ".ace_synapse/ripples.md" ".ace_synapse/tiered.md"
        ./ace-nexus.sh inject
        ;;
esac