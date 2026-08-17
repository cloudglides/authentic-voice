#!/usr/bin/env bash
set -e

MAIN="skills/authentic-voice/SKILL.md"
OPencode=".opencode/skills/authentic-voice/SKILL.md"
Amp=".amp/skills/authentic-voice/SKILL.md"
Claude=".claude/skills/authentic-voice/SKILL.md"

cp "$MAIN" "$OPencode"
cp "$MAIN" "$Amp"
cp "$MAIN" "$Claude"

echo "Synced $MAIN to $OPencode, $Amp and $Claude"