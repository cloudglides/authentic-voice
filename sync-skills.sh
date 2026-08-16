#!/usr/bin/env bash
set -e

MAIN="skills/authentic-voice/SKILL.md"
OPencode=".opencode/skills/authentic-voice/SKILL.md"
Amp=".amp/skills/authentic-voice/SKILL.md"

cp "$MAIN" "$OPencode"
cp "$MAIN" "$Amp"

echo "Synced $MAIN to $OPencode and $Amp"