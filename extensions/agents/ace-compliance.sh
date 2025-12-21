#!/bin/bash
# ACE-COMPLIANCE: Policy Auditor

echo "### COMPLIANCE"
grep -iE "pii|gdpr|email|ssn" "$1" 2>/dev/null && echo "- [!] PII Detected: Masking required."