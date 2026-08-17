# Skill Benchmark: authentic-voice (iteration-2)

**Model**: opencode/deepseek-v4-flash-free
**Date**: 2026-08-17
**Evals**: tweet-personal, bio-personal-site, chatbot-persona, chat-casual-reply (1 run each per configuration)

## Summary

| Metric | With Skill | Without Skill | Delta |
|--------|------------|---------------|-------|
| Pass Rate | 100% ± 0% | 80% ± 10% | +20% |
| Time | n/a | n/a | n/a |
| Tokens | n/a | n/a | n/a |

## Per-eval breakdown

| Eval | With Skill | Without Skill |
|------|-----------|---------------|
| single-human-tweet | 5/5 | 5/5 |
| homepage-hero-about-bio | 5/5 | 4/5 |
| discord-friend-persona-reply | 5/5 | 5/5 |
| casual-group-chat-reply | 5/5 | 2/5 |

## Notes

- With skill: 100% on all 4 evals.
- Baseline failed casual-chat (fabricated habit "that usually helps me", unrequested advice "try getting some fresh air", reciprocal question "you okay tho?").
- Baseline bio flagged on ironic 'robust' — a grader false positive against an intentionally-quoted usage.
- Skill's edge is strongest where the prompt does NOT supply the full voice: casual replies and persona maintenance.
