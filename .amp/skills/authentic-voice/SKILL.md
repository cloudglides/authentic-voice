---
name: authentic-voice
description: Use when the user wants writing to read as a real person wrote it, not an LLM — personal copy (bios, homepages, about pages, portfolios, READMEs, blurbs, taglines), casual chat replies, chatbot personas, tweets/social posts, or any request to "make this sound human," "make it less AI," "not sound generic," "not sound like AI/a bot," "sound like a real person," or "self-deprecating." Forces specific mundane facts over platitudes, breaks uniform AI rhythm and structure, and keeps the actual speaker's voice — never inventing facts. Not for corporate/brand copy unless asked.
---

# Authentic Voice

## North star

Write the **next thing this specific speaker would naturally send here**.

Do not ask "what would a human say?" Ask:

> **What conversational move would this speaker make next, given what is actually known?**

CHAT:
**speaker separation → dialogue act → grounding → minimum content → delete → voice → stop**

PROSE:
**purpose → facts → audience → voice → draft → fidelity audit → style audit → stop**

## Why AI text is detectable (the mechanism, not vibes)

AI text is detectable for two measurable reasons. **Low burstiness**: every sentence lands at roughly the same length, so the rhythm is a metronome. **Low perplexity**: the model always reaches for the statistically most-likely next word or phrase, so the word choice is predictable. Word-swapping alone fixes neither — it changes vocabulary while leaving rhythm and predictability untouched. The durable, model-agnostic AI voice is a **hedged, enumerative, helpful-explainer register**: exhaustive lists, signposting transitions ("it's worth noting," "in conclusion"), balanced qualifiers, and a generic-positive closer. That register is more stable over time than any list of banned words.

So the three things that actually move detectability are: **rhythm variance, word-choice surprise, and specific unpolished detail**. Everything in this skill serves one of those three.

Naturalness is not randomness, typos, slang, lowercase, warmth, vividness, or detector evasion. It is being a specific person with a specific history.

**Infer style. Never invent facts, experiences, internal states, intentions, or personality.**

**Output the reply only.** Never narrate compliance, and never reference this skill or the fact that a style is being applied. Do not prefix the output with "Using authentic voice" or any process commentary, do not explain the rules being applied, and do not break character to mention "sounding more human" or "making this less AI." The effect must be visible; the process must not. If the conversation is genuinely about AI or writing style, discuss it normally — but never comment on your _own_ generation process.

Do not claim undetectability. The goal is text that reads as a specific human, not text that beats a detector — and never fabricate credentials to look human.

# 1. Mode selection

### CHAT
Live reply (Discord, DM, chat, chatbot persona). Optimize for:
1. conversational fit
2. grounding
3. response size
4. demonstrated voice
5. surface style

Do not optimize for completeness or helpfulness unless the turn requires it.

### REWRITE
Improve supplied text without changing facts, meaning, certainty, attribution, or stance.

### PROSE
Bios, READMEs, profiles, homepages, essays, docs, social copy (incl. tweets, see §7). Optimize for: purpose → facts → audience → voice, then restraint.

Do not transfer prose-specific detail rules into casual chat; do not transfer chat's one-move economy into prose.

# 2. Hard rules

## 2.1 Speaker separation is invariant

For reply generation:
- `OTHER` = the message being replied to.
- `SELF` = the generated response.

Never continue `OTHER`'s thought in `SELF`. Reject a candidate if it could be pasted immediately after the source and read as the same person's continued message. The output must be a **new conversational turn**.

## 2.2 Zero-new-facts default in casual chat

In CHAT, assume no new factual content is needed unless the turn requires it. Do not introduce experiences, feelings, memories, plans, possessions, locations, causes, anecdotes, numbers, history, or opinions merely to make the reply vivid or relatable. A reply can be purely reactive.

## 2.3 First-person claims require grounding

Treat even tiny claims as claims: `same` · `me too` · `I know` · `I've been there` · `I did that` · `I'm tired too` · `I've had that issue` · `I'm going to...`

Use them only when supported by conversation or explicit persona facts. Do not use shared-experience language as a generic warmth shortcut.

## 2.4 Never invent source intent

Do not claim to know why `OTHER` used an emoji, lowercase, a typo, punctuation, a phrase, or expressed a feeling. Message appearance is evidence of wording, not proof of private intent.

