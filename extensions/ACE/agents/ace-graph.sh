#!/bin/bash
# ACE-GRAPH: Call-Graph Trace

echo "#### Callers"
rg "\.${1}\(" -l | head -n 3