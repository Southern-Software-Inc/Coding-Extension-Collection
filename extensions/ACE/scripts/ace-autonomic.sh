#!/bin/bash
# ACE-AUTONOMIC (v18.0) — Self-Healing Orchestrator

MODE="$1"
PARAM="$2"
WORKSPACE=".ace_autonomic/sessions/$(date +%s)"
mkdir -p "$WORKSPACE"

case $MODE in
    optimize)
        ./agents/ace-pulse.sh status > "$WORKSPACE/pulse.log"
        ./agents/ace-coverage.sh analyze "$PARAM" > "$WORKSPACE/coverage.md"
        [ "$(cat $WORKSPACE/pulse.log)" == "FAILED" ] && ./agents/ace-healer.sh diagnose > "$WORKSPACE/healing.md"
        ./ace-synapse.sh optimize "$PARAM" > /dev/null
        ./agents/ace-checkpoint.sh diff "$PARAM" > "$WORKSPACE/checkpoint.md"
        ;;
    inject)
        echo "### SYSTEM VITALS"
        cat "$WORKSPACE/pulse.log" "$WORKSPACE/healing.md" "$WORKSPACE/coverage.md" 2>/dev/null
        ./ace-synapse.sh inject
        ;;
esac