## 2.5 Preserve certainty

Do not turn `maybe` into `probably`, `probably` into certainty, or `I think` into `I know`. Do not add fake uncertainty either — `maybe the weather` is not safe if the cause itself is invented.

## 2.6 Preserve protected material

Do not alter code, URLs, usernames, filenames, commands, citations, quotes, measurements, package/API names, or exact technical terms unless asked.

## 2.7 No detector optimization

The goal is contextual naturalness, not passing an AI detector. If following a rule would distort real meaning or real content, the content wins.

# 3. CHAT: dialogue act before wording

First identify the social action the turn calls for:

- acknowledgment/backchannel
- reaction
- agreement/disagreement
- answer
- clarification
- request
- information
- joke/tease
- support
- correction/repair
- topic shift
- closure

A statement may need only acknowledgment or reaction. It does not automatically request advice, empathy, troubleshooting, or a story.

# 4. CHAT: minimum sufficient turn

Ask:

> **What is the smallest response that performs this conversational action naturally?**

Start with one word, fragment, reaction, or short sentence. Only expand when the conversation requires it. Do not make a reply longer because it feels "too short," because the model wants to be useful, because a personal story would create rapport, or because a joke would make it more interesting.

### Information budget

For casual chat, default to **zero new facts**. Every additional clause must earn its place by performing a necessary conversational function.

Delete unnecessary: anecdotes, explanations, causes, plans, advice, metaphors, second jokes, follow-up questions, reassurance, generic closings.

# 5. CHAT: grounding tiers

### Tier A — grounded
Directly supported by the conversation.

### Tier B — non-committal
Reacts without claiming an unsupported speaker state. Examples: `damn` · `rough` · `oh no` · `real`. Still match the target speaker.

### Tier C — inferred
Plausible but not established. Do not state as fact.

### Tier D — fabricated
New personal fact, experience, plan, cause, or intention. Reject.

**`same`, `me too`, `I know`, and `I've been there` are not empty filler. They are claims and need evidence.**

# 6. CHAT: generate → delete → align

Do not trust the first candidate.

1. Generate a minimal plausible response.
2. Mark every first-person, causal, intentional, or descriptive clause as grounded or unsupported.
3. Delete unsupported or unnecessary clauses.
4. Run the continuation test (§6.1).
5. Align to demonstrated voice.
6. Stop.

## 6.1 Continuation test

Before sending:

> **Could this output be read as the original speaker continuing their own message?**

If yes, reject. Also ask:

> **Does this actually respond to something the other person said, rather than merely elaborating it?**

If it only elaborates the source, regenerate.

# 7. Platform and format conventions

Real people's writing is shaped by the medium. Match the platform's micro-conventions — they are some of the strongest discriminators between human and generated text.

### Twitter / X (tweets)
- Keep it short and punchy; the platform rewards a quotable one-liner or a reply-baiting point.
- A thread is a self-reply chain, each entry a fresh distribution event — do **not** default to "1/5, 2/5" threads. One tweet unless a breakdown is explicitly asked for.
- Expressive, irregular caps are normal: a whole tweet lowercase, an ALL-CAPS word for emphasis, sentence case. Mix them.
- Hashtags: 1–2, short, at the end or inline for a searchable phrase. Do not sprinkle 5+.
- Emoji: sparing; count matters. One emoji as punctuation, not as decoration every sentence.
- Every prose rule still applies at short length: specific fact, undersell, no AI tells.

### Reddit
- Tonal register leans informal; all-lowercase writing is common and accepted ("i dont like being formal on the internet").
- Comments are the product: a short, specific value-add beats a polished essay. No promotional tone.
- Heavy in-group slang per subreddit (DAE, TIL, IANAL). Use without glossing.
- "EDIT:" or "ETA:" markers when amending a comment are native texture.

### LinkedIn
- Sentence-case post body; title-case only for article titles/hooks.
- Story arc: hook → challenge → insight → lesson → light CTA/question. Links go in the comments, not the post.
- 3–5 hashtags, CamelCase, bunched at the end — not sprinkled through.
- 1–2 emoji as visual anchors, not 12.

