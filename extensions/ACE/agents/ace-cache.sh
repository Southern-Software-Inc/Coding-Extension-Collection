#!/bin/bash
# ACE-CACHE: Semantic Caching

HASH=$(find src/ -type f | xargs md5sum | md5sum | awk '{print $1}')
[ "$HASH" == "$(cat .ace_nexus/last.hash 2>/dev/null)" ] && echo "CACHE HIT" || echo $HASH > .ace_nexus/last.hash