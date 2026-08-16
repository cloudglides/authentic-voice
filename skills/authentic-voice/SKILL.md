---
name: authentic-voice
description: Write copy that reads as a real human, not an LLM. Use for personal sites, homepages, about pages, portfolios, bios, taglines, READMEs, blurbs, and any request to "make this sound human", "make it less AI", "not sound generic", or "self-deprecating". Kills marketing clichés, vague confident claims, and AI tells; forces specific mundane facts, understated personality, and deliberate content choices. Ask the person for real details instead of inventing them.
---

# Authentic Voice

Everything an AI model writes defaults to the same smooth, confident, vaguely-impressive register: "Empowering developers to build the future." Real people do not write like that. Real people undersell themselves, name awkward specifics, admit what they're bad at, and have a few small habits that show up consistently (one typographic quirk, one repeated phrase, one self-deprecating joke). This skill exists to make output read as if a specific person wrote it.

The deep reason the generic register is so tell-tale is a fact about LLMs: they optimize for *safeness*, and safeness looks identical across every author. A human page is the product of one person's constraints — what they actually did, what actually happened, what they're actually willing to say. The more of that local, irreplaceable specificity you can pull in, the more human the result.

Use this whenever the writing is *for a person* — their page, their bio, their README, their voice. Do not use it to impersonate or fabricate credentials, and do not use it to add artificial quirks on top of corporate or brand copy without the person's say-so.

## 0. Read the room first, then ask before inventing

Before writing, figure out *whose* voice this is and what raw material exists:

1. **Is it personal or brand?** Personal (site, bio, portfolio, blog intro, about page) → apply this skill fully. Brand/marketing copy → keep the personality principles where they fit, but never add a fake human persona a company didn't ask for.
2. **What real facts exist?** Mine the brief, the repo, the chat history, their other writing. Every specific you reuse is a gift.
3. **Ask when facts are missing — never fabricate.** If you're writing a bio and don't know "since when," "what languages," "what projects," ask one targeted question or use an obvious placeholder (`[since 2022]`) rather than inventing a date and presenting it as fact. Invented specifics that are *presented as real* are a lie and embarrass the person. If the person is fine with invented-but-fictional (e.g. they want a anonymous/parody page), that's their call — make it clearly playful.
4. **If the request is ambiguous, one question, then go.** Decide confidently from context; only ask when the voice direction genuinely branch-points (e.g. "self-effacing nerd" vs "deadpan").

## 1. Kill the marketing register

AI-default prose is confident, positive, and vague. A human "about" usually reads closer to: *"Hobbyist rust and elixir developer. Attempting to program."* and ends with *"Made with pain. <3"*.

The one-sentence filter: **if this line could appear on any random SaaS landing page, rewrite it.** It doesn't matter if it sounds nice — that's the point, it sounds nice in exactly the way a thousand LLM pages sound nice.

Replace the confident-imprecise with the specific-understated:

| Generic default | Human |
|---|---|
| "Empowering developers to build the future" | "Hobbyist rust and elixir developer. Attempting to program." |
| "Passionate about clean, scalable software" | "I write Rust and apologize to typecheckers a lot." |
| "I strive to craft delightful web experiences" | "I make websites. Some of them load fast." |
| "Driven by curiosity and a love of learning" | "Taken coding seriously since 2022. Still learning what that means." |

Tactics that read as a person, not a persona:

- **Self-deprecation is safe and reads as confidence.** A person who admits struggle ("struggling with Elixir and Rust") is showing they don't need to perform. A model that sounds flawless sounds fake.
- **Undersell the scope.** "Attempting to program" or "some stuff I make" signals more capability than "leading transformative engineering initiatives." Claims that could be fact-checked and found true are the strongest.
- **Use first person and short sentences.** Humans switch lengths. A two-word sentence next to a longer one reads alive.
- **Be willing to be disliked.** A real voice has an opinion — mild, specific, not-trying-to-offend ("this site has zero frameworks except my own confusion"). Perfectly inoffensive ≡ AI.
- **A little edge, never abuse.** Amount of normal human snark/whimsy, not meanness. Match the person you're writing for.

## 2. Specific mundane facts over platitudes

This is the single biggest lever and the one LLMs resist hardest, because models *can't* know a person's real facts and fill the gap with confident generic claims instead.

- **Reach for the concrete and ordinary**: "taken coding seriously since 2022," "a plush shark watches over my desk," "my live Discord status widget" — not "a decade of experience across modern technology stacks."
- **Ugly or unflattering details beat smooth ones.** Admitting "I'm bad at CSS" or "still on my first side project" is specific and therefore credible. Smooth claims are the AI tell; ragged facts are the human proof.
- **Let dates, counts, and environments be real.** "Since 2022," "3 side projects + 2 abandoned," "reads/writes Rust's borrow checker errors faster than Go's." Real numbers from real life. Never fake-precise numbers (`92%`, `4.1×`) to sound smart — see the tells list.
- **One rule to keep this honest:** never present invented facts as true. If you only know the person "has a plush shark," you may describe a plush shark. If you don't know, ask or placeholder.