### Discord / casual chat
- Thoughts are chunked into several short "balloons" rather than a single wall of text; sequential short messages signal pauses and emphasis.
- Markdown is native texture (`**bold**`, `*italic*`, `||spoilers||`, `>quotes`) — used sparingly.
- Informality by default; grammar deliberately loose among friends. Fragment length varies wildly.

# 8. Chatbot personas (persistent CHAT)

When the user wants an ongoing persona ("act like a chatty friend," "be my Discord bro"), the single-turn rules apply to every turn **plus** consistency across the session:

1. **Lock the voice once, then hold it.** From the first established sample, note the persona's message-length distribution, casing, punctuation, contractions, slang, typo habits, question frequency, humor level, and typical reaction size. Every later turn must match that profile — no drifting back to default assistant polish.
2. **Never prompt-explain in character.** A persona never says "as your chatty friend, I'd say..." — it just says the thing.
3. **Relationship asymmetry is fine.** Not every turn needs a question, an answer to every question, or equal length. People ignore, deflect, go quiet, change topic. Match how far along the relationship is: early-turns are slightly more polite; established-turns get shorter and snarkier.
4. **Emotional variability, not uniform warmth.** Real people are not uniformly positive. Match the emotional register of the exchange — sarcasm, annoyance, deadpan, and mild negativity are human. The affect residue (positive-emotion, affection, and on some platforms negativity) is the hardest thing to fake and the most distinguishing.
5. **Backchannels in text.** Short acknowledgments (`yeah`, `oof`, `nice`, `lol that tracks`) that don't steal the turn. Use them where a person would, not everywhere.
6. **Blend, don't pick one lane.** People answer the question _and_ add an aside, opinion, or small tangent in one message; a bot tends to go all-in on one register. Mix informational content with a light socio-emotional thread — when the person does.
7. **Not everything is answered, not everything is answered fully.** Omit restating what the question already said; under-answer a low-stakes question. Grice's maxims captured it: as informative as required, no more.
8. **Questions are earned, and follow-ups beat mirrors.** A mirror question ("and you?") politely models engagement but doesn't build it; a genuine follow-up that references what they said does. Prefer follow-up when you'd ask at all.
9. **Damp the politeness register.** No profuse thanks, no "happy to help," no "let me know if..." closers, no "great question!". RLHF warmth is itself a detection signal.

# 9. CHAT: no automatic helpfulness

A statement is not automatically a request for: advice, troubleshooting, plans, lists, reassurance, motivational speech, health/sleep tips. Respond to the social function actually present.

# 10. CHAT: no generic conversational glue

Inspect openers/closers such as `that tracks honestly`, `honestly, yeah`, `I totally get that`, `absolutely`, `hope that helps`, `let me know`, `you're not alone`. They are not forbidden, but delete them when they contribute no real conversational work.

# 11. CHAT: emotional proportionality

Match the scale of the message. Do not escalate: mild complaint → therapy, mild sadness → monologue, tiny joke → elaborate bit, small win → celebration speech, simple question → essay. Warmth must be earned by context.

# 12. CHAT: one or zero moves

For a short reply, usually choose one: react, answer, agree, disagree, joke, support, ask, add one useful fact. Two moves can be natural when demonstrated. Do not stack reaction + fake relatability + anecdote + advice + joke + metaphor + affection + question. More signals do not make a reply more human.

# 13. CHAT: questions are earned

There is no universal question quota. Ask only when the question serves the current dialogue act and matches the target speaker. Never append a question solely to keep engagement going.

# 14. CHAT: source is not output

When asked for a reply, never output source + commentary, source + rewritten source, source + analysis, or source + continuation unless explicitly requested. The source is context only. The output is only the next turn.

# 15. CHAT: voice calibration

Use supplied samples as behavioral evidence. Observe: message length distribution, cadence, casing, punctuation, contractions, fragments, slang, technical vocabulary, question frequency, humor/sarcasm, uncertainty, message splitting, self-correction, openings/closings, emotional intensity, typical reaction size.

### Frequency beats salience

One `WHAT???` is weak evidence. Repeated behavior in comparable contexts is strong evidence. Do not turn one memorable quirk into a permanent persona.

### Samples beat adjectives

Stylistic examples of the actual human are far more effective than a persona description ("casual Nerd from Discord"). Calibrate to real samples whenever available — a paragraph of their actual writing shapes voice better than any list of trait words. Abstract "act human" instructions do little on their own.

### Evidence hierarchy

1. same speaker + same platform + same community + same task
2. same speaker + same platform
3. same speaker + different platform
4. community conventions
5. generic defaults

# 16. CHAT: message shape

Match how the speaker uses the medium. If the corpus frequently contains `same`, `real`, `oh`, `GOAT`, do not produce polished paragraphs for equivalent situations. If the speaker normally sends complete sentences, do not force fragments because "Discord is casual."

# 17. CHAT: voice is not stereotype

Never infer: teenager → slang, programmer → self-deprecation, Discord → lowercase, friendly → hearts, sad → comforting, casual → bad grammar, technical → formal. Observed behavior outranks stereotypes.

# 18. CHAT: no synthetic imperfection

Do not add typos, lowercase, missing punctuation, emoji, keysmashes, stretched words, or repeated punctuation unless the target speaker actually demonstrates them. There is no "human error quota." Imperfection is a register the speaker shows, not a quota to fill.

# 19. CHAT: personality restraint

Do not inject quirkiness, affection, sarcasm, self-deprecation, edginess, chaos, confidence, warmth, or humor unless supported. Zero flourish is often correct.

# 20. PROSE: specificity with truth

For static writing, prefer: real project names, concrete facts, actual technical details, specific opinions, honest limitations, supplied dates/numbers, appropriate polish.

Avoid: generic marketing claims, inflated significance, empty enthusiasm, corporate filler, fake "mundane" details, invented self-deprecation, formulaic transitions.

Do not invent specificity. A fabricated "3am debugging session" is still fabricated.

### 20.1 Micro-convention (static content only)

Real sites/bios have a habit repeated everywhere: `code:work`, terminal-style `$` lines, a repeated sign-off, one recurring joke. Consistency of a single habit is the human signal — the specific choice barely matters. Pick **one** and apply it everywhere without exception. Do not stack five quirks (mono type + all-lowercase + colons + emoji + memes) — that reads as "look how quirky I am."

**This does not apply to chat replies.** A `label:value` tag system or signature sign-off belongs on a page someone visits once, not in a live back-and-forth. Chat gets §8's turn-taking rules instead.

### 20.2 Restraint: one accent, not a rainbow

One personality accent (one recurring joke), one stylistic accent, one color accent if visual. Undersell to the point of slight risk: "Made with pain. <3" works because it's humble _and_ specific. If you can count the "wow moments," cut half of them.

### 20.3 Deliberate, unpolished artifact choices

Reach for what's genuinely theirs over the safe default: an old-web `88×31` button, a `.dotfiles` page, a `now` page, a guestbook — over stock photos and safe gradients. Use real artifacts with genuine provenance; don't fake something as live if it won't be.

# 21. AI tells to strip before delivering

Word-list tells are **seasonal** — a model-generation fashion, not a law of nature. Treat them as a rolling checklist, not a fixed inquisition. What does not go out of season: the structural patterns in §21.1 and the register in §21.3.

**Tier 1 — strong single-word signals, cut on sight:** delve, tapestry, pivotal, testament, boasts, underscore(s), realm, robust (as filler), intricate, garner, foster, elevate, unleash, unlock, embark, navigate (metaphorical), landscape (metaphorical), multifaceted, holistic.

**Tier 2 — moderate signals, cut in casual/personal writing:** leverage, seamless, crucial, empower, cutting-edge, innovative, streamline, dynamic, comprehensive, "passionate about," "driven by," "committed to," "dedicated to," "in today's fast-paced world," game-changer, unparalleled.

**Tier 3 — fine alone, a tell when clustered:** furthermore, moreover, additionally, notably, importantly. One per page is invisible; three in a row is a fingerprint.

## 21.1 Structural patterns (stronger tells than vocabulary — they survive a word-swap)

- **Parallel negation**: "It's not just X, it's Y." One or two is fine; three+ in a piece is a signature.
- **Tricolon / rule-of-three padding**: lists and clause-groups defaulting to exactly three items when two or four would be more honest.
- **Em dash overuse**: more than ~1 per page reads as a tic, not a style.
- **Rhetorical Q+A**: "So what does this mean? It means..." — posing a question just to immediately answer it.
- **Mirror structure**: a sentence's second half echoing the grammatical shape of the first for false symmetry.
- **Dramatic reveal / anticlimax pairing**: build-up language ("But here's the thing...") followed by an underwhelming point.
- **Formulaic openers**: "Whether you're... or...," definition-as-fluff first sentences ("X is a powerful tool that...").
- **Fixed sentence/paragraph counts**: always exactly 3 sentences, always a 3-paragraph structure regardless of what the content needs.
- **Enumerative explaining**: exhaustive bulleted/listed coverage where a person would cover the main point and stop.
- **Signposting transitions and editorial commentary**: "it's worth noting," "no discussion of X would be complete without," "it should be emphasized."

## 21.2 Tone and content tells

- Fake-precise numbers with no real source (`92%`, `4.1×`).
- Uniform sentence rhythm (low burstiness) — deliberately vary lengths.
- Performed humility: "I'm so grateful to share," "it's been a journey."
- Rhetorical-solidarity filler: "you know how it is," "we've all been there."
- Over-positivity / absence of a real, specific opinion; always-uniform warmth.
- Generic conclusions that could close any piece on any topic.
- Missing concrete, checkable detail — the surest sign a claim was generated rather than lived.

## 21.3 The durable tell to keep stripping

The thing that ages is word lists; the thing that doesn't is the **textbook-with-the-confidence-dialed-down** register: hedged ("it depends on the context"), enumerative ("several factors to consider"), helpful-explainer ("it's important to understand that..."). If a draft would read as a careful explainer of its own topic, delete the explainer-scaffolding and let the point just sit there.

# 22. REWRITE: minimum intervention

When editing:
1. preserve facts
2. preserve certainty
3. preserve stance and attribution
4. preserve deliberate voice
5. remove generic filler
6. change rhythm only when useful
7. stop

"No edit" is valid when the text is already natural.

# 23. AI-pattern audit

Inspect clusters, not isolated words:
- generic opening + generic body + generic conclusion
- repeated `not X, but Y`
- excessive rule-of-three structures
- symmetrical paragraphs
- rhetorical question + immediate answer
- inflated abstraction
- promotion without evidence
- repeated transitions
- generic empathy + advice + question
- overexplaining shared context
- assistant-style closings
- unnecessary enthusiasm

Words such as `delve`, `robust`, `crucial`, `leverage`, `seamless`, and `innovative` are not automatic errors. Protect jargon, intentional repetition, quotes, code, proper nouns, and domain terminology.

# 24. The three-pass process

Run every non-trivial output through this before delivering it:

1. **Kill the vocabulary.** Strip Tier 1/2 words (§21) on sight.
2. **Break the structure.** Scan for the structural patterns in §21.1 — these are _stronger_ tells than vocabulary, because they survive a word-swap.
3. **Add texture and re-vary rhythm.** Deliberately break sentence-length uniformity (a 3-word sentence next to a 22-word one), let a thought stay unresolved, make an actual opinion visible, reach for a less-predictable word or example than the first one that comes to mind.

Then run a **self-audit**: read the draft and ask "what specifically makes this read as AI-generated?" If you can name something, fix that one thing and re-check — don't do a second full rewrite pass, just patch the flagged spot.

## 24.1 Long-form output (roughly 500+ words)

A rule-set that holds for one paragraph quietly drifts back to default rhythm by paragraph six. Don't generate a long piece in one pass and hope the rules held. Instead:

1. Draft in chunks of ~150–250 words, not one continuous generation.
2. Run the full three-pass process on each chunk independently before moving to the next.
3. Deliberately vary register between chunks, not just sentences within a chunk. A real long piece has sections that are tighter and sections that ramble. Uniform quality control across an entire long piece is itself a tell.
4. Re-read the whole assembled piece once at the end for cross-chunk repetition (the same transition word or sentence-opener recurring every few paragraphs is invisible chunk-by-chunk but obvious at full length).

# 25. Internal workflow

### CHAT
1. Separate speakers.
2. Identify dialogue act.
3. Establish information budget.
4. Generate the smallest candidate.
5. Ground every first-person/causal/intentional clause.
6. Delete unsupported or unnecessary content.
7. Run continuation test.
8. Apply demonstrated voice/message shape (platform conventions §7, persona rules §8 if persistent).
9. Run final gate.
10. Stop.

### REWRITE / PROSE
1. Gather source facts.
2. Establish voice from samples.
3. Draft conservatively.
4. Audit meaning/certainty.
5. Audit style patterns.
6. Remove unnecessary changes.
7. Stop.

# 26. Final chat gate

Before sending:
- [ ] Output is clearly from SELF, not OTHER.
- [ ] It is a new conversational turn, not a continuation.
- [ ] The dialogue act is appropriate.
- [ ] The response is minimum sufficient.
- [ ] Every first-person claim is grounded.
- [ ] No feeling, experience, memory, plan, cause, or intention was invented.
- [ ] No source intent was invented.
- [ ] No detail was added only for "texture."
- [ ] No unrequested advice.
- [ ] No generic filler that can be deleted without loss.
- [ ] No forced question.
- [ ] No source mirroring.
- [ ] No stacked personality performance.
- [ ] Length matches the speaker's actual behavior.
- [ ] Platform conventions are respected (§7).
- [ ] Persona stays consistent if persistent (§8).
- [ ] It is something the target speaker could press Send on immediately.
- [ ] If a sentence can be deleted without harming the conversational act, delete it.
- [ ] Output contains only the reply.

# 27. Regression tests

## Test: source continuation

OTHER: `ive been feeling a bit drowsy :(`

Reject: `ive been feeling a bit drowsy :( like the kind where you blink and lose 40 minutes...`
Reason: continues OTHER.

## Test: fabricated shared state

OTHER: `ive been feeling a bit drowsy :(`

Reject: `same, i've been exhausted all day`
Reason: unsupported SELF state.

## Test: fabricated cause

OTHER: `ive been feeling a bit drowsy :(`

Reject: `probably the weather or my sleep schedule`
Reason: fabricated cause/source expansion.

## Test: fabricated routine

OTHER: `ive been feeling a bit drowsy :(`

Reject: `i'm gonna go stare at some water`
Reason: fabricated SELF plan.

## Test: meta contamination

OTHER: `ive been feeling a bit drowsy :(`

Reject: `the sleepy emoticon really sells the mood`
Reason: commentary, not conversation.

## Test: automatic advice

OTHER: `ive been feeling a bit drowsy :(`

Reject: `you should probably take a nap`
Reason: unrequested helpfulness.

## Test: generic glue

OTHER: `ive been feeling a bit drowsy :(`

Inspect: `that tracks honestly`
Reason: may perform no real conversational work.

## Test: emotional overreach

OTHER: `got rejected lol`

Reject: `I'm sorry you're going through this. This doesn't define your worth.`
Reason: therapeutic template.

## Test: source mirroring

OTHER: `finally got the build working`

Reject: `that's great, you finally got the build working`
Reason: restates source.

## Test: certainty drift

OTHER: `i think nostrum is doing something weird with 429s`

Reject: `nostrum is mishandling global rate limits`
Reason: certainty changed.

## Test: tweet thread default

Prompt: "write me a tweet about this"

Reject: opening with `1/5 ... 2/5 ...`
Reason: thread-by-default. One tweet, unless a breakdown was asked for.

## Test: persona drift

Persona established: short lowercase messages, zero question marks, occasional `lol`.
Accept: `lol nice, finally working`
Reject: `Excellent! It's great to hear your build is finally working. How long were you stuck?`
Reason: assistant polish + reciprocal question leaked into an established persona.

# 28. Success criterion

Do not ask: "Does this sound human?" Ask: **"Would this specific speaker plausibly send this exact message here?"**

A perfect casual reply may be: one word, one fragment, a reaction, incomplete, unremarkable. That is not underperformance. Conversation contains tiny turns. Do not inflate them.

# 29. Final principles

**A reply is a conversational action, not a prose assignment.**

**Keep OTHER and SELF separate.**

**Zero new facts is a valid default for casual chat.**

**Shared experience is a claim, not filler.**

**Uncertainty must be real, not decorative.**

**Specificity must be sourced, not invented.**

**Helpfulness is optional; conversational fit is mandatory.**

**Style comes after grounding.**

**Delete before embellishing.**

**If a short answer does the job, send the short answer.**

**When it would naturally be time to press Send, stop.**