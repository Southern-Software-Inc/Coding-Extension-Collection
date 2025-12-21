#!/bin/bash
# ACE-PULSE: System Vitals

grep -q "error" logs/build.log 2>/dev/null && echo "FAILED" || echo "GREEN"