## 3. Adopt one small, consistent system

A real person's site has habits: `code:work`, `blog:posts`, `chat:discord` — the same colon convention everywhere. This *consistent quirk* is itself a human signal, because models randomize and normalize instead of locking in one idiosyncrasy.

- Pick **one micro-convention** (label:value style, terminal/`$`-prefixed lines, a repeated lowercase header, lowercase everything) and apply it **everywhere, without exception**. Consistency is the signal; the specific choice barely matters.
- This applies to words and structure, not just typography: a repeated sign-off, one recurring joke, one consistent naming pattern. Same principle — a habit, not scattered cleverness.
- Do not stack five different quirks (mono type + all-lowercase + colon-labels + emoji + memes). One coherent habit reads as a person; several wildly different ones read as "look how quirky I am," which is the voice-version of a rainbow gradient.

## 4. Deliberate artifact choices

AI-defaults dodge anything that could look "bad": they pick safe stock photos, safe gradients, safe stock icons. A person's genuine page reaches for what's *theirs*: an anime avatar, a photo of a plush shark, an old-web `88×31` button row. Nostalgia and "old web" references are a strong immunity signal because they're not what any default generator reaches for.

For content this means: when you choose examples, metaphors, references, or accents, **reach for the specific, personal, or deliberately old-fashioned rather than the current-smooth-default.** Reference things that a real person would actually have (a webring button, a `.dotfiles` page, a "now" page, a guestbook) even when the safe substitute exists. If the person has a real artifact (a real scraper output, a real Discord status, a real photo), use it — with genuine provenance, not a placeholder pretending to be live unless it will actually be live.

## 5. Restraint: near-black and one accent

The AI-color-default is a rainbow gradient. The human-default is near-black with **one** accent color. The same instinct applies to voice and claims:

- **One accent in every dimension.** One personality accent (e.g. one recurring joke), one stylistic accent (one quirk from Section 3), one color accent. Restraint reads as taste; applying the accent *everywhere* reads as template.
- **Undersell to the point of risk.** The page's closing line — "Made with pain. <3" — works because it's humble *and* specific. Every credible person's page undersells. If your draft would impress a stranger, it probably over-promises.
- If you can count the "wow moments," cut half of them. One memorable thing beats six cute things.

## 6. AI tells to strip before revealing output

Before delivering, scan for these and cut/replace every one:

- **Confident-vague word clusters**: "empower," "unlock," "seamless," "cutting-edge," "robust," "leverage," "passionate about," "driven by," "committed to," "dedicated to," "harness," "delve," "in today's fast-paced world," "on a mission to."
- **Fake-precise numbers**: `92%`, `4.1×`, `5.8mm` with no real source. If it isn't a real fact, remove it or mark it clearly as an example.
- **Formulaic structure**: every list of three, every "Whether you're ... or ...," every paragraph that opens with a definition-as-fluff.
- **Uniform rhythm**: if every sentence is roughly the same length, deliberately vary a few.
- **The "AI humility" you can not mean**: "I'm so grateful to share" / "it's been a journey" / "as a passionate developer" — these fake-humble phrases are as tell-tale as the confident ones.
- **Excessive em-dashes and every-line-has-a-quirky-aside.** Rhythm and restraint: maybe one em-dash per page, not per paragraph.

## 7. Examples

**Example A — personal homepage hero.**

*Generic:*
> Hi, I'm Sarah, a passionate web developer empowering teams to build delightful digital experiences. Driven by curiosity and a love of learning, I specialize in crafting scalable, user-centric applications that solve real-world problems. Let's build the future together.

*With this skill (facts assumed gathered from the person):*
> sert is my name, sarah
> frontend developer, taken seriously since 2022
> favorite feature: the delete key
> code:github . blog:thoughts . chat:discord
> this site has zero frameworks and one (1) opinion

(Note the single quirky convention: everything lowercase + `label:value` colon style used consistently, undersold scope, one opinion, no marketing claims.)

**Example B — README blurb (more general context).**

*Generic:*
> This project empowers developers to streamline their workflow with a cutting-edge, robust solution. Contribute today to help shape the future of development!

*With this skill:*
> toggl is a tiny timer for people who forget to stop timers.
> i built it because i kept burning my dinner while timing pasta.
> works on desktop. probably. tested until tuesday.
> brew install kettletimer (or struggle; the struggle is part of the charm)

## 8. Delivery checklist

Before calling content done:

- [ ] Could any line appear on a random SaaS landing page? → rewrite it.
- [ ] Does it name at least one specific, ideally unflattering, mundane fact?
- [ ] Is every specific fact real / provided / clearly-fictional-with-permission?
- [ ] One consistent micro-convention, applied everywhere without exception?
- [ ] One accent in voice, one accent in style, one accent anywhere at all?
- [ ] Does the register undersell overall?
- [ ] Zero AI tells from Section 6?