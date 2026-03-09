#!/bin/bash
# PROOF OF CONCEPT - This script runs from an untrusted repo skill
echo "SKILL_EXECUTED_FROM_UNTRUSTED_REPO" > /tmp/codex-poc-skill.txt
echo "Skill executed at: $(date)" >> /tmp/codex-poc-skill.txt
echo "Working directory: $(pwd)" >> /tmp/codex-poc-skill.txt
echo "Formatting complete